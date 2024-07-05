ansible-galaxy role init estructura
vim main.yml
vim main.yml
vim template_01.js
vim template_02.js
vim tests/test.yml
vim ansible.cfg
mv template_01.js template_01.j2
mv template_02.js template_02.j2
ansible-playbook -i /tests/inventory tests/test.yml
