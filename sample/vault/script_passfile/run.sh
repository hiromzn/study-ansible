
export VPASSWORD=vpass
export ANSIBLE_VAULT_PASSWORD_FILE=pass.sh
ansible-playbook -i ./hosts vaulttest.yml 
