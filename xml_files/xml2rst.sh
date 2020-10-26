for FILENAME in **/*.xml; do pandoc -f docbook -t rst -o "${FILENAME/.xml/.rst}" "$FILENAME"; done;
