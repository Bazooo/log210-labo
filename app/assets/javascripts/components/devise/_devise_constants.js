class DeviseConstants {
    constructor() {
        this._modelName = "user";
        this._actions = {
            sign_in: this._createAction("/my/", "sign_in"),
            create_user: this._createUser("", ""),
        };
    }

    getModelName() {
        return this._modelName.slice(0);
    }

    getActions() {
        return Object.assign({}, this._actions);
    }

    getName(name) {
        return this._modelName + "[" + name + "]";
    }

    _createAction(prefix, postfix) {
        return prefix + this._modelName + "s/" + postfix;
    }

    _createUser(prefix, postfix) {
        return prefix + "/create_user/" + postfix;{/* Juste pour le moment */}
    }
}

const _devise_constants = new DeviseConstants();
