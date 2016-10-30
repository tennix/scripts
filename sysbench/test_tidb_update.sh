if [ $# != 3hj]; then
    echo "Usage: $0 oltp-count-size num-threads max-time"
    exit 1
fi
port=4000
passwd=""
oltpSize=$1
numThreads=$2
maxTime=$3
bash ./prepare_update.sh ${port} ${passwd} ${oltpSize} ${numThreads} ${maxTime}
bash ./run_update.sh ${port} ${passwd} ${oltpSize} ${numThreads} ${maxTime}
bash ./clean_update.sh ${port} ${passwd} ${oltpSize} ${numThreads} ${maxTime}