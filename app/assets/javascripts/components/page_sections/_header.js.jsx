class Header extends React.Component {
    render() {
        let logout;
        if(this.props.signed) {
            logout = <Logout path={this.props.destroyPath} />;
        }
        return(
            <header className="page-header">
                <h1>RQRSDA <small>{this.props.title}</small></h1>
                {logout}
            </header>
        );
    }
}

class Logout extends React.Component {
    render() {
        return(
            <a href={this.props.path} data-method="delete" rel="nofollow">Logout</a>
        );
    }
}
