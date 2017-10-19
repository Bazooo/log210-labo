class DeviseInput extends React.Component {
    getData(name) {
        const modelName = _devise_constants.getModelName();
        return ({
            id: modelName + "_" + name,
            name: modelName + "["+ name +"]",
        });

    }
    render(content) {
        return(
            <div className="form-group">
                {content}
            </div>
        );
    }
}

class DeviseInputEmail extends DeviseInput {
    render() {
        const data = this.getData("email");
        let content = (
            <div>
                <label htmlFor={data.id}>Email</label>
                <input type="email" className="form-control" id={data.id} name={data.name} placeholder="Enter email" />
            </div>
        );

        return super.render(content);
    }
}

class DeviseInputPassword extends DeviseInput {
    render() {
        const data = this.getData("password");
        let content = (
            <div>
                <label htmlFor={data.id}>Password</label>
                <input type="password" autoComplete="off" className="form-control" id={data.id} name={data.name} placeholder="Enter password" />
            </div>
        );

        return super.render(content);
    }
}

class DeviseInputRole extends DeviseInput {
    render() {
        const data = this.getData("role");
        const roles = this.props.roles.map((role, index) =>
            <option value={role} key={index}>{role}</option>
        )
        let content = (
            <div>
                <label htmlFor={data.id}>Role</label>
                <select name={data.name} id={data.id} className="form-control">
                    {roles}
                </select>
            </div>
        );

        return super.render(content);
    }
}

class DeviseButtonLogin extends React.Component {
    render() {
        return(
            <button type="submit" className="btn btn-primary" name="commit" data-disable-with="Log in">Log in</button>
        );
    }
}

class DeviseButtonCreate extends React.Component {
    render() {
        return(
            <button type="submit" className="btn btn-primary" name="commit" data-disable-with="Create user">Create user</button>
        );
    }
}
