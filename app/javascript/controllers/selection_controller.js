import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="selection"
export default class extends Controller {
  static targets = [ "output" ]

  toggle_appearance() {
    const card = event.currentTarget

    if (card.getAttribute("appearance") === "accent") {
      card.removeAttribute("appearance")
    } else {
      card.setAttribute("appearance", "accent")
    }

    // this.outputTarget.textContent =
    //  `appearance=\"accent\"`
  }
}
