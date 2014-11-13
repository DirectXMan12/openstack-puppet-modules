#
# used to configure qpid notifications for glance
#
class glance::notify::qpid(
  $qpid_password,
  $qpid_username = 'guest',
  $qpid_hostname = 'localhost',
  $qpid_port     = '5672',
  $qpid_protocol = 'tcp'
) inherits glance::api {

  Glance_api_config <| title == 'DEFAULT/notifier_strategy' |> {
    value => 'qpid'
  }

  glance_api_config {
    'DEFAULT/notifier_strategy': value => 'qpid';
    'DEFAULT/qpid_hostname':     value => $qpid_hostname;
    'DEFAULT/qpid_port':         value => $qpid_port;
    'DEFAULT/qpid_protocol':     value => $qpid_protocol;
    'DEFAULT/qpid_username':     value => $qpid_username;
    'DEFAULT/qpid_password':     value => $qpid_password;
  }

}
