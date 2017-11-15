class OrganismCreateForm extends React.Component {

    render() {
        const action = '/organisms';
        let content = (
            <div>
                <OrganismInputName />
                <OrganismInputAddress />
                <OrganismInputPhone />
                <OrganismInputEmail />
                <OrganismInputFax />
                <OrganismButtonCreate />
            </div>


        );
        let method = "post";

        return(
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <h3 className="panel-title">Create new Organism</h3>
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
