import React from "react"
import ReactDOM from "react-dom"
import FlightDisplay from "./FlightDisplay.jsx"

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
        fetch(`/find_flight?passenger_email=${event.target.email.value}&flight_id=${event.target.flight_id.value}`)
        .then(function(response) {
        let flight_data = JSON.parse(response.headers.get("flight"))
        ReactDOM.render(<FlightDisplay props={flight_data} />, document.getElementById("result"))
        })
        event.preventDefault();
    }




    render() {
        return (
          <div>
          <form onSubmit={this.handleSubmit}>
            <label>
              Email:
              <input type="text" name="email" />
            </label>
            <div>
            <label>
              Flight id:
              <input type="text" name="flight_id" />
            </label>
            </div>
            <input type="submit" value="Submit" />
          </form>
          <div>Enter</div>
          </div>

        );
      }
  }

  ReactDOM.render(<BookingData />, document.getElementById('search_box'));
