listener "tcp" {
  address = "127.0.0.1:8200"
  tls_disable = 1
}

storage "file" {
 path = "/mnt/vault/data"
}

disable_mlock = true

plugin_directory = "/etc/vault/plugins/"

api_addr = "http://127.0.0.1:8200"
