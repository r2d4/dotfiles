case "$3" in
  *terminal*)
    PROG=$(pgrep -cx "$4")
    ;;
  *)
    PROG=$(pgrep -cx "$3")
    ;;
esac

echo $PROG

case "$1" in
  -t)
    FIND="title"
    ;;
  -c)
    FIND="class"
    ;;
  *)
    exit 1
    ;;
esac

if [ "$PROG" -eq 0 ]; then
  echo "running..."
  i3-msg exec $3 $4 $5
else
  echo "focus..."
  i3-msg [$FIND="(?i)$2"] focus
fi