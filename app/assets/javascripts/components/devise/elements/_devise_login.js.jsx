class DeviseLogin extends React.Component {
    render() {
        const action = _devise_constants.getActions().sign_in;
        let content = (
            <div>
                <DeviseInputEmail />
                <DeviseInputPassword />
                <DeviseButtonLogin />
            </div>
        );

        return(
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <h3 className="panel-title">Log in</h3>
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
