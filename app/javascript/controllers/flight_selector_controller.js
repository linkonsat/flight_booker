import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flight-selector"
//error occurs when i "view the other list. It then appears to stop the reveal airport from running"
export default class extends Controller {
  static targets = ["departure_airport", "arrival_airport"]
  hide_departure_airport(event) {
    let selected_id = event.srcElement.selectedIndex;
    let element = this.arrival_airportTarget.childNodes[1];
    this.reveal_airport(element)
    element[selected_id].style.display = "none"
  }

  hide_arrival_airport(event) {
    let selected_id = event.srcElement.selectedIndex;
    let element = this.departure_airportTarget.childNodes[1];
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

//fck then bos then dal