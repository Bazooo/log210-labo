class DiplomaCreateUserForm extends React.Component {
    constructor() {
        super();
        this.state = {
            cards: [],
            cardIndex: 0,
        };
    }

    addDiploma() {
        this.setState((prevState) => {
            let newCards = prevState.cards;
            let cardIndex = newCards.push(<DiplomaCreateUserFormCard index={prevState.cardIndex} />);
            return {
                cards: newCards,
                cardIndex: cardIndex,
            };
        });
    }

    render() {
        return (
            <div className="panel panel-info">
                <div className="panel-heading">
                    <h3 className="panel-title">Formations</h3>
                </div>
                <div className="panel-body">
                    {this.state.cards}
                    <button type="button" className="btn btn-info" onClick={this.addDiploma.bind(this)}>Add</button>
                </div>
            </div>
        );
    }
}

class DiplomaCreateUserFormCard extends React.Component {
    render() {
        const models = ["user", "user_profile", "diploma"];
        return (
            <div className="panel panel-default">
                <div className="panel-body">
                    <RestInputString model={models} index={this.props.index} name="program_name" title="Nom du programme" />
                    <RestInputString model={models} index={this.props.index} name="institution_name" title="Nom de l'institution" />
                    <RestInputString model={models} index={this.props.index} name="address" title="Adresse de l'institution" />
                    <RestInputString model={models} index={this.props.index} name="date_start" title="Date début (AAAA-MM-JJ)" />
                    <RestInputString model={models} index={this.props.index} name="date_end" title="Date fin (AAAA-MM-JJ)" />
                </div>
            </div>
        );
    }
}
