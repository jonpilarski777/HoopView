export default function statSorter (key, ascending) {
    let order 
    ascending ? order=1: order=-1

    return function (a,b) {
        let output 
        if(a[key] > b[key]){
            output=1
        } else if (a[key] < b[key]){
            output=-1
        } else {
            output=0
        }
        return output*order

    }



}