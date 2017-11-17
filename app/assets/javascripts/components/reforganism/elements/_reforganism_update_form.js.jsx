class ReforganismUpdateForm extends React.Component {
   constructor(props){
        super(props);
        console.log(this.props.reforganism); // prints out whatever is inside props
        this.id = this.props.reforganism.id
    }
    render() {
        const action = '/reforganisms/' + this.id ;
        console.log(action)
        let content = (
            <div>
                <ReforganismInputName name={this.props.reforganism.name}/>
                <ReforganismInputEmail email={this.props.reforganism.email}/>
                <ReforganismInputWebsite website={this.props.reforganism.website}/>
                <AddressInputCivicNumber civic_number={this.props.address.civic_number}/>
                <AddressInputStreet street={this.props.address.street}/>
                <AddressInputCity city={this.props.address.city}/>
                <AddressInputProvince province={this.props.address.province}/>
                <AddressInputPostcode postcode={this.props.address.postcode}/>
                <TelephoneInputWork work={this.props.telephone.work}/>
                <TelephoneInputFax fax={this.props.telephone.fax}/>
                <ReforganismButtonUpdate />
            </div>
        );
        let method = "put";

        return(
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <h3 className="panel-title">Update new Referent organism</h3>
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
