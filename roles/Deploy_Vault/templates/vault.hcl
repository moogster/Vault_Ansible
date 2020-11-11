ui = true

<<<<<<< HEAD
<<<<<<< HEAD
 api_addr = "http://{{ hostvars['vault_node'].ansible_host }}:8200"
=======
api_addr = "http://127.0.0.1:8200"
>>>>>>> 6b4905d... Fix up
=======
 api_addr = "http://{{ hostvars['vault_node'].ansible_host }}:8200"
>>>>>>> c13aaa9... Removed localhost

storage "file" {
  path = "/opt/vault/data"
}

listener "tcp" {
  address = "{{ hostvars['vault_node'].ansible_host }}:8200"
  tls_disable = 1
}

disable_mlock = true
