class UserProfileEditUserForm extends React.Component {
    render() {
        const action = "update";
        const method = "put";
        const profile = JSON.parse(this.props.profile);
        const phone = JSON.parse(this.props.phone);
        const diplomas = JSON.parse(this.props.diplomas);
        const models = ["user_profile"];
        let content = (
            <div>
                <RestInputString model={models} val={profile.first_name} name="first_name" title="Prénom" />
                <RestInputString model={models} val={profile.last_name} name="last_name" title="Nom de famille" />
                <RestInputString model={models} val={profile.address} name="address" title="Adresse" />
                <RestInputString model={models} val={profile.organism_role} name="organism_role" title="Rôle dans l'organisme" />

                <UserPhoneEditUserForm phone={phone} />

                <DiplomaEditUserForm diplomas={diplomas} />

                <RestInputButton title="Update user" />
            </div>
        );
        return(
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <h3 className="panel-title">Update profile</h3>
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
