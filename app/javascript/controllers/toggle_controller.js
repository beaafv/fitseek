import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["div1", "div2"]

  connect() {
    console.log("Hello world");
  }
  functiontoggle() {

     this.div1Target.classList.toggle("d-none");
     this.div2Target.classList.add("d-none");

  }
  functiontoggle2() {

    this.div2Target.classList.toggle("d-none");
    this.div1Target.classList.add("d-none");
 }


}


// div1.addEventListener() {

// const div1 = document.querySelector(".div1");
// const div2 = document.querySelector(".div2");
// if (div1.nextElementSibling) {
//   div1.nextElementSibling.classList.add('hello');
//   div2.classList.remove('hello2');
//   } else {
// div2.nextElementSibling.classList.add('hello2');
// div2.classList.remove('hello1');
//   }

// }
