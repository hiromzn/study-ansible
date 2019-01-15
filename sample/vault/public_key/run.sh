
# ansible-vault --vault-password-file=~/.ssh/id_rsa.pub encrypt vars

export ANSIBLE_VAULT_PASSWORD_FILE=~/.ssh/id_rsa.pub
ansible-playbook -i ./hosts vaulttest.yml 
