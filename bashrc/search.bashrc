function SearchWord () {
    find . -name "*.$1" | xargs grep "$2"
}

function SG () {
    SearchWord go $1
}
