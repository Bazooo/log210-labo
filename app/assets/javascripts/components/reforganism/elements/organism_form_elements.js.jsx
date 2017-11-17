class ReforganismInput extends React.Component {
    getData(name) {
        const modelName = 'reforganism';
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

class AddressInput extends React.Component {
    getData(name) {
        const modelName = 'reforganism';
        return ({
            id: modelName + "_" + "address_attributes" + "_" + name,
            name: modelName +"["+ "address_attributes" +"]" +"["+ name +"]",
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

class TelephoneInput extends React.Component {
    getData(name) {
        const modelName = 'reforganism';
        return ({
            id: modelName + "_" + "telephone_attributes" + "_" + name,
            name: modelName +"["+ "telephone_attributes" +"]" +"["+ name +"]",
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

class ReforganismInputName extends ReforganismInput {
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

class ReforganismInputEmail extends ReforganismInput{
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

class ReforganismInputWebsite extends ReforganismInput{
    constructor(props) {
        super(props);
        this.website = props.website;
    }
    render() {
        const data = this.getData("website");
        let content = (
            <div>
                <label htmlFor={data.id}>Website</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter website" defaultValue={this.website}/>
            </div>
        );

        return content;
    }
}

class AddressInputCivicNumber extends AddressInput{
    constructor(props) {
        super(props);
        this.civic_number = props.civic_number;
    }
    render() {
        const data = this.getData("civic_number");
        let content = (
            <div>
                <label htmlFor={data.id}>Civic number</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter civic number" defaultValue={this.civic_number}/>
            </div>
        );

        return content;
    }
}

class AddressInputStreet extends AddressInput{
    constructor(props) {
        super(props);
        this.street = props.street;
    }
    render() {
        const data = this.getData("street");
        let content = (
            <div>
                <label htmlFor={data.id}>Street</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter street" defaultValue={this.street}/>
            </div>
        );

        return content;
    }
}

class AddressInputCity extends AddressInput{
    constructor(props) {
        super(props);
        this.city = props.city;
    }
    render() {
        const data = this.getData("city");
        let content = (
            <div>
                <label htmlFor={data.id}>City</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter city" defaultValue={this.city}/>
            </div>
        );

        return content;
    }
}

class AddressInputProvince extends AddressInput{
    constructor(props) {
        super(props);
        this.province = props.province;
    }
    render() {
        const data = this.getData("province");
        let content = (
            <div>
                <label htmlFor={data.id}>Province</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter province" defaultValue={this.province}/>
            </div>
        );

        return content;
    }
}

class AddressInputPostcode extends AddressInput{
    constructor(props) {
        super(props);
        this.postcode = props.postcode;
    }
    render() {
        const data = this.getData("postcode");
        let content = (
            <div>
                <label htmlFor={data.id}>Postcode</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter postcode" defaultValue={this.postcode}/>
            </div>
        );

        return content;
    }
}

class TelephoneInputWork extends TelephoneInput{
    constructor(props) {
        super(props);
        this.work = props.work;
    }
    render() {
        const data = this.getData("work");
        let content = (
            <div>
                <label htmlFor={data.id}>work</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter work phone" defaultValue={this.work}/>
            </div>
        );

        return content;
    }
}

class TelephoneInputFax extends TelephoneInput{
    constructor(props) {
        super(props);
        this.fax = props.fax;
    }
    render() {
        const data = this.getData("fax");
        let content = (
            <div>
                <label htmlFor={data.id}>fax</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter fax" defaultValue={this.fax}/>
            </div>
        );

        return content;
    }
}


class ReforganismButtonUpdate extends React.Component {
    render() {
        return(
            <button type="submit" className="btn btn-primary" name="commit" data-disable-with="Update Reforganism">Update Reforganism</button>
        );
    }
}

class ReforganismButtonCreate extends React.Component {
    render() {
        return(
            <button type="submit" className="btn btn-primary" name="commit" data-disable-with="Create Reforganism">Create Reforganism</button>
        );
    }
}
