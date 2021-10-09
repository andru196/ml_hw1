kaggle competitions download -c sberbank-russian-housing-market -p data/raw
unzip data/raw/sberbank-russian-housing-market.zip -d data/raw
rm data/raw/sberbank-russian-housing-market.zip
FILES="data/raw/*.zip"
for f in $FILES
do
  echo $f
  unzip $f -d data/raw
  rm $f
done