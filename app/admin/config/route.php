<?php
// +----------------------------------------------------------------------
// | 路由设置
// +----------------------------------------------------------------------

return [

    // 路由中间件
    'middleware' => [
        // 后台视图初始化
        \app\admin\middleware\ViewInit::class,
    ],
];