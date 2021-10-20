RAW="data/raw"
LOG="download.log"
rm -rf $RAW
date >> $LOG
kaggle competitions download -c sberbank-russian-housing-market -p $RAW >> $LOG
unzip data/raw/sberbank-russian-housing-market.zip -d $RAW >> $LOG
rm data/raw/sberbank-russian-housing-market.zip >> $LOG
FILES="data/raw/*.zip"
for f in $FILES
do
	unzip $f -d data/raw >> $LOG
	rm $f >> $LOG
	if [ $? -eq 0 ]
	then
		echo $f deleted
	fi
done
echo "HOMEWORK IN notebooks/HW1.ipynb"
