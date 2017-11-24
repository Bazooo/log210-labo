class RestInput extends React.Component {
    getModelName(model) {
        let modelName = model[0];
        for(let i = 1; i < model.length; i++) {
            modelName += "["+ model[i] +"_attributes]";
        }
        return modelName;
    }

    getData(name, model, index) {
        const modelName = this.getModelName(model);
        const indexModel = typeof index != "undefined" ? "[" + index + "]" : "";
        return ({
            id: modelName + "_" + name,
            name: modelName + indexModel + "["+ name +"]",
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

class RestInputString extends RestInput {
    render() {
        const data = this.getData(this.props.name, this.props.model, this.props.index);
        let content = (
            <div>
                <label htmlFor={data.id}>{this.props.title}</label>
                <input type="text" defaultValue={this.props.val} className="form-control" id={data.id} name={data.name} />
            </div>
        );

        return super.render(content);
    };
}

class RestInputButton extends React.Component {
    render () {
        const type = typeof this.props.type === "undefined" ? "submit" : this.props.type;
        const name = typeof this.props.name === "undefined" ? "commit" : this.props.name;
        const title = this.props.title;
        return (
            <button type={type} className="btn btn-primary" name={name} data-disable-with={title}>{title}</button>
        );
    };
}
