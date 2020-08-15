const flashcard = document.getElementById("flashcard");
 if (flashcard) {
  flashcard.addEventListener("dragend", (event) => {
  console.log(event);
  console.log(event.currentTarget);
});
}
