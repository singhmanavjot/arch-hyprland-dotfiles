init:
	ansible-galaxy install -r ansible/requirements.yml --roles-path ~/.ansible/roles --force
	ansible-galaxy collection install -r ansible/requirements.yml --collections-path ~/.ansible/collections --force

base:
	ansible-playbook -K -i ansible/inventory/hosts.yml ansible/playbooks/base.yml

dotfiles:
	ansible-playbook -K -i ansible/inventory/hosts.yml ansible/playbooks/dotfiles.yml
