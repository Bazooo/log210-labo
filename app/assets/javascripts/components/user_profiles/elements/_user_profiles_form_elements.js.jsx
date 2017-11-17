class UserProfileInput extends React.Component {
    getData(name, model) {
        const modelName = _user_profile_constants.getModelName(model);
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

class UserProfileInputString extends UserProfileInput {
    render() {
        const data = this.getData(this.props.name, this.props.model);
        let content = (
            <div>
                <label htmlFor={data.id}>{this.props.title}</label>
                <input type="text" defaultValue={this.props.val} className="form-control" id={data.id} name={data.name} />
            </div>
        );

        return super.render(content);
    }
}

class UserProfileButtonEdit extends React.Component {
    render() {
        return(
            <button type="submit" className="btn btn-primary" name="commit" data-disable-with="Update user">Update user</button>
        );
    }
}
