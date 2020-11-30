ui = true

 api_addr = "http://{{ hostvars['vault_node'].ansible_host }}:8200"

storage "file" {
  path = "/opt/vault/data"
}

listener "tcp" {
  address = "{{ hostvars['vault_node'].ansible_host }}:8200"
  tls_disable = 1
}

disable_mlock = true
