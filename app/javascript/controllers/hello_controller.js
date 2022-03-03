import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "name", "output" ]

  hide_departure_airport() {
  }

  hide_arrival_airport() {
  }

  connect() {
    console.log("Test was a success")
  }
}
