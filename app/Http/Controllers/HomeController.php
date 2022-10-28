<?php

namespace App\Http\Controllers;


use App\Models\Menu;
use App\Models\MenuContent;
use App\Models\Template;
use App\Models\ChoiceOfTemplate;
use App\Models\Main;
use App\Models\EventCalendar;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    protected $user;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {

            //$this->user = auth('admin')->user();

            return $next($request);
        });
    }

    public function index()
    {

        $main_post = $this->getMain();
        $menu_list = $this->getMenus();
        $template_data = $this->getTemplates();
        $menu_content_list = $this->getMenuContent();
        $dataEtkinlik = $this->getEtkinlik();

        $max_post = count($main_post);
        $coverPost_urls = [];
        for($i=0; $i<$max_post; $i++){
            $coverPost=$main_post[$i]->getMedia('cover');
            if (isset($coverPost[0])) {
                foreach ($coverPost as $c) {
                    $url = $c->getUrl();
                    $coverPost_urls[] = $url;
                }
            }
        }
        

        return view('index',[
            'main_post' => $main_post,
            'menu_list' => $menu_list,
            'template_data' => $template_data,
            'menu_content_list' => $menu_content_list,
            'coverPost_urls' => $coverPost_urls,
            'dataEtkinlik' => $dataEtkinlik,
            
        ]);

    }



    public function listByCategory($category_slug=null, $slug=null)
    {

        $main_post = $this->getMain();
        $menu_list = $this->getMenus();
        $menu_content_list = $this->getMenuContent();
        $template_data = $this->getTemplates();
        
        $category_id = $this->getId($slug);
        $category=$this->getCategory($category_id);






        return view('listByCategory',[
            'main_post' => $main_post,
            'menu_list' => $menu_list,
            'menu_content_list' => $menu_content_list,
            'template_data' => $template_data,
            'category' => $category,
            
        ]);

    }



    function getMenus()
    {
        $query = Menu::get();
        return $query;
    }

    function getTemplates()
    {
        $query = ChoiceOfTemplate::first();
        return $query;
    }

    function getMenuContent()
    {
        $query = MenuContent::where('enabled', true);
        $query->orderBy('id', 'ASC');
        return $query->get();
    }



    function getMain()
    {
        $query = Main::where('enabled', true);
        $query->orderBy('id', 'ASC');
        return $query->get();
    }


    function getCategory($category_id)
    {
        $query = MenuContent::where('id', $category_id);
        $query->orderBy('id', 'ASC');
        return $query->first();
    }


    function getEtkinlik()
    {
        $query = EventCalendar::where('enabled', true);

        $query->orderBy('id', 'ASC');

        return $query->get();



    }
    
    

    function getId($text)
    {
        $texts = explode('-', $text);

        return $texts[sizeof($texts) - 1];
    }

    function isAdmin(): bool
    {
        //$admin = isset($this->user) ? $this->user->roles()->where('name', 'Administrator')->first() : null;

        //return $admin != null;
    }



   


}
