module JobsHelper
  def link_to_twitter(title)
    escaped_url = CGI.escape(request.url)
    title       = CGI.escape(title)

    url = 'https://twitter.com/intent/tweet?'
    url += 'hashtags=RubyJobs&'
    url += "original_referer=#{escaped_url}&"
    url += "text=Vaga%20para%20#{title}&"
    url += "w_p=tweetbutton&url=#{escaped_url}"

    render partial: 'jobs/link_to_twitter', locals: { url: url }
  end

  def link_to_linkedin(title)
    escaped_url = CGI.escape(request.url)
    title       = CGI.escape(title)

    url = 'https://www.linkedin.com/shareArticle?mini=true&'
    url += "title=#{title}&"
    url += "url=#{escaped_url}&"
    url += "summary=Vaga%20para%20#{title}&"
    url += 'source=RubyJobs'

    render partial: 'jobs/link_to_linkedin', locals: { url: url }
  end

  def modalities_hash
    { 'Modelo' => :modelo, 'Ator' => :ator, 'Evento' => :evento, 'Outros' => :outros }
  end

  def salaries_hash
    { 'N/A' => :undefined, 'Abaixo de R$300' => :intern, 'R$300 - R$600' => :junior,
      'R$600 - R$900' => :medium, 'Acima de R$1.000' => :senior,
      'Valor hora a combinar' => :value_by_hour  }
  end

  def contract_types_hash
    { 'Não Especificado' => :not_specified, 'CLT' => :clt, 'PJ' => :pj }
  end
end
