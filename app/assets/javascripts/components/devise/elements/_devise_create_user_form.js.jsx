class DeviseCreateUserForm extends React.Component {
    render() {
        const action = _devise_constants.getActions().create_user;
        let content = (
            <div>
                <DeviseInputEmail />
                <DeviseInputPassword />
                <DeviseInputRole roles={this.props.roles} />
                <DeviseButtonCreate />
            </div>
        );

        return(
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <h3 className="panel-title">Créer un nouvel utilisateur</h3>
                </div>
                <div className="panel-body">
                    <RestForm token={this.props.token}
                        content={content}
                        action={action}
                    />
                </div>
            </div>
        );
    }
}
