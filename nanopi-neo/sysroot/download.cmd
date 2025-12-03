rem вероятно нужны admin права для создания junction
wsl rsync -avLz --delete ^
  --exclude=/proc ^
  --exclude=/sys ^
  --exclude=/dev ^
  --exclude=/tmp ^
  --exclude=/run ^
  --exclude=/mnt ^
  --exclude=/media ^
  --exclude=/lost+found ^
  --exclude=/bin ^
  --exclude=/opt ^
  --exclude=/usr/bin ^
  --exclude=/sbin ^
  --exclude=/usr/sbin ^
  --exclude=/usr/games ^
  --exclude=/usr/share ^
  --exclude=/usr/local/Trolltech ^
  --exclude=/var ^
  --exclude=/boot ^
  --exclude=/etc ^
  --exclude=/lib ^
  --exclude=/srv ^
  --exclude=/home ^
  --exclude=/root ^
  pi@192.168.0.207:/ nano-pi/