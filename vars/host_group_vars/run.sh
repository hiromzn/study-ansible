ansible-playbook -i ./hosts setup.yml 
echo "##### limit: staging only"
ansible-playbook -i ./hosts setup.yml --limit staging
