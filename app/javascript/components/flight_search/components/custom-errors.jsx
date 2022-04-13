import React from 'react'
import ReactDOM from 'react-dom'


class CustomErrors extends React.Component {
    constructor(props) {
        super(props);
        this.state = {props}
        console.log(props)
    }

    componentDidMount() {

    }

    componentWillUnmount() {
    
    }
        
        render() {
            return (
                <div>
            <div> The flight was not found. Please enter your search again. </div>
            </div>
        )
        
    }
}

export default CustomErrors