import { dbank } from "../../declarations/dbank";

window.addEventListener("load", async function () {
  console.log("Finished loading!")
  const currentAmount = await dbank.checkBalance();
  document.getElementById("value").innerText = Math.round(currentAmount * 100) / 100;
  console.log("This is the currentAmount " + currentAmount);
});

document.querySelector("form").addEventListener("submit", async function (event) {
  console.log("Submitted.")
});