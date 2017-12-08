class ReferentUpdateForm extends React.Component {
    constructor(props){
        super(props);
        console.log(this.props.referent.id); // prints out whatever is inside props
        this.id = this.props.referent.id
    }
    render() {
        const action = '/referents/' + this.id;
        const allPreferences = this.props.preferences;
        let content = (
            <div>
                <ReferentInputFamilyname familyName={this.props.referent.familyName}/>
                <ReferentInputSurname surname={this.props.referent.surname}/>
                <ReferentInputTitle title={this.props.referent.title}/>
                <ReferentInputTelephone telephone={this.props.referent.telephone}/>
                <ReferentInputCellphone cellphone={this.props.referent.cellphone}/>
                <ReferentInputFax fax={this.props.referent.fax}/>
                <ReferentInputEmail email={this.props.referent.email}/>
                <ReferentInputPreference preference={this.props.referent.preference} preferences={allPreferences}/>
                <RestHiddenInput val={this.props.reforganismId} name="reforganismId" />
                <ReferentButtonUpdate />
            </div>
        );
        let method = "put";

        return(
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <h3 className="panel-title">Update Referent</h3>
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