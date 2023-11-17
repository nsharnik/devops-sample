echo "Create database and table if it doesn't exist."
sh /app/commandOne.sh
sh /app/commandTwo.sh
sleep 5
mysql -u ${DB_USER} -p${DB_PASS} -h ${DB_HOST} < init.sql || echo "Error or Already Exists."
echo "Start Application."
npm run dev