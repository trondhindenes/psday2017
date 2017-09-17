# Creating a module
Modules can be any language that the target node can execute.
On Windows, Ansible defaults to Powershell.

A Powershell-based Ansible module is:
- A regular Powershell script that receives and returns params in a certain way

`ansible-playbook playbook_using_module.yml`