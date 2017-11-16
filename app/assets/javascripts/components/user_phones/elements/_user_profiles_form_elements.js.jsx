class UserPhoneInput extends React.Component {
    getData(name) {
        const modelName = _user_phone_constants.getModelName();
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
        const data = this.getData(this.props.name);
        let content = (
            <div>
                <label htmlFor={data.id}>{this.props.title}</label>
                <input type="text" className="form-control" id={data.id} name={data.name} />
            </div>
        );

        return super.render(content);
    }
}
