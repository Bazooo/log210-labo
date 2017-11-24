class DiplomaEditUserForm extends React.Component {
    constructor(props) {
        super(props);
        const length = props.diplomas.length;
        let cards = [];
        for(var i = 0; i < length; i++) {
            cards.push(<DiplomaEditUserFormCard key={i} diploma={props.diplomas[i]} index={i} />);
        }
        this.state = {
            cards: cards,
            cardIndex: length,
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

class DiplomaEditUserFormCard extends React.Component {
    render() {
        const models = ["user_profile", "diploma"];
        return (
            <div className="panel panel-default">
                <div className="panel-body">
                    <RestInputString model={models} val={this.props.diploma.program_name} index={this.props.index} name="program_name" title="Nom du programme" />
                    <RestInputString model={models} val={this.props.diploma.institution_name} index={this.props.index} name="institution_name" title="Nom de l'institution" />
                    <RestInputString model={models} val={this.props.diploma.address} index={this.props.index} name="address" title="Adresse de l'institution" />
                    <RestInputString model={models} val={this.props.diploma.date_start} index={this.props.index} name="date_start" title="Date début (AAAA-MM-JJ)" />
                    <RestInputString model={models} val={this.props.diploma.date_end} index={this.props.index} name="date_end" title="Date fin (AAAA-MM-JJ)" />
                </div>
            </div>
        );
    }
}
