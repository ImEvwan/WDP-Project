const express = require("express")
const app = express()
require("dotenv").config()

app.use(express.json())

const userRoutes = require("./server/routes/user")

//CORS middleware
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");  
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization");
  res.header("Access-Control-Allow-Methods", "GET,POST,PUT,DELETE,OPTIONS");  
  next();
});

app.use('/user', userRoutes)

const PORT = process.env.PORT || 3001
app.listen(PORT, () => console.log(`Server listening on port ${PORT}!`))

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

