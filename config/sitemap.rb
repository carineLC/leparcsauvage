SitemapGenerator::Sitemap.default_host = 'http://www.leparcsauvage.com'
SitemapGenerator::Sitemap.create do
  add root_path, :changefreq => 'daily', :priority => 1
  add '/ferme-pedagogique', :changefreq => 'weekly'
  add '/fauconnerie', :changefreq => 'weekly'
  add '/parc-de-vision', :changefreq => 'weekly'
  add '/centre-de-sauvegarde', :changefreq => 'weekly'
  add '/equipe', :changefreq => 'weekly'
  add '/partenariats', :changefreq => 'weekly'
  add '/infos-pratiques', :changefreq => 'weekly'
  add '/mentions-legales', :changefreq => 'weekly'
  add '/vie-du-parc', :changefreq => 'daily'
  #
  Blogpost.find_each do |post|
    add blogpost_path(post), :priority => 0.9, :lastmod => post.updated_at, :changefreq => 'daily'
  end

end
SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks
