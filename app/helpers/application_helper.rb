module ApplicationHelper
  def default_meta_tags
    {
      site: 'mandarat.com',
      reverse: true,
      title: 'Mandarat - Rails&Reactアプリケーション',
      description: 'RailsとReact.jsを実装したMandartアプリ',
      keywords: 'マンダラート',
      canonical: request.original_url,
      og: {                 # OGP側
        title: 'Mandarat - Rails&Reactアプリケーション',
        type: 'website',
        url: request.original_url,
        image: image_url('image1.png'),
        site_name: 'mandarat.com',
        description: 'RailsとReact.jsを実装したMandartアプリ',
        locale: 'ja_JP'
      },
      twitter: { # Twitter上での表示タイプを指定するタグ
        card: 'summary_large_image'
      }
    }
  end
end
