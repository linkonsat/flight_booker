import React from "react"
import ReactDOM from "react-dom"

class BookingData extends React.Component {
    constructor(props) {
        super(props);
        this.handleSubmit = this.handleSubmit.bind(this)
        this.input = React.createRef();
    }
    handleSubmit(event) {
        fetch(`/find_flight?passenger_email=${this.input.current.value}`)
        event.preventDefault();
    }

    render() {
        return (
          <form onSubmit={this.handleSubmit}>
            <label>
              Email:
              <input type="text" ref={this.input} />
            </label>
            <input type="submit" value="Submit" />
          </form>
        );
      }
    
      displayResult() {
        return(
            <div>hey</div>
        );
      }
  }

  ReactDOM.render(<BookingData />, document.getElementById('search_box'));
