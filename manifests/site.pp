node default {
}
node 'master.puppet.vmDan' {
  include role::master_server
}
