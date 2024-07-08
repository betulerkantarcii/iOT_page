import AppForm from '../app-components/Form/AppForm';

Vue.component('newsandevent-form', {
    mixins: [AppForm],
    data: function() {
        return {
            form: {
                heading:  '' ,
                link:  '' ,
                published:  '' ,
                enabled:  false ,
                
            },
            mediaCollections: ['cover']
        }
    }

});