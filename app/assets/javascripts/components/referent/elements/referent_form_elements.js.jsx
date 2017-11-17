class ReferentInput extends React.Component {
    getData(name) {
        const modelName = 'referent';
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

class ReferentInputFamilyname extends ReferentInput {
    constructor(props) {
        super(props);
        this.familyname = props.familyName;
    }
    render() {
        const data = this.getData("familyName");
        let content = (
            <div>
                <label htmlFor={data.id}>Family Name</label>
                <input type="text" className="form-control" id={data.id} name={data.name} placeholder="Enter family name" defaultValue={this.familyname}/>
            </div>
        );
        return content;
    }
}

class ReferentInputSurname extends ReferentInput {
    constructor(props) {
        super(props);
        this.surname = props.surname;
    }
    render() {
        const data = this.getData("surname");
        let content = (
            <div>
                <label htmlFor={data.id}>Surname</label>
                <input type="text" className="form-control" id={data.id} name={data.name} placeholder="Enter surname" defaultValue={this.surname}/>
            </div>
        );
        return content;
    }
}

class ReferentInputTitle extends ReferentInput {
    constructor(props) {
        super(props);
        this.title = props.title;
    }
    render() {
        const data = this.getData("title");
        let content = (
            <div>
                <label htmlFor={data.id}>Title</label>
                <input type="text" className="form-control" id={data.id} name={data.name} placeholder="Enter title" defaultValue={this.title}/>
            </div>
        );
        return content;
    }
}

class ReferentInputTelephone extends ReferentInput {
    constructor(props) {
        super(props);
        this.telephone = props.telephone;
    }
    render() {
        const data = this.getData("telephone");
        let content = (
            <div>
                <label htmlFor={data.id}>Telephone</label>
                <input type="text" className="form-control" id={data.id} name={data.name} placeholder="Enter telephone" defaultValue={this.telephone}/>
            </div>
        );
        return content;
    }
}

class ReferentInputCellphone extends ReferentInput {
    constructor(props) {
        super(props);
        this.cellphone = props.cellphone;
    }
    render() {
        const data = this.getData("cellphone");
        let content = (
            <div>
                <label htmlFor={data.id}>Cellphone</label>
                <input type="text" className="form-control" id={data.id} name={data.name} placeholder="Enter cellphone" defaultValue={this.cellphone}/>
            </div>
        );
        return content;
    }
}

class ReferentInputFax extends ReferentInput {
    constructor(props) {
        super(props);
        this.fax = props.fax;
    }
    render() {
        const data = this.getData("fax");
        let content = (
            <div>
                <label htmlFor={data.id}>Fax</label>
                <input type="text" className="form-control" id={data.id} name={data.name} placeholder="Enter fax" defaultValue={this.fax}/>
            </div>
        );
        return content;
    }
}

class ReferentInputEmail extends ReferentInput{
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

class ReferentInputPreference extends ReferentInput{
    constructor(props) {
        super(props);
        this.preference = props.preference;
    }
    render() {
        const data = this.getData("preference");
        const preferences = this.props.preferences.map((preference, index) =>
            <option value={preference} key={index}>{preference}</option>
        )
        let content = (
            <div>
                <label htmlFor={data.id}>Preference</label>
                <select name={data.name} id={data.id} className="form-control">
                    {preferences}
                </select>
            </div>
        );

        return content;
    }
}

class ReferentButtonCreate extends React.Component {
    render() {
        return(
            <button type="submit" className="btn btn-primary" name="commit" data-disable-with="Create Referent">Create Referent</button>
        );
    }
}

class ReferentButtonUpdate extends React.Component {
    render() {
        return(
            <button type="submit" className="btn btn-primary" name="commit" data-disable-with="Update Referent">Update Referent</button>
        );
    }
}