packages = %w(
  build-essential pkg-config python-is-python3 golang
  git curl wget unzip golang-docker-credential-helpers silversearcher-ag lv vim rclone fzf
  mysql-client libmysqlclient-dev postgresql-client libpq-dev sqlite3 libsqlite3-dev redis-tools
  imagemagick libmagickwand-dev
  fonts-noto fonts-noto-cjk
)

execute 'apt update' do
  command "sudo apt-get update -y"
end

execute 'apt upgrade' do
  command "sudo apt-get upgrade -y"
end

execute 'install basic packages' do
  command "sudo apt-get install -y --no-install-recommends #{packages.join(' ')}"
end

execute 'disable apache' do
  command 'sudo systemctl disable apache2'
  only_if 'test -e /lib/systemd/system/apache2.service'
end
