import AppForm from '../app-components/Form/AppForm';

Vue.component('event-calendar-form', {
    mixins: [AppForm],
    data: function() {
        return {
            form: {
                title:  this.getLocalizedFormDefaults() ,
                link:  this.getLocalizedFormDefaults() ,
                event_time:  '' ,
                event_location:  this.getLocalizedFormDefaults() ,
                published_at:  '' ,
                enabled:  false ,
                
            }
        }
    }

});