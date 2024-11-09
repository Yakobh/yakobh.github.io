if [ $# -eq 0 ]; then
  echo "Usage: $0 <path/to/video>"
  exit 1
fi

VIDEO=$1

ffmpeg -i $VIDEO "${VIDEO%.*}.mp4"
