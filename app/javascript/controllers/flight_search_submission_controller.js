import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flight-search-submission"
export default class extends Controller {
  connect() {
  }
  paintIt(element, backgroundColor, textColor) {
    element.style.backgroundColor = backgroundColor;
    if (textColor) {
      element.style.color = textColor;
    }
  }
}
