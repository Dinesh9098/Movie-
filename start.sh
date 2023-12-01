

if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Dinesh9098/Movie-.git /Movie- 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Movie- 
fi
cd /Movie- 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
