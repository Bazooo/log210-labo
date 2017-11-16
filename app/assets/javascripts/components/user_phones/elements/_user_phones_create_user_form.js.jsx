class UserPhoneCreateUserForm extends React.Component {
    render() {
        return (
            <div className="panel panel-info">
                <div className="panel-heading">
                    <h3 className="panel-title">Numéros de téléphone</h3>
                </div>
                <div className="panel-body">
                    <UserPhoneInputString name="cell_number" title="Cellulaire" />
                    <UserPhoneInputString name="home_number" title="Maison" />
                    <UserPhoneInputString name="work_number" title="Travail" />
                </div>
            </div>
        );
    }
}
