# copy the string_decoder implementation from nodejs
cp ./node_modules/string_decoder/lib/string_decoder.js ./index.js

# replace the safe-buffer import by just buffer
grep -r -l "require('safe-buffer')" * | grep -v build.sh | grep -v node_modules | xargs sed -i "s/require('safe-buffer')/require('buffer')/g"
