echo "STARTING"
sudo make stop-prod
git fetch
git pull
sudo make up-prod
echo "DONE"
