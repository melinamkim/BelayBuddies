import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Find a climbing partner", "that fits around your schedule"],
      typeSpeed: 100,
      loop: true
    })
  }
}
