class UserProfileCreateUserForm extends React.Component {
    render() {
        return (
            <div className="panel panel-info">
                <div className="panel-heading">
                    <h3 className="panel-title">Profil de l'employé</h3>
                </div>
                <div className="panel-body">
                    <UserProfileInputString name="first_name" title="Prénom" />
                    <UserProfileInputString name="last_name" title="Nom de famille" />
                    <UserProfileInputString name="address" title="Adresse" />
                    <UserProfileInputString name="organism_role" title="Rôle dans l'organisme" />

                    <UserPhoneCreateUserForm />

                    <DiplomaCreateUserForm />
                </div>
            </div>
        );
    }
}
