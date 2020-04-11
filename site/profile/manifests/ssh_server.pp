class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        Service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDPWb7vkEFmBcXBEy04oT0glzZuOMdWYpTRc0mMX7EPFGeAeQhmkt69Ocb0gCCFXcnzOkc+kEv+7Ui6Dv9WlEF8/bv3bya0RtEe+XzIKIYvIjeD4u93G5szlsO8VmKc3++gOqN61hSsf8++OgarPz+CpSitkYRgskY7BekVBw1iQNAB4XcVXSfnNG2DjoXAcBeiITrVtxRqQKvWgM09dyk1lA2YRPYvKc7VEUhs0OZ05oIPqgaqHyEO0XvW5Ltf5y7YkWOjgugc2WyQOepS55haNFP+cCxu07ifZy+kio+VOaLnGKPzMr5/r127gW7TWGLM+AB44vStLssnmoxVUqXN',
        }
}        
