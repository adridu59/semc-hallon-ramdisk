rm -r temp
mkdir temp
cp -r ARC/* temp/.
cd temp
for i in $(find_file_in_dir .gitignore | grep './')
do
	rm $i
done
find . | cpio -o -H newc | lzo > ../ramdisk.cpio.lzo
cd ..
rm -r temp
