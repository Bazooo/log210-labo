class ServicePointInput extends React.Component {
    getData(name) {
        const modelName = 'servicepoint';
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
class ServicePointInputName extends ServicePointInput {
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

class ServicePointInputAddress extends ServicePointInput{
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

class ServicePointInputPhone extends ServicePointInput{
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

class ServicePointInputEmail extends ServicePointInput{
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

class ServicePointInputFax extends ServicePointInput{
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

class ServicePointCreateInputName extends ServicePointInput {
    constructor(props) {
        super(props);
        this.name = props.name;
    }
    render() {
        const data = this.getData("name");
        let content = (
                <input type="text" className="form-control" id={data.id} name={data.name}/>
        );
        return content;
    }
}

class ServicePointCreateInputAddress extends ServicePointInput{
    constructor(props) {
        super(props);
        this.address = props.address;
    }
    render() {
        const data = this.getData("address");
        let content = (
                <input type="text"  className="form-control" id={data.id} name={data.name}/>
        );

        return content;
    }
}

class ServicePointCreateInputPhone extends ServicePointInput{
    constructor(props) {
        super(props);
        this.phone = props.phone;
    }
    render() {
        const data = this.getData("phone");
        let content = (
                <input type="text"  className="form-control" id={data.id} name={data.name}/>
        );

        return content;
    }
}

class ServicePointCreateInputEmail extends ServicePointInput{
    constructor(props) {
        super(props);
        this.email = props.email;
    }
    render() {
        const data = this.getData("email");
        let content = (
                <input type="text"  className="form-control" id={data.id} name={data.name}/>
        );

        return content;
    }
}

class ServicePointCreateInputFax extends ServicePointInput{
    constructor(props) {
        super(props);
        this.fax = props.fax;
    }
    render() {
        const data = this.getData("fax");
        let content = (
                <input type="text"  className="form-control" id={data.id} name={data.name} />
        );

        return content;
    }
}

class ServicePointButtonUpdate extends React.Component {
    render() {
        return(
            <button type="submit" className="btn btn-primary" name="commit" data-disable-with="Update ServicePoint">Update Service Point</button>
        );
    }
}

class ServicePointButtonCreate extends React.Component {
    render() {
        return(
            <button type="submit" className="btn btn-primary" name="commit" data-disable-with="Create ServicePoint">Create Service Point</button>
        );
    }
}
