class ServicePointUpdateForm extends React.Component {
   constructor(props){
        super(props);
        this.id = this.props.servicepoint.id
    }
    render() {
        const action = '/servicepoints/' + this.id ;
        let content = (
            <div>
                <ServicePointInputName name={this.props.servicepoint.name} />
                <ServicePointInputAddress address={this.props.servicepoint.address}/>
                <ServicePointInputPhone phone={this.props.servicepoint.phone}/>
                <ServicePointInputEmail email={this.props.servicepoint.email}/>
                <ServicePointInputFax fax={this.props.servicepoint.fax}/>
                <ServicePointButtonUpdate />
            </div>
        );
        let method = "put";

        return(
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <h3 className="panel-title">Edit ServicePoint</h3>
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
