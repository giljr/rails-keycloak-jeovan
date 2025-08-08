# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :openid_connect, {
#     name: :keycloak,
#     scope: [:openid, :email, :profile],
#     response_type: :code,
#     client_options: {
#       port: 443, # ou 80, se estiver sem https
#       scheme: 'https',
#       host: 'keycloak.dev.sefin.ro.gov.br', # ajuste para seu host
#       identifier: 'rails-test',
#       secret: 'AoKsCuY55baYk4p3R1PjPbzwJvQ9oU04',
#       redirect_uri: 'http://172.22.250.22:3000/auth/keycloak/callback',
#       authorization_endpoint: '/realms/kafka/protocol/openid-connect/auth',
#       token_endpoint: '/realms/kafka/protocol/openid-connect/token',
#       userinfo_endpoint: '/realms/kafka/protocol/openid-connect/userinfo',
#     }
#   }
# end


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :keycloak_openid, "test-cli", "38EdoDYcJmys5NENQ6WeNk7AIOwOlrLx",
    client_options: { site: "http://localhost:8080",
    realm: "quickstart",
    base_url: "",
    redirect_uri: "http://localhost:3000/auth/keycloak/callback" },
    name: "keycloak"
end
