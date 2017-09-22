# Delegation

Ansible can "delegate" tasks to other hosts than the current target host.
You can use this do to things "on behalf" of the target host:
- Create a DNS entry on a Domain Controller
- Add/Remove a node from a load balancer
- Create certificates

---
`ansible-playbook delegation.yml`   
(Notice that it's the target node's "context" that's being used to fill variables)