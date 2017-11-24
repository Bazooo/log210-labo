class UserPhoneCreateUserForm extends React.Component {
    render() {
        const models = ["user", "user_profile", "user_phone"];
        return (
            <div className="panel panel-info">
                <div className="panel-heading">
                    <h3 className="panel-title">Numéros de téléphone</h3>
                </div>
                <div className="panel-body">
                    <RestInputString model={models} name="cell_number" title="Cellulaire" />
                    <RestInputString model={models} name="home_number" title="Maison" />
                    <RestInputString model={models} name="work_number" title="Travail" />
                </div>
            </div>
        );
    }
}
