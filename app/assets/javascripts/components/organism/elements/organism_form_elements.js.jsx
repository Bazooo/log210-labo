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

class OrganismInputName {
    render() {
        let content = (
            <div>
                <label htmlFor="organism_name">Name</label>
                <input type="text" className="form-control" id="organism_name" name="organism[name]" placeholder="Enter name" />
            </div>
        );
        return render(content);
    }
}

class OrganismInputAddress {
    render() {
        let content = (
            <div>
                <label htmlFor="organism_address">Address</label>
                <input type="text"  className="form-control" id="organism_address" name="organism[address]" placeholder="Enter address" />
            </div>
        );

        return render(content);
    }
}

class OrganismInputPhone {
    render() {
        let content = (
            <div>
                <label htmlFor="organism_phone">Phone</label>
                <input type="text"  className="form-control" id="organism_phone" name="organism[phone]" placeholder="Enter phone" />
            </div>
        );

        return render(content);
    }
}

class OrganismInputEmail {
    render() {
        let content = (
            <div>
                <label htmlFor="organism_email">Email</label>
                <input type="text"  className="form-control" id="organism_email" name="organism[email]" placeholder="Enter email" />
            </div>
        );

        return render(content);
    }
}

class OrganismInputFax {
    render() {
        let content = (
            <div>
                <label htmlFor="organism_fax">Fax</label>
                <input type="text"  className="form-control" id="organism_fax" name="organism[fax]" placeholder="Enter fax" />
            </div>
        );

        return render(content);
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
