import React from 'react'
import ReactDOM from 'react-dom'


class FlightDisplay extends React.Component {
    constructor(flight_data) {
        super(flight_data);
        this.state = {flight_data}
    }

    componentDidMount() {

    }

    componentWillUnmount() {
        
    }
    render() {
        return (
            <div>
        <div>Flight id: {this.props.flight_data.id}</div>
        <div>Departure airport: {this.props.flight_data.departure_airport}</div>
        <div>Arrival airport: {this.props.flight_data.destination_airport}</div>
        <div>departure time: {this.props.flight_data.departure_time}</div>
        <div>Arrival time: {this.props.flight_data.arrival_time}</div>
        </div>
        )
    }
}

export default FlightDisplay