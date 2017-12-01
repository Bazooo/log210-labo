class ReferentSearchCreateForm extends React.Component {
    render() {
        const models = ["referent_search"];
        const action = "/referent_searches";
        const method = "post";
        let content = (
            <div>
                <RestInputString model={models} name="familyName" title="Family Name" />
                <RestInputString model={models} name="surname" title="Surname" />
                <RestInputString model={models} name="title" title="Title" />
                <RestInputString model={models} name="telephone" title="Telephone" />
                <RestHiddenInput val={this.props.reforganismId} name="reforganismId" />
                <RestInputButton title="Search Referent" />
            </div>
        );
        return (
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <h3 className="panel-title">Search Referents</h3>
                </div>
                <div className="panel-body">
                    <RestForm token={this.props.token}
                              content={content}
                              action={action}
                              method={method}
                    />
                </div>
            </div>
        );
    }
}