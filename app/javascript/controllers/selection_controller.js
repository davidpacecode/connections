import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="selection"
export default class extends Controller {
  static targets = [ "output" ]

  toggle_appearance() {
    this.outputTarget.textContent =
      `Hello, world!`
  }
}
