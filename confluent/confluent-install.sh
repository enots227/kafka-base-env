install_dir="/opt"
install_name="confluent"
install_path=$install_dir/$install_name

download_dir="/tmp"
download_name="confluent-community"
download_ext=".zip"
download_path=$download_dir/$download_name$download_ext

extract_dir=$download_dir/$download_name

# Install curl and unzip
apt-get update
apt-get install unzip -y
apt-get install curl -y

# Extract
mkdir $extract_dir
unzip $download_path -d $extract_dir

# Determine Extracted Folder
cd $extract_dir

extract_name=$(ls | head -n 1)
extract_path=$extract_dir/$extract_name

cd /

# Move Extracted Folder to Install Path
mv $extract_path $install_path

# Clean Up
rm -r $extract_dir
