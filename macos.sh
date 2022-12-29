#!/bin/sh

echo "=============================================================================="
echo "||  IIIIIIII I          I    I  IIIIIIIIII IIIIIIIIII IIIIIIII IIIIIIIIII   ||"
echo "||  I        I          I    I      I          I      I        I         I  ||"
echo "||  I        I          I    I      I          I      I        I          I ||"
echo "||  IIIII    I          I    I      I          I      IIIII    I         I  ||"
echo "||  I        I          I    I      I          I      I        IIIIIIIIIII  ||"
echo "||  I        I          I    I      I          I      I        I          I ||"
echo "||  I        IIIIIIIII  IIIIII      I          I      IIIIIIII I          I ||"
echo "=============================================================================="

# Check if Dependencies are installed
echo "Checking Dependencies" ; sleep 6

# Xcode CLI Tools 
if xcode-select --print-path > /dev/null; then
  # Xcode Command Line Tools are installed
  echo "Xcode Command Line Tools are installed" ; sleep 3
else
  # Xcode Command Line Tools are not installed
  echo "Xcode Command Line Tools are not installed" ; sleep 3
  clear
  echo "Installing Xcode Command Line Tools" ; sleep 3
  code-select --install
fi

#Homebrew
if which brew > /dev/null; then
  # Homebrew is installed
  echo "Homebrew is installed" ; sleep 3
else
  # Homebrew is not installed
  echo "Homebrew is not installed" ; sleep 3
  clear
  echo "Installing Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 

fi



zenity --info --title="Message" --icon-name="dialog-information" --text="This is a message with an OK button"


zenity --progress --title="Installing Flutter" --text="Installing Flutter..." --pulsate &

pid=$!

brew install flutter ; sleep 1 

kill $pid ; sleep 1

zenity --info --title="Formula installed" --text="The formula was successfully installed"