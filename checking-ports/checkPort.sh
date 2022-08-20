for PORT in {20..1000}; do
  timeout 1 bash -c "</dev/tcp/127.0.0.1/$PORT &>/dev/null" &&  echo "port $PORT is open"
done
