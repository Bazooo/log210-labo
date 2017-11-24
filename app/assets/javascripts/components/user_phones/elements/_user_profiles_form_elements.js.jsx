class UserPhoneInput extends React.Component {
    getData(name, model) {
        const modelName = _user_phone_constants.getModelName(model);
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

class UserPhoneInputString extends UserPhoneInput {
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
