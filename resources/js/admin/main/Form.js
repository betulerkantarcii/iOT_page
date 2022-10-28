import AppForm from '../app-components/Form/AppForm';

Vue.component('main-form', {
    mixins: [AppForm],
    data: function() {
        return {
            form: {
                title:  this.getLocalizedFormDefaults() ,
                description:  this.getLocalizedFormDefaults() ,
                link:  this.getLocalizedFormDefaults() ,
                enabled:  false ,
                
            },
            mediaCollections: ['cover']
        }
    }

});