cask 'obs' do
  version '20.1.0'
  sha256 '8eb490f749b3717002fd55b0ee14e082191cc921c5913070890e95af8776445d'

  # github.com/jp9000/obs-studio was verified as official when first introduced to the cask
  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/obs-mac-#{version.major_minor}-installer.pkg"
  appcast 'https://github.com/jp9000/obs-studio/releases.atom',
          checkpoint: 'bce365214c203a68f6978094931f9748ddac61be3b8de71adbb55a6cdf0f584e'
  name 'OBS'
  homepage 'https://obsproject.com/'

  pkg "obs-mac-#{version.major_minor}-installer.pkg"

  uninstall pkgutil: [
                       'org.obsproject.pkg.obs-studio',
                       'zakk.lol.SyphonInject',
                     ]

  zap delete: [
                '/Library/Application Support/obs-studio',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.obsproject.obs-studio.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/zakk.lol.syphoninject.sfl',
                '~/Library/Application Support/obs-studio',
                '/private/var/db/receipts/zakk.lol.SyphonInject.bom',
                '/private/var/db/receipts/zakk.lol.SyphonInject.plist',
              ]
end
