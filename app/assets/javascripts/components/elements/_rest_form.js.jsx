class RestForm extends React.Component {
    render() {
        const method = typeof this.props.method !== "undefined" ? this.props.method : "post";
        const form_method = method == "put" ? "post" : method;
        return(
            <form action={this.props.action} method={form_method}>
                <input type="hidden" name="_method" value={method} />
                <input name="utf8" type="hidden" value="&#x2713;" />
                {this.props.content}
                <AuthToken token={this.props.token} />
            </form>
        );
    }
}
