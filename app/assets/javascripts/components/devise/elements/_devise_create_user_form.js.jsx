class DeviseCreateUserForm extends React.Component {
    render() {
        const action = _devise_constants.getActions().create_user;
        const allRoles = this.props.roles;
        const roles = allRoles.slice(allRoles.indexOf(this.props.userRole));
        let content = (
            <div>
                <DeviseInputEmail />
                <DeviseInputPassword />
                <DeviseInputRole roles={roles} />
                <UserProfileCreateUserForm />
                <DeviseButtonCreate />
            </div>
        );
        let method = "post";

        return(
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <h3 className="panel-title">Créer un nouvel utilisateur</h3>
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
