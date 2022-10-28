import AppForm from '../app-components/Form/AppForm';

Vue.component('template-form', {
    mixins: [AppForm],
    data: function() {
        return {
            form: {
                name:  '' ,
                
            }
        }
    }

});