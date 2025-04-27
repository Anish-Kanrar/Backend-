
/*
let i=0;
while(i<10){
    console.log(i + "hello"); 
    i++;
}
console.log("bye!!");
*/


//console.log(process.argv);

let n = process.argv;
for(let i=2;i<n.length;i++){
    console.log("Welcome to ",n[i]);
}
