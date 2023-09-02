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
