class Header extends React.Component {
    render() {
        let logout, nav;
        if(this.props.signed) {
            logout = <RestLink path={this.props.destroyPath} method="delete" content="Logout" className="btn btn-primary"/>;
            let organismLink, reforganismsLink;
            if(this.props.role == "directeur") {
                organismLink = <Link root={this.props.root} link="organisms" title="Mes organismes" />;
            }
            if(this.props.role == "directeur" || this.props.role == "coordonateur") {
                reforganismsLink = <Link root={this.props.root} link="reforganisms" title="Référents organismes" />;
            }
            nav = (
                <ul className="nav nav-pills">
                    <Link root={this.props.root} link="" title="Main" />
                    <Link root={this.props.root} link="user_profiles/edit" title="Edit profile" />
                    {organismLink}
                    {reforganismsLink}
                    <Link root={this.props.root} link="referent_searches/new" title="Chercher référents" />
                </ul>
            );
        }
        return(
            <header className="page-header">
                <h1>RQRSDA</h1>
                {nav}
                {logout}
            </header>
        );
    }
}

class Link extends React.Component {
    render() {
        const link = this.props.root + this.props.link;
        return(
            <li>
                <a href={link}>{this.props.title}</a>
            </li>
        );
    }
}
