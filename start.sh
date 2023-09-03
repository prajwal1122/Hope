if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/prajwal1122/Hope.git /Hope
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Hope
fi
cd /Hope
pip3 install -U -r requirements.txt
echo "Starting Hope...."
python3 bot.py
