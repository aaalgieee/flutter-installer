#!/bin/sh
clear 

echo "=============================================================================="
echo "||  IIIIIIII I          I    I  IIIIIIIIII IIIIIIIIII IIIIIIII IIIIIIIIII   ||"
echo "||  I        I          I    I      I          I      I        I         I  ||"
echo "||  I        I          I    I      I          I      I        I          I ||"
echo "||  IIIII    I          I    I      I          I      IIIII    I         I  ||"
echo "||  I        I          I    I      I          I      I        IIIIIIIIIII  ||"
echo "||  I        I          I    I      I          I      I        I          I ||"
echo "||  I        IIIIIIIII  IIIIII      I          I      IIIIIIII I          I ||"
echo "=============================================================================="


# Statement prompt
echo "Do you agree to install these dependencies on your system? \n \n Dependencies: \n - Xcode CLI \n - Homebrew \n - Flutter \n - Android Studio" ; sleep 4

# Prompt the user to press the "return" key to agree
echo ""
read -p "Press return / enter to agree: "

# Print a message indicating that the user agreed
clear


# Check if Dependencies are installed
echo "Installing Dependencies:" 
echo "----------------------- \n" ; sleep 6

# Xcode CLI Tools 
if xcode-select --print-path > /dev/null; then
  # Xcode Command Line Tools are installed
  echo "Xcode Command Line Tools are installed" ; sleep 3
else
  # Xcode Command Line Tools are not installed
  echo "Xcode Command Line Tools are not installed" ; sleep 3
  clear
echo "Installing Dependencies:" 
echo "----------------------- \n" ;
  echo "Installing Xcode Command Line Tools" ; sleep 3
  xcode-select --install
  clear
fi

#Homebrew
if which brew > /dev/null; then
  # Homebrew is installed
  echo "Homebrew is installed" ; sleep 3
else
  # Homebrew is not installed
  echo "Homebrew is not installed" ; sleep 3
  clear
  echo "Installing Dependencies:" 
  echo "----------------------- \n" ; 
  echo "Installing Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
  clear
fi

#Flutter
if command -v flutter >/dev/null 2>&1; then
  # Flutter is installed
  echo "Flutter is installed" ; sleep 3
else
  # Flutter is not installed
  echo "Flutter is not installed" ; sleep 3
  clear
    echo "Installing Dependencies:" 
    echo "----------------------- \n" ;
  echo "Installing Flutter..."
  brew install --cask flutter -q
  clear
fi

# Android Studio
if [ -d "/Applications/Android Studio.app" ]; then
  echo "Android Studio is installed" ; sleep 3
else
  echo "Android Studio is not installed" ; sleep 3
  clear
echo "Installing Dependencies:" 
echo "----------------------- \n" ;
  echo "Installing Android Studio..."
  brew install --cask android-studio -q
  clear
fi

clear
echo "Installation Complete... \n Open Android Studio to install necessary SDKs \n and run flutter doctor afterwards in your terminal"