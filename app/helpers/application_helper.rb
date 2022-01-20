module ApplicationHelper
  def default_meta_tags
    {
      site: 'mandarat.com',
      title: 'mandarat - portfolioサイト',
      reverse: true,
      separator: '|',
      description: 'Ruby on RailsとReactを組み合わせたの実践的な内容を実施',
      keywords: 'React',
      canonical: request.original_url,
      # icon: [
      #   { href: image_url('favicon.ico') },
      #   { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      # ],
      og: {
        site_name: 'mandarat.com',
        title: 'mandarat - Rails&Reactを利用したportfolio',
        description: 'Ruby on RailsとReactを組み合わせたの実践的な内容を実施', 
        type: 'website',
        url: request.original_url,
        image: image_url('image1.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        # site: '@ツイッターのアカウント名',
      }
      # fb: {
      #   app_id: '¥facebookのID'
      # }
    }
  end
end
