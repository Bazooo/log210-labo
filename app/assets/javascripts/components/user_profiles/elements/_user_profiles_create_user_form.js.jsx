class UserProfileCreateUserForm extends React.Component {
    render() {
        const models = ["user", "user_profile"];
        return (
            <div className="panel panel-info">
                <div className="panel-heading">
                    <h3 className="panel-title">Profil de l'employé</h3>
                </div>
                <div className="panel-body">
                    <RestInputString model={models} name="first_name" title="Prénom" />
                    <RestInputString model={models} name="last_name" title="Nom de famille" />
                    <RestInputString model={models} name="address" title="Adresse" />
                    <RestInputString model={models} name="organism_role" title="Rôle dans l'organisme" />

                    <UserPhoneCreateUserForm />

                    <DiplomaCreateUserForm />
                </div>
            </div>
        );
    }
}
