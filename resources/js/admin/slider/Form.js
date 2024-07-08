import AppForm from '../app-components/Form/AppForm';

Vue.component('slider-form', {
    mixins: [AppForm],
    data: function() {
        return {
            form: {
                
            },
            mediaCollections: ['cover']
        }
    }

});