module CurrentMarketplaceResolver

  module_function

  def resolve_from_host(host, app_domain)
    sole_community_or do
      ident = ident_from_host(host, app_domain)

      if ident.present?
        Community.find_by(ident: ident)
      else
        Community.find_by(domain: host)
      end
    end
  end

  def resolve_from_id(id)
    sole_community_or do
      Community.find_by(id: id)
    end
  end

  # private

  def sole_community_or(&block)
    # community_count = Rails.cache.fetch("ccount", expires_in: 5.minutes) do
    #   Community.count
    # end
    # if community_count == 1
    #   Community.first
    # else
    #   block.call
    # end
    Community.first
  end

  def ident_from_host(host, app_domain)
    ident_with_www = /^www\.(.+)\.#{app_domain}$/.match(host)
    ident_without_www = /^(.+)\.#{app_domain}$/.match(host)

    if ident_with_www
      ident_with_www[1]
    elsif ident_without_www
      ident_without_www[1]
    end
  end
end
