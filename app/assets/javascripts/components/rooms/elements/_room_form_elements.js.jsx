class RoomInput extends React.Component {
    getData(name) {
        const modelName = 'room';
        return ({
            id: modelName + "_" + name,
            name: modelName + "["+ name +"]",
        });

    }
    render(content) {
        return(
            <div className="form-group">
                {content}
            </div>
        );
    }
}
class RoomInputName extends RoomInput {
    constructor(props) {
        super(props);
        this.name = props.name;
    }
    render() {
        const data = this.getData("name");
        let content = (
            <div>
                <label htmlFor={data.id}>Name</label>
                <input type="text" className="form-control" id={data.id} name={data.name} placeholder="Enter name" defaultValue={this.name}/>
            </div>
        );
        return content;
    }
}

class RoomInputPlaces extends RoomInput{
    constructor(props) {
        super(props);
        this.places = props.places;
    }
    render() {
        const data = this.getData("places");
        let content = (
            <div>
                <label htmlFor={data.id}>Places</label>
                <input type="text"  className="form-control" id={data.id} name={data.name} placeholder="Enter number of places" defaultValue={this.places}/>
            </div>
        );

        return content;
    }
}

class RoomInputServiceType extends RoomInput{
    constructor(props) {
        super(props);
        this.serviceType = props.serviceType;
    }
    render() {
        const data = this.getData("serviceType");
        let content = (
            <div>
                <label htmlFor={data.id}>Service Type</label>
                <select className="form-control" name={data.name} id={data.id} defaultValue={this.serviceType}>
                    <option value="CTS">CTS</option>
                    <option value="EG">EG</option>
                    <option value="VS">VS</option>
                </select>
            </div>
        );

        return content;
    }
}



class RoomButtonUpdate extends React.Component {
    render() {
        return(
            <button type="submit" className="btn btn-primary" name="commit" data-disable-with="Update Room">Update Room</button>
        );
    }
}
