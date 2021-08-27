node default {
}
node 'master.puppet.vmdan' {
  include role::master_server
}

node /^web*/ {
  include role::app_server
}

node /^db*/ {
  include role::db_server
}
