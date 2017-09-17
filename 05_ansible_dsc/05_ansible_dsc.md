# Ansible and DSC

Ansible can execute DSC resources using `Invoke-DscResource` behind the scenes.
Some caveats:
- DSC resources are slow
- DSC resources taking complex types may not work
- The Powershell Module must already exist on the target node

---
Get the parameters needed for a DSC resource:
`Get-DscResource group | select -expand Properties`

---
Invoke an Ansible playbook using DSC:
`ansible-playbook invokedsc.yml -v`