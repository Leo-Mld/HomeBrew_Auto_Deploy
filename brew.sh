#!/bin/bash
 
path="install.sh"
touch $path

echo -e "#!/bin/bash" > $path

echo "" >> $path

echo -e "#----Paquets Homebrew----\n" >> $path
 
echo "" >> $path
 
for i in $(brew list --cask)
do
    echo "brew install --cask" $i ";" >> $path
    
done

chmod 755 $path