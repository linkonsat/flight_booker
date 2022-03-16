import React from 'react'
import ReactDOM from 'react-dom'


class FlightDisplay extends React.Component {
    constructor(props) {
        super(props);
        this.state = {props}
    }

    componentDidMount() {

    }

    componentWillUnmount() {
        
    }
    render() {
        return (
            <div>
        <div>Flight id: {this.props.props.id}</div>
        <div>Departure airport: {this.props.props.departure_airport}</div>
        <div>Arrival airport: {this.props.props.destination_airport}</div>
        <div>departure time: {this.props.props.departure_time}</div>
        <div>Arrival time: {this.props.props.arrival_time}</div>
        </div>
        )
    }
}

export default FlightDisplay