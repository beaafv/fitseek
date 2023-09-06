import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["div1", "div2"]

  connect() {
    console.log("Hello world");
  };
  functiontoggle() {

     this.div1Target.classList.toggle("d-none");
     this.div2Target.classList.add("d-none");

  };
  functiontoggle2() {

    this.div2Target.classList.toggle("d-none");
    this.div1Target.classList.add("d-none");
 };

 alert (event) {
  event.preventDefault()
  Swal.fire({title: 'Sorry!', text: "You don't have enough fitseek dollars! Go to your profile to buy more $$$",
  html:
'<div"><iframe src="https://giphy.com/embed/8nM6YNtvjuezzD7DNh" height="80%" frameBorder="0" class="giphy-embed" allowFullScreen></iframe></div><p class="text-dark"><a href="https://giphy.com/gifs/theoffice-8nM6YNtvjuezzD7DNh"></a> You dont have enough fitseek dollars! Go to your profile to buy more $$$ </p>'})
  };
}
