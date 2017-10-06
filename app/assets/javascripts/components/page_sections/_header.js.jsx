class Header extends React.Component {
    render() {
        let logout;
        if(this.props.signed) {
            logout = <RestLink path={this.props.destroyPath} method="delete" content="Logout" className="btn btn-primary"/>;
        }
        return(
            <header className="page-header">
                <h1>RQRSDA <small>{this.props.title}</small></h1>
                {logout}
            </header>
        );
    }
}
