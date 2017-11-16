class DiplomaConstants {
    constructor() {
        this._modelName = "user[user_profile_attributes][diploma_attributes]";
        this._actions = {
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

const _diploma_constants = new DiplomaConstants();
