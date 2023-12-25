if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Susil25102007/Stream1.git /Stream1 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Stream1 
fi
cd /Stream1 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
