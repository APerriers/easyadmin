define(["jquery", "easy-admin"], function ($, ea) {

    var init = {
        table_elem: '#currentTable',
        table_render_id: 'currentTableRenderId',
        index_url: 'news.cate/index',
        add_url: 'news.cate/add',
        edit_url: 'news.cate/edit',
        delete_url: 'news.cate/delete',
        export_url: 'news.cate/export',
        modify_url: 'news.cate/modify',
    };

    var Controller = {

        index: function () {
            ea.table.render({
                init: init,
                cols: [[
                    {type: 'checkbox'},                    {field: 'id', title: 'id'},                    {field: 'title', title: '分类名'},                    {field: 'sort', title: '排序', edit: 'text'},                    {field: 'status', title: '状态(1:禁用,2:启用)', templet: ea.table.switch},                    {field: 'remark', title: '备注说明', templet: ea.table.text},                    {field: 'create_time', title: '创建时间'},                    {width: 250, title: '操作', templet: ea.table.tool},
                ]],
            });

            ea.listen();
        },
        add: function () {
            ea.listen();
        },
        edit: function () {
            ea.listen();
        },
    };
    return Controller;
});