class Landing extends React.Component {
    render() {
        const users = this.props.users.map(user =>
            <User user={user} key={user.id} />
        );

        return(
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <div className="panel-title">Utilisateurs</div>
                </div>
                <div className="panel-body">
                    <ul className="list-group">
                        {users}
                    </ul>
                </div>
            </div>
        );
    }
}

class User extends React.Component {
    render() {
        const user = this.props.user;
        return(
            <li className="list-group-item">{user.email}</li>
        );
    }
}
