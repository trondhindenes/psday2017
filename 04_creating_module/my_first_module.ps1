#!powershell
# (c) 2017, Trond Hindenes <trond@hindenes.com>, and others
#
# This file is part of Ansible
#
# Ansible is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Ansible is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Ansible.  If not, see <http://www.gnu.org/licenses/>.

# WANT_JSON
# POWERSHELL_COMMON

$params = Parse-Args $args
$result = @{changed = $false}

$FileName = Get-AnsibleParam -obj $params -name "file_name" -failifempty $true
$FileContents = Get-AnsibleParam -obj $params -name "file_contents" -failifempty $true

$FullPathFileName = Join-Path "C:\" $FileName

$result.file_name = $FileName
$result.file_contents = $FileContents
$result.full_file_name = $FullPathFileName


if (test-file $FullPathFileName) {

}
else {
    New-Item $FullPathFileName -ItemType "File"
    $result.changed = $true
}

$CurrentFileContents = Get-Content $FullPathFileName
if ($CurrentFileContents -ne $FileContents){
    Set-Content -Path $FullPathFileName -Value $FileContents
    $result.changed = $true
}


Exit-Json $result