import AppForm from '../app-components/Form/AppForm';

Vue.component('menu-content-form', {
    mixins: [AppForm],
    props: [
        'menus'
    ],
    data: function() {
        return {
            form: {
                title:  this.getLocalizedFormDefaults() ,
                description:  this.getLocalizedFormDefaults() ,
                enabled:  false ,
                menu_id:  '' ,
                menu:  '' ,
                
            }
        }
    }

});