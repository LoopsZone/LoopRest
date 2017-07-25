echo ingrese el path

read path

filenames=( 
    ${path}
)

for f in "${filenames[@]}"; do
    f="${f/C://c}"
    f="${f//\\//}"
    sin=$f
done

cd $sin

ls

read -t200 -n1 -r -p 'Press any key in the next five seconds...' key