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
                    {users}
                </div>
                <div>
                    <a ></a>
                </div>
            </div>
        );
    }
}

class User extends React.Component {
    render() {
        const user = this.props.user;
        return(
            <ul className="list-group">
                <li key="email" className="list-group-item">{user.email}</li>
                <li key="role" className="list-group-item">{user.role}</li>
            </ul>
        );
    }
}
