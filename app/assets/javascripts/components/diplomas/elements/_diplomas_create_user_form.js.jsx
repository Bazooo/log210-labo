class DiplomaCreateUserForm extends React.Component {
    render() {
        return (
            <div className="panel panel-info">
                <div className="panel-heading">
                    <h3 className="panel-title">Formations</h3>
                </div>
                <div className="panel-body">
                    <DiplomaInputString name="program_name" title="Nom du programme" />
                    <DiplomaInputString name="institution_name" title="Nom de l'institution" />
                    <DiplomaInputString name="address" title="Adresse de l'institution" />
                    <DiplomaInputString name="date_start" title="Date début (AA-MM-JJ)" />
                    <DiplomaInputString name="date_end" title="Date fin (AA-MM-JJ)" />
                </div>
            </div>
        );
    }
}
