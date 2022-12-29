#!/bin/sh


# Check if Dependencies are installed
echo "Checking Dependencies" ; sleep 6

# Xcode CLI Tools 
if xcode-select --print-path > /dev/null; then
  # Xcode Command Line Tools are installed
  echo "Xcode Command Line Tools are installed"
else
  # Xcode Command Line Tools are not installed
  echo "Xcode Command Line Tools are not installed" ; sleep 3
fi

#Hombrew
if which brew > /dev/null; then
  # Homebrew is installed
  echo "Homebrew is installed"
else
  # Homebrew is not installed
  echo "Homebrew is not installed" ; sleep 3
  clear
  echo "Installing Homebrew..."

fi

# Install Home



zenity --info --title="Message" --icon-name="dialog-information" --text="This is a message with an OK button"


zenity --progress --title="Installing Flutter" --text="Installing Flutter..." --pulsate &

pid=$!

brew install flutter ; sleep 1 

kill $pid ; sleep 1

zenity --info --title="Formula installed" --text="The formula was successfully installed"