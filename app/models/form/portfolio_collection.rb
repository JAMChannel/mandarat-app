class Form::PortfolioCollection
  include ActiveModel::Model

  attr_accessor :name,:text,:url,:image,:github,:tagnames
  with_options presence: true do
    # valiurls :name
  end

  def save
    @portfolio = Portfolio.create(name:name, text:text, url:url, image:image, github:github)
    tag_list = tagnames.split(",").select(&:present?)
    tag_list.each do |tagname|
      @tag = Tag.where(tagname: tagname).first_or_initialize
      @tag.save
      unless PortfolioTag.where(portfolio_id: @portfolio.id,tag_id: @tag.id).exists?
        PortfolioTag.create(portfolio_id: @portfolio.id, tag_id: @tag.id)
      end
    end
  end

end