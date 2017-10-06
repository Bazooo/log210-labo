class RestForm extends React.Component {
    render() {
        const method = typeof this.props.method !== "undefined" ? this.props.method : "post";
        return(
            <form action={this.props.action} method={method}>
                <input name="utf8" type="hidden" value="&#x2713;" />
                {this.props.content}
                <AuthToken token={this.props.token} />
            </form>
        );
    }
}
