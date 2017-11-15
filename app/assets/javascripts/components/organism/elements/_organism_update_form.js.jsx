class OrganismUpdateForm extends React.Component {
   constructor(props){
        super(props);
        console.log(this.props.organism.id); // prints out whatever is inside props
        this.id = this.props.organism.id
    }
    render() {
        const action = '/organisms/' + this.id ;
        console.log(action)
        let content = (
            <div>
                <OrganismInputName name={this.props.organism.name} />
                <OrganismInputAddress address={this.props.organism.address}/>
                <OrganismInputPhone phone={this.props.organism.phone}/>
                <OrganismInputEmail email={this.props.organism.email}/>
                <OrganismInputFax fax={this.props.organism.fax}/>
                <OrganismButtonUpdate />
            </div>

        );
        let method = "put";

        return(
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <h3 className="panel-title">Update new Organism</h3>
                </div>
                <div className="panel-body">
                    <RestForm token={this.props.token}
                        content={content}
                        action={action}
                        method={method}
                    />
                </div>
            </div>
        );
    }
}
