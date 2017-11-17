class ServicePointCreateForm extends React.Component {
    render() {
        const action = '/servicepoints';
        let content = (
            <tr>
                <ServicePointCreateInputName />
                <ServicePointCreateInputAddress />
                <ServicePointCreateInputPhone />
                <ServicePointCreateInputEmail />
                <ServicePointCreateInputFax />
                <ServicePointButtonCreate />
            </tr>
        );
        let method = "post";

        return(

                    <RestForm token={this.props.token}
                        content={content}
                        action={action}
                        method={method}
                    />
        );
    }
}
