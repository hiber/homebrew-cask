cask 'mail-plugin-manager' do
  version :latest
  sha256 :no_check

  url 'http://www.chungwasoft.com/files/MPM_latest.zip'
  appcast 'https://littleknownsoftware.com/feed/mpm',
          :sha256 => 'c03181d20c855680dffd3a0fe3552694c3eceb166af38c0c92d79af28b763fc9'
  name 'Mail Plugin Manager'
  homepage 'http://www.chungwasoft.com/mailpluginmanager/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mail Plugin Manager.app'
end
