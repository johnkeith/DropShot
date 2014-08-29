class User < ActiveRecord::Base
  def self.find_or_create_from_omniauth(auth)
    provider = auth.provider
    uid = auth.uid

    find_by(provider: provider, uid: uid) || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create(
      dropbox_user_id: auth.user_id,
      dropbox_access_token: auth.access_token
    )
  end
end
