rm -r temp
mkdir temp
cp -r NEO/* temp/.
cd temp
for i in $(find_file_in_dir .gitignore | grep './')
do
	rm $i
done
find . | cpio -o -H newc | bzip2 > ../ramdisk.cpio.bz2
cd ..
rm -r temp
