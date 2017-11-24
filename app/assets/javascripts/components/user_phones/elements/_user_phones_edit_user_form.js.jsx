class UserPhoneEditUserForm extends React.Component {
    render() {
        const models = ["user_profile", "user_phone"];
        const phone = this.props.phone;
        return (
            <div className="panel panel-info">
                <div className="panel-heading">
                    <h3 className="panel-title">Numéros de téléphone</h3>
                </div>
                <div className="panel-body">
                    <UserPhoneInputString model={models} val={phone.cell_number} name="cell_number" title="Cellulaire" />
                    <UserPhoneInputString model={models} val={phone.home_number} name="home_number" title="Maison" />
                    <UserPhoneInputString model={models} val={phone.work_number} name="work_number" title="Travail" />
                </div>
            </div>
        );
    }
}
