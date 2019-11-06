
for f in `ls . | grep -v '\.webp'`; do
    cwebp -preset photo -mt -progress ${f} -o ${f}.webp
done

