class osxoptions {
  include osx::global::disable_key_press_and_hold
  include osx::global::expand_save_dialog
  include osx::global::expand_print_dialog
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::disable_autocorrect
  include osx::global::tap_to_click
  include osx::global::enable_keyboard_control_access

  include osx::dock::autohide
  include osx::dock::disable

  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection

  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control

  include osx::software_update

  class { 'osx::global::key_repeat_delay':
    delay => 0
  }

  class { 'osx::global::key_repeat_rate':
    rate => 0
  }

  class { 'osx::dock::hot_corners':
    top_right   => 'Start Screen Saver',
    bottom_left => 'Dashboard'
  }
}
