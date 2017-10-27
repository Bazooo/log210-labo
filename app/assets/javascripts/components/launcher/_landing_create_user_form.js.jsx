class LandingCreateUserForm extends React.Component {
    render() {
        return(
            <DeviseCreateUserForm token={this.props.token} userRole={this.props.userRole} roles={this.props.roles} />
        );
    }
}
