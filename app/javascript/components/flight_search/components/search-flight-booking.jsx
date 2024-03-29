import React from "react"
import ReactDOM from "react-dom"
import FlightDisplay from "./flight-display.jsx"
import CustomErrors from "./custom-errors.jsx"

class BookingData extends React.Component {
    constructor(props) {
        super(props);
        this.state = {value: ''};
        this.handleSubmit = this.handleSubmit.bind(this)
        this.handleChange = this.handleChange.bind(this);
    }

    handleChange(event) {
      const target= event.target 
      const name = target.name

      this.setState({
        [name]: value
      });
    }

    componentDidMount() {

    }
    componentWillUnmount() {

    }
    handleSubmit(event) {
      const resultElement = document.getElementById("result")
        fetch(`/flight_search?passenger_email=${event.target.email.value}&flight_id=${event.target.flight_id.value}`)
        .then(function(response) {
          if(response.ok) {
            let flight_data = JSON.parse(response.headers.get("flight"))
            console.log(flight_data.id)
            ReactDOM.render(<FlightDisplay flight_data={flight_data} />, resultElement)
          } else {
            ReactDOM.render(<CustomErrors response={response.status} />, resultElement )
          }
      })
        event.preventDefault();
    }




    render(e) {
        return (
          <div>
          <form onSubmit={this.handleSubmit}>
            <div class="flight_search_option">
              <label>
                Email:
                <input type="text" name="email" />
              </label>
            </div>
            <div class="flight_search_option">
            <label class="flight_search-column">
              Flight id:
              <input type="text" name="flight_id" />
            </label>
            </div>
            <input type="submit" value="Submit" />
          </form>
          </div>

        );
      }
  }
if(document.getElementById('search_box')) { 
  ReactDOM.render(<BookingData />, document.getElementById('search_box'));
} 
