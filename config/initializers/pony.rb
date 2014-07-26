Pony.options = {
  :to => 'stlthreadco@gmail.com',
  :via => :smtp,
  :via_options => {
    :address              => 'smtp.mandrillapp.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'stlthreadco@gmail.com',
    :password             => 'KHYV3T9wROMrwwof_IWSqQ',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => 'mandrillapp.com' # the HELO domain provided by the client to the server
  }
}