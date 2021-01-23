packages = %w(build-essential curl wget unzip python-is-python3 php golang golang-docker-credential-helpers
 mysql-client libmysqlclient-dev postgresql-client libpq-dev sqlite3 libsqlite3-dev
 imagemagick libmagick++-dev libnss3-tools redis-tools
 fonts-noto fonts-noto-cjk
 silversearcher-ag lv vim rclone fzf)

execute 'install basic packages' do
  command <<-EOS
    sudo apt-get update -y
    sudo apt-get install -y --no-install-recommends #{packages.join(' ')}
  EOS
end

execute 'disable apache' do
  command 'sudo systemctl disable apache2'
  only_if 'test -e /lib/systemd/system/apache2.service'
end
