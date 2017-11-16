class UserPhoneConstants {
    constructor() {
        this._modelName = "user[user_profiles][user_phones]";
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

const _user_phone_constants = new UserPhoneConstants();
