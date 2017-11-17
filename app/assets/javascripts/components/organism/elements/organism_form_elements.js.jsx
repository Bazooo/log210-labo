class OrganismInput extends React.Component {
    getData(name) {
        const modelName = 'organism';
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

class OrganismInputName extends OrganismInput {
    constructor(props) {
        super(props);
        this.name = props.name;
    }
    render() {
        const data = this.getData("name");
        let content = (
            <div>
                <label htmlFor={data.id}>Name</label>
                <input type="text" className="form-control" id={data.id} name={data.name} placeholder="Enter name" defaultValue={this.name}/>
            </div>
        );
        return content;
    }
}

class OrganismInputAddress extends OrganismInput{
    constructor(props) {
        super(props);
        this.address = props.address;
    }
    render() {
        const data = this.getData("address");
        let content = (
            <div>
                <label htmlFor={data.id}>Address</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter address" defaultValue={this.address}/>
            </div>
        );

        return content;
    }
}

class OrganismInputPhone extends OrganismInput{
    constructor(props) {
        super(props);
        this.phone = props.phone;
    }
    render() {
        const data = this.getData("phone");
        let content = (
            <div>
                <label htmlFor={data.id}>Phone</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter phone" defaultValue={this.phone}/>
            </div>
        );

        return content;
    }
}

class OrganismInputEmail extends OrganismInput{
    constructor(props) {
        super(props);
        this.email = props.email;
    }
    render() {
        const data = this.getData("email");
        let content = (
            <div>
                <label htmlFor={data.id}>Email</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter email" defaultValue={this.email}/>
            </div>
        );

        return content;
    }
}

class OrganismInputFax extends OrganismInput{
    constructor(props) {
        super(props);
        this.fax = props.fax;
    }
    render() {
        const data = this.getData("fax");
        let content = (
            <div>
                <label htmlFor={data.id}>Fax</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter fax" defaultValue={this.fax}/>
            </div>
        );

        return content;
    }
}


class OrganismButtonUpdate extends React.Component {
    render() {
        return(
            <button type="submit" className="btn btn-primary" name="commit" data-disable-with="Update Organism">Update organism</button>
        );
    }
}

class OrganismButtonCreate extends React.Component {
    render() {
        return(
            <button type="submit" className="btn btn-primary" name="commit" data-disable-with="Create Organism">Create organism</button>
        );
    }
}
