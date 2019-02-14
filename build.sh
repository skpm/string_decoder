# copy the string_decoder implementation from nodejs
cp ./node_modules/string_decoder/lib/string_decoder.js ./index.js

# replace the safe-buffer import by just buffer
sed -i -e 's/safe-buffer/buffer/g' ./index.js

# remove the file sed create
rm ./index.js-e || true
