for folder in ./*; do
    if [ -d "$folder" ]; then
        folder_name=$(basename "$folder")
        script_file="$folder_name.sh"
        
        # Create a new bash script for each folder
        cat <<EOF > "$folder/$script_file"
#!/bin/bash

echo "$folder to run script"

EOF
        # Set execute permission for the script file
        chmod +x "$folder/$script_file"
        echo "Created script $script_file in folder $folder_name."
    fi
done