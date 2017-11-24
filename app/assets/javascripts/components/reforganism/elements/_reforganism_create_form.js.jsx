class ReforganismCreateForm extends React.Component {

    render() {
        const action = '/reforganisms';
        let content = (
            <div>
                <ReforganismInputName />
                <ReforganismInputEmail />
                <ReforganismInputWebsite />
                <AddressInputCivicNumber />
                <AddressInputStreet />
                <AddressInputCity />
                <AddressInputProvince />
                <AddressInputPostcode />
                <TelephoneInputWork />
                <TelephoneInputFax />
                <ReforganismButtonCreate />
            </div>
        );
        let method = "post";

        return(
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <h3 className="panel-title">Create new Referent Organism</h3>
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
