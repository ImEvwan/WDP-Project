let array = [4, 3, 25, 21, 45, 7, 20];
console.log(array);
let count = 0;

for(let i = 0; i < array.length; i++) {
	if (array[i] % 3 == 0) {
		count++;
	}
}

console.log("Number of elements divisible by 3: " + count);

//this was the lecture exercise but i'm gonna keep this here anyways