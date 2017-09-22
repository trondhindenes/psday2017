# Variables

Ansible will (by default) collect a bunch of info "facts" about a target node, which can be used in playbooks. Variables are "templated" using the Jinja2 templating engine.

---
### retrieve all "facts"
`ansible all -m setup`

---
### Use facts in a play
`ansible-playbook facts.yml`

---
### Conditionally execute tasks based on variables
`ansible-playbook conditionals.yml`

---
### Conditionally execute tasks previous result
`ansible-playbook conditional_task_result.yml`