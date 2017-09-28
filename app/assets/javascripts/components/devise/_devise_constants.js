class DeviseConstants {
    constructor() {
        this._modelName = "user";
        this._actions = {
            sign_in: this._createAction("sign_in"),
        }
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

    _createAction(name) {
        return "/" + this._modelName + "s/" + name;
    }
}

const _devise_constants = new DeviseConstants();
