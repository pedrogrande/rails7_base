// Have an array of the alphabet
// const alphabetArray = [...Array(26)].map((val, i) => String.fromCharCode(i + 65));
// alphabetArray.unshift(' ')

const alphabetArray = [
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z",
];
// Have an array of the string
const stringArray = Array.from("YOU CRACKED THE CODE");
stringArray; // ['Y', 'O', 'U', ' ', 'C', 'R', 'A', 'C', 'K', 'E', 'D', ' ', 'T', 'H', 'E', ' ', 'C', 'O', 'D', 'E']
// For each item in the string array, get its position in the alphabet array
// And create a number array of positions and
const positionArray = stringArray.map((item) => alphabetArray.indexOf(item));
positionArray;
// Rotate the alphabet array by 13
const shiftedAlpabetArray = alphabetArray
  .slice(13)
  .concat(alphabetArray.slice(0, 13));

// Get the letter from the alphabet array based on the shifted position array but space always stays a space
const shiftedStringArray = positionArray.map((item) =>
  item === -1 ? " " : shiftedAlpabetArray[item]
);

// find the div with and id of encoded in the html document and for each of the elements of the array, insert an html div element with the class of letter and the text of the element and an id of the index, replace spaces with &nbsp;
const encodedDiv = document.getElementById("encoded");
shiftedStringArray.forEach((item, index) => {
  const div = document.createElement("div");
  div.classList.add("letter");
  div.textContent = item === " " ? "\u00A0" : item;
  div.id = index;
  encodedDiv.appendChild(div);
});
