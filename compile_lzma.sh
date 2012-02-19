rm -r temp
mkdir temp
cp -r NEO/* temp/.
cd temp
for i in $(find_file_in_dir .gitignore | grep './')
do
	rm $i
done
find . | cpio -o -H newc | lzma > ../ramdisk.cpio.lzma
cd ..
rm -r temp
