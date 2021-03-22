#!/bin/bash

post_path=/path_to/_posts		#Replace with your Jekyll site's _posts directory
output_path=output/	#Where the gmi files and assets will end up
assets_path=/path_to/assets	#replace this with your Jekyll's assets folder or whever you keep the images 
site_address="gemini://example.com/"	#replace this with your capsule's address
site_title="Example.com - gemini edition"	#replace this with your Site title

md2gemini $post_path/* -f -s -m -w -l at-end -d $output_path

rm index.txt
rm index.gmi
rm $output_path/index.gmi
filename=index.txt
ls -p -r $output_path | grep -v / > $filename
echo $line "# "$site_title >> index.gmi
while read line; do

echo "=>"$site_address$line"       "$line  >> index.gmi
done < $filename
cp -r $assets_path $output_path
cp index.gmi $output_path/index.gmi







