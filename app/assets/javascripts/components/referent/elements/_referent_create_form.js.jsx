class ReferentCreateForm extends React.Component {

    render() {
        const action = '/referents';
        const allPreferences = this.props.preferences;
        let content = (
            <div>
                <ReferentInputFamilyname />
                <ReferentInputSurname />
                <ReferentInputTitle />
                <ReferentInputTelephone />
                <ReferentInputCellphone />
                <ReferentInputFax />
                <ReferentInputEmail />
                <ReferentInputPreference preferences={allPreferences} />
                <ReferentButtonCreate />
            </div>
    );
        let method = "post";

        return(
            <div className="panel panel-primary">
            <div className="panel-heading">
            <h3 className="panel-title">Create New Referent</h3>
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