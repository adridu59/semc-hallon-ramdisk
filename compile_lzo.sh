if [ -d "temp" ] ; then
	rm -r temp
fi
mkdir temp
cp -r NEO/* temp/.
cd temp
for i in $(find_file_in_dir .gitignore | grep './')
do
	rm $i
done
find . | cpio -o -H newc | lzo > ../ramdisk.cpio.lzo
cd ..
rm -r temp
echo "Created."
