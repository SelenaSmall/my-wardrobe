import PropTypes from 'prop-types';
import React from 'react';
import axios from 'axios';

export default class Look extends React.Component {
    /**
     * @param props - Comes from your rails view.
     * @param _railsContext - Comes from React on Rails
     */
    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    state = {
        looks: this.props.looks
    };

    handleDelete = (event, deletePath, id) => {
        event.preventDefault()
        axios.delete(deletePath)
            .then((response) => {
                const newLooks = this.state.looks.filter((look) => look.id !== id)
                this.setState({ looks: newLooks })
            })
            .catch((error) => {
                console.log(error)
            })
    };

    renderItems = (look) => (
         look.items.map((image, index) => (
             <img key={index} src={image}/>
             )
         )
    );

    renderTags = (look) => (
        look.tags.map((name, index) => (
            <p key={index}>{name}</p>
        ))
    )

    updateName = (name) => {
        this.setState({ name });
    };

    render() {
        return (
            <div>
            {this.state.looks.map((look, index) => (
            <div key={index} className="col-md-4" style={{border: "1px solid #000", borderRadius: "5px", padding: "20px", textAlign: "center"}}>
                {look.name}

                {this.renderItems(look)}

                {this.renderTags(look)}

                <a href={look.editPath} className="btn btn-default"><i className="glyphicon glyphicon-pencil"></i></a>
                <a className="btn btn-default" rel="nofollow" onClick={(event) => this.handleDelete(event, look.deletePath, look.id)}>
                    <i className="glyphicon glyphicon-trash"></i>
                </a>

            </div>
            ))}
            </div>
        );
    }
}
