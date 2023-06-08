if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Apnamovi/Happy.git /PaidRepo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Happy
fi
cd /Happy
pip3 install -U -r requirements.txt
echo "Starting JK DEVELOPER BoT...."
python3 bot.py
