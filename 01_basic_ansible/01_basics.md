# Basics

Ansible commands & playbook
Playbook: An organized list of plays, which again is a list of tasks

---
### Execute a playbook
`ansible-playbook testplaybook.yml`

---
### Execute a playbook against a subset of the hosts in the inventory
`ansible-playbook testplaybook.yml --limit webservers`
Limit can be either a group of target nodes, or the name of a single target node

---
### Execute a only parts of a playbook (matching tags)
`ansible-playbook testplaybook.yml --tags mytag`

The tag "always" gets included regardless.