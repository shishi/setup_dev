dotdir = '~/hoge'

[
  'echo "hogehoge"',
  'echo "----------------------------"',
  'pwd | tee hoge.txt',
  'touch /home/shishi/hoge/hoge2.txt',
  'echo "----------------------------"',
  'pwd',
  'echo "----------------------------"',
  'pwd',
].each do |command|
  execute command do
    cwd dotdir
  end
end
