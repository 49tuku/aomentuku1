<?php

// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

return [
    //别名配置,别名只能是映射到控制器且访问时必须加上请求的方法
    '__alias__'   => [
    ],
    //变量规则
    '__pattern__' => [
    ],
//        域名绑定到模块
//        '__domain__'  => [
//            'admin' => 'admin',
//            'api'   => 'api',
//        ],
    'android'   => ['index/android',['method' => 'get']],
    'faq'   => ['index/faq',['method' => 'get']],
    'privacy'   => ['index/privacy',['method' => 'get']],
    'apps'   => ['index/apps',['method' => 'get']],
    'blog/:page'   => ['index/blog',['method' => 'get']],
    'blog'   => ['index/blog',['method' => 'get']],
    'bloginfo/:id'   => ['index/bloginfo',['method' => 'get']],
    'tag/:name'   => ['index/blog',['method' => 'get']],
];
