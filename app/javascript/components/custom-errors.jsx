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
            <div> Looks like you ran into a error {this.props.props} </div>
            </div>
        )
        
    }
}

export default CustomErrors