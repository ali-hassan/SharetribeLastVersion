#!/usr/bin/env puma

directory '/home/ubuntu/var/Llivo'
rackup "/home/ubuntu/var/Llivo/config.ru"
environment 'production'

tag ''

pidfile "/home/ubuntu/var/Llivo/tmp/pids/puma.pid"
state_path "/home/ubuntu/var/Llivo/tmp/pids/puma.state"
stdout_redirect '/home/ubuntu/var/Llivo/current/log/puma.access.log', '/home/ubun
tu/var/Llivo/log/puma.error.log', true


threads 4,16



bind 'unix:///home/ubuntu/var/Llivo/tmp/sockets/lllvio-puma.sock'

workers 3




restart_command 'bundle exec puma'