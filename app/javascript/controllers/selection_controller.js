import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="selection"
export default class extends Controller {
  static targets = [ "word_input", "output", "card", "shuffle_button", "deselect_button", "submit_button" ]
  static values = { count: { type: Number, default: 0 } }

  toggle_selection() {
    const card = event.currentTarget

    if (card.getAttribute("appearance") === "accent") {
      card.removeAttribute("appearance")
      this.countValue--;


      // remove the deselected word from the word_input list
      const input = this.word_inputTargets.find((item) => item.value === card.textContent)
      input.value = ""

    } else {
        if (this.countValue !== 4) {
          card.setAttribute("appearance", "accent")
          this.countValue++;

          // set the word input to the selected word
          const input = this.word_inputTargets.find((item) => item.value === "")
          input.value = card.textContent
          this.outputTarget.textContent = input.value
        }
    }

    if (this.countValue === 4) {
      this.submit_buttonTarget.removeAttribute("disabled")
    } else {
      this.submit_buttonTarget.setAttribute("disabled", true)
    }

    if (this.countValue !== 0) {
      this.deselect_buttonTarget.removeAttribute("disabled")
    } else {
      this.deselect_buttonTarget.setAttribute("disabled", true)
    }

    // write the input_words to the console
    this.word_inputTargets.forEach((input) => {
      console.log(input.value)
    })
  }

  deselect_all() {
    this.cardTargets.forEach((card) => {
      card.removeAttribute("appearance")
    })

    this.word_inputTargets.forEach((input) => {
      input.value = ""
    })

    this.countValue = 0;
    this.deselect_buttonTarget.setAttribute("disabled", true)
    this.submit_buttonTarget.setAttribute("disabled", true)
  }
}
