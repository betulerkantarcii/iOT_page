<?php

return [
    'admin-user' => [
        'title' => 'Users',

        'actions' => [
            'index' => 'Users',
            'create' => 'New User',
            'edit' => 'Edit :name',
            'edit_profile' => 'Edit Profile',
            'edit_password' => 'Edit Password',
        ],

        'columns' => [
            'id' => 'ID',
            'last_login_at' => 'Last login',
            'activated' => 'Activated',
            'email' => 'Email',
            'first_name' => 'First name',
            'forbidden' => 'Forbidden',
            'language' => 'Language',
            'last_name' => 'Last name',
            'password' => 'Password',
            'password_repeat' => 'Password Confirmation',
                
            //Belongs to many relations
            'roles' => 'Roles',
                
        ],
    ],




    'template' => [
        'title' => 'Templates',

        'actions' => [
            'index' => 'Templates',
            'create' => 'New Template',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'name' => 'Name',
            
        ],
    ],

    'choice-of-template' => [
        'title' => 'Choice Of Template',

        'actions' => [
            'index' => 'Choice Of Template',
            'create' => 'New Choice Of Template',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'template_id' => 'Template',
            
        ],
    ],

    'main' => [
        'title' => 'Main',

        'actions' => [
            'index' => 'Main',
            'create' => 'New Main',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'title' => 'Title',
            'description' => 'Description',
            'link' => 'Link',
            'enabled' => 'Enabled',
            
        ],
    ],

    'menu' => [
        'title' => 'Menus',

        'actions' => [
            'index' => 'Menus',
            'create' => 'New Menu',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'name' => 'Name',
            
        ],
    ],

    'menu-content' => [
        'title' => 'Menu Content',

        'actions' => [
            'index' => 'Menu Content',
            'create' => 'New Menu Content',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'title' => 'Title',
            'description' => 'Description',
            'enabled' => 'Enabled',
            'menu_id' => 'Menu',
            
        ],
    ],

    'menu' => [
        'title' => 'Menu',

        'actions' => [
            'index' => 'Menu',
            'create' => 'New Menu',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'name' => 'Name',
            
        ],
    ],

    'menu' => [
        'title' => 'Menus',

        'actions' => [
            'index' => 'Menus',
            'create' => 'New Menu',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'name' => 'Name',
            
        ],
    ],

    'event-calendar' => [
        'title' => 'Event Calendar',

        'actions' => [
            'index' => 'Event Calendar',
            'create' => 'New Event Calendar',
            'edit' => 'Edit :name',
            'will_be_published' => 'EventCalendar will be published at',
        ],

        'columns' => [
            'id' => 'ID',
            'title' => 'Title',
            'event_time' => 'Event time',
            'event_location' => 'Event location',
            'published_at' => 'Published at',
            'enabled' => 'Enabled',
            
        ],
    ],

    'event-calendar' => [
        'title' => 'Event Calendar',

        'actions' => [
            'index' => 'Event Calendar',
            'create' => 'New Event Calendar',
            'edit' => 'Edit :name',
            'will_be_published' => 'EventCalendar will be published at',
        ],

        'columns' => [
            'id' => 'ID',
            'title' => 'Title',
            'event_time' => 'Event time',
            'event_location' => 'Event location',
            'link' => 'Link',
            'published_at' => 'Published at',
            'enabled' => 'Enabled',
            
        ],
    ],

    'event-calendar' => [
        'title' => 'Event Calendar',

        'actions' => [
            'index' => 'Event Calendar',
            'create' => 'New Event Calendar',
            'edit' => 'Edit :name',
            'will_be_published' => 'EventCalendar will be published at',
        ],

        'columns' => [
            'id' => 'ID',
            'title' => 'Title',
            'link' => 'Link',
            'event_time' => 'Event time',
            'event_location' => 'Event location',
            'published_at' => 'Published at',
            'enabled' => 'Enabled',
            
        ],
    ],

    // Do not delete me :) I'm used for auto-generation
];