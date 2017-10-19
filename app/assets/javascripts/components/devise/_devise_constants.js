class DeviseConstants {
    constructor() {
        this._modelName = "user";
        this._actions = {
            sign_in: this._createAction("/my/", "sign_in"),
            create_user: this._createAction("", ""),
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
}

const _devise_constants = new DeviseConstants();
