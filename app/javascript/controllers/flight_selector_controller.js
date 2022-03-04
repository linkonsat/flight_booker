import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flight-selector"
export default class extends Controller {
  static targets = ["departure_airport", "arrival_airport"]
  hide_departure_airport(event) {
    let selected_id = event.srcElement.selectedIndex;
    let element = this.arrival_airportTarget.childNodes[1];
    element[selected_id].style.display = "none"
    this.reveal_airport(event.srcElement)
  }

  hide_arrival_airport(event) {
    let selected_id = event.srcElement.selectedIndex;
    let element = this.departure_airportTarget.childNodes[1];
    element[selected_id].style.display = "none";
    this.reveal_airport(event.srcElement)
  }

  reveal_airport(element) {
    //this reveals the airport bug of it always displaying none
    let loop_count = element.length - 2
    for (let i = 0; i < loop_count; i++) {
      console.log(element[i])
      element[i].style.display = ""
    }
  }
}
