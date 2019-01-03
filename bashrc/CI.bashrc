function MD5Suffix() {
    md5sum `find . -name "*.${1}"`
}

function SimpleCI {
    getidentity=$1
    shift 
    exe=$1
    shift
    build=$1
    shift
    echo "getidentity is $getidentity"
    echo "exe is $exe"
    echo "build is $build"
    echo "args is ${@}, the size is ${#@}"
    
    s=$($getidentity)
    echo ${s}
    while true
    do
        until n=$($getidentity)
        do : ;
        done
        sleep 0.1
        if [ "${s}" == "${n}" ]
        then
            continue
        fi
        s=${n}
        echo "---------------------$getidentity changed-----------------------"
        time $build  && echo "---------------------$exe "$@" start-----------------------" && time ./$exe "$@"
        echo "---------------------$exe "$@" end-----------------------"
    done
}

function CIGo {
    src=$1
    exe=${src%.*}
    shift
    SimpleCI "md5sum ${src}" ${exe} "go build ${src}" "$@"
}

function CIGoF {
    exe=$(basename `pwd`)
    SimpleCI 'MD5Suffix go' ${exe} 'go build' "$@"
}

