class DiplomaInput extends React.Component {
    getData(name, model) {
        const modelName = _diploma_constants.getModelName(model);
        return ({
            id: modelName + "_" + name,
            name: modelName + "[" + this.props.index + "]["+ name +"]",
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

class DiplomaInputString extends DiplomaInput {
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
