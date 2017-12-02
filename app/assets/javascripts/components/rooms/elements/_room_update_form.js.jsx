class RoomUpdateForm extends React.Component {
   constructor(props){
        super(props);
        this.id = this.props.room.id;
    }
    render() {
        const action = '/rooms/' + this.id ;
        let content = (
            <div>
                <RoomInputName name={this.props.room.name} />
                <RoomInputPlaces places={this.props.room.places}/>
                <RoomInputServiceType serviceType={this.props.room.serviceType}/>
                <RoomButtonUpdate />
            </div>
        );
        let method = "put";

        return(
            <div className="panel panel-primary">
                <div className="panel-heading">
                    <h3 className="panel-title">Edit Room</h3>
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
