class UserPhoneConstants {
    constructor() {
        this._actions = {
        };
    }

    getModelName(model) {
        let modelName = model[0];
        for(let i = 1; i < model.length; i++) {
            modelName += "["+ model[i] +"_attributes]";
        }
        return modelName;
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
