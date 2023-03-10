import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flight-selector"
export default class extends Controller {
  static targets = ["departureAirport", "arrivalAirport"]
  hide_departure_airport(event) {
    let selected_id = event.srcElement.selectedIndex;
    let element = this.arrivalAirportTarget.childNodes[3];
    this.reveal_airport(element)
    element[selected_id].style.display = "none"; 
  }

  hide_arrival_airport(event) {
    let selected_id = event.srcElement.selectedIndex;
    let element = this.departureAirportTarget.childNodes[1];
    this.reveal_airport(element)
    element[selected_id].style.display = "none"; 
  }

  reveal_airport(element) {
    let loop_count = element.length 
    for (let i = 0; i < loop_count; i++) {
      element[i].style.display = ""
    }
  }
}
