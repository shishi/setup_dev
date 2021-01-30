packages = %w(
  build-essential python-is-python3 golang
  curl wget unzip golang-docker-credential-helpers silversearcher-ag lv vim rclone fzf
  mysql-client libmysqlclient-dev postgresql-client libpq-dev sqlite3 libsqlite3-dev redis-tools
  imagemagick libmagick++-dev
  fonts-noto fonts-noto-cjk
)

execute 'install basic packages' do
  command <<-EOS
    sudo apt-get update -y
    sudo apt-get install -y --no-install-recommends #{packages.join(' ')}
    sudo apt-get upgrade -y
  EOS
end

execute 'disable apache' do
  command 'sudo systemctl disable apache2'
  only_if 'test -e /lib/systemd/system/apache2.service'
end
