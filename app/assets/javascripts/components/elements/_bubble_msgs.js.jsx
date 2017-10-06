class BubbleMessage extends React.Component {
    render(type, text) {
        if(typeof text !== "string") return null;
        return(
            <div className={"alert alert-" + type}>{text}</div>
        );
    }
}

class Alert extends BubbleMessage {
    render() {
        return super.render("danger", this.props.text);
    }
}

class Notice extends BubbleMessage {
    render() {
        return super.render("success", this.props.text);
    }
}
