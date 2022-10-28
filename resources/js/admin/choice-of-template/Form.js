import AppForm from '../app-components/Form/AppForm';

Vue.component('choice-of-template-form', {
    mixins: [AppForm],
    props: [
        'templates'
    ],
    data: function() {
        return {
            form: {
                template_id:  '' ,
                template:  '' ,
                
            }
        }
    }

});