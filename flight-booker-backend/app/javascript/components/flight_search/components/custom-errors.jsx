import React from 'react'
import ReactDOM from 'react-dom'


class CustomErrors extends React.Component {
    constructor(response) {
        super(response);
        this.state = {response}
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