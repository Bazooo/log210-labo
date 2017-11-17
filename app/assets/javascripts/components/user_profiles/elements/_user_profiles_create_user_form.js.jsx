class UserProfileCreateUserForm extends React.Component {
    render() {
        const models = ["user", "user_profile"];
        return (
            <div className="panel panel-info">
                <div className="panel-heading">
                    <h3 className="panel-title">Profil de l'employé</h3>
                </div>
                <div className="panel-body">
                    <UserProfileInputString model={models} name="first_name" title="Prénom" />
                    <UserProfileInputString model={models} name="last_name" title="Nom de famille" />
                    <UserProfileInputString model={models} name="address" title="Adresse" />
                    <UserProfileInputString model={models} name="organism_role" title="Rôle dans l'organisme" />

                    <UserPhoneCreateUserForm />

                    <DiplomaCreateUserForm />
                </div>
            </div>
        );
    }
}
