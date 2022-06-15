import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["buddy...", "partner...", "friend...", "legend...", "guru...", "instructor...", "hero..."],
      typeSpeed: 100,
      loop: true
    })
  }
}
