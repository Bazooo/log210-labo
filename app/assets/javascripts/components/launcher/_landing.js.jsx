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
                    <table className="table">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>Email</th>
                                <th>Rôle</th>
                            </tr>
                        </thead>
                        <tbody>
                            {users}
                        </tbody>
                    </table>
                </div>
            </div>
        );
    }
}

class User extends React.Component {
    render() {
        const user = this.props.user;
        return(
            <tr>
                <th scope="row">{user.id}</th>
                <td>{user.email}</td>
                <td>{user.role}</td>
            </tr>
        );
    }
}
