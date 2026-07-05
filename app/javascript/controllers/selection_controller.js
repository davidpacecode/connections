import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="selection"
export default class extends Controller {
  static targets = [ "output", "suffle_button", "deselect_button", "submit_button" ]
  static values = { count: { type: Number, default: 0 } }

  toggle_appearance() {
    const card = event.currentTarget

    if (card.getAttribute("appearance") === "accent") {
      card.removeAttribute("appearance")
      this.countValue--;
    } else {
      card.setAttribute("appearance", "accent")
      this.countValue++;
      if (this.countValue === 4) {
        submit_buttonTarget.removeAttribute("disabled")
      }
    }

    // this.outputTarget.textContent =
    //  `appearance=\"accent\"`
  }
}
