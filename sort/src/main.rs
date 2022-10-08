// enable printing of the struct
#[derive(Debug)]
// create a struct with a String and an integer
// not using &str due to lifetime issues
struct Pair {
    x: String,
    y: i32
}

fn main() {
    // input data vector
    let v = vec!["aa-2", "ab-100", "aa-10", "ba-25", "ab-3"];
    // create an accumulating vector of `Pair`s
    let mut res: Vec<Pair> = vec![];
    // for each string, split at '-', 
    //  convert the first part to String and the second to integer.
    //  then push onto the accumulator
    for s in v {
        let a: Vec<&str> = s.split("-").collect();
        let tmp_pair = Pair {x: a[0].to_string(), y: a[1].parse::<i32>().unwrap() };
        res.push(tmp_pair);
    }
    // sort by Pair.x then Pair.y
    res.sort_by_key(|k| (k.x.clone(), k.y.clone()));
    // start building a new vector for the final result
    let mut res2: Vec<String> = vec![];
    // paste together Pair.x, '-', and Pair.y (as String)
    for s2 in res {
        res2.push(s2.x + "-" + &s2.y.to_string());
    }

    // ["aa-2", "aa-10", "ab-3", "ab-100", "ba-25"]
    println!("{:?}", res2);
}
