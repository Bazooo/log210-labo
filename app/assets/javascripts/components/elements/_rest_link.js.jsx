class RestLink extends React.Component {
    render() {
        const method = typeof this.props.method !== "undefined" ? this.props.method : "post";
        const className = typeof this.props.className !== "undefined" ? this.props.className : "";
        return(
            <a href={this.props.path}
                data-method={method}
                className={className}
                rel="nofollow">
                {this.props.content}
            </a>
        );
    }
}
