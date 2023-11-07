#!/bin/bash

SCRIPT_FILE=$1
# Check if script file is provided
if test -z $SCRIPT_FILE
then
    echo "Usage: ./tinker.sh script.php"
    exit 1
fi

# Check if .env file is present
if test -f .env;then
echo "env found"
  export $(cat .env | xargs)
fi

# Check if LARAVEL_DIR is set
if test -z $LARAVEL_DIR
then
    echo "LARAVEL_DIR is not set"
    exit 1
fi

CURRENT_DIR=$(pwd)
EXIT_SCRIPT="_exit.php"

php $LARAVEL_DIR/artisan tinker $CURRENT_DIR/$SCRIPT_FILE $CURRENT_DIR/$EXIT_SCRIPT --execute