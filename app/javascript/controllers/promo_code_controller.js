import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="promo-code"
export default class extends Controller {
  static targets = ["accept", "prompt"]
  connect() {
    console.log("Something is hidden on the page...")
  }

  prompt() {
    let response = prompt("Enter yes to recieve your discount or enter no to reject!")
    if (response == "yes") {
      this.acceptPromoCode()
    }  
  }

  acceptPromoCode() {
    this.acceptTarget.style.display = "flex"
  }

  rejectPromoCode() {

  }

}
