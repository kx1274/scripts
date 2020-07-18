LOG=~/rsync.log
#LDOC=/Users/username/Documents Not needed
#LPIC=/Users/username/Pictures Not needed
LCL=/Users/username/
SRV=/Volumes/username/
# Check to see if server share is mounted
# From: https://www.cyberciti.biz/faq/howto-check-if-a-directory-exists-in-a-bash-shellscript/
if [ ! -d "$SRV" ]
then
  open 'smb://username:*@192.168.1.2/uswrname'
  # https://apple.stackexchange.com/questions/697/how-can-i-mount-an-smb-share-from-the-command-line
else
  echo "Server share already mounted" >> $LOG # From: https://www.tecmint.com/echo-command-in-linux/
fi
rsync --update -raz --progress --prune-empty-dirs $LCL $SRV --log-file=$LOG
# From: https://superuser.com/questions/1002074/linux-command-line-to-create-a-log-file-for-rsync
# rsync -zarv --prune-empty-dirs --include "*/"  --include="*.jpg" --exclude="*" "$from" "$to"
