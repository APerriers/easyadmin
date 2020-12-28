define(["jquery", "easy-admin"], function ($, ea) {

    var init = {
        table_elem: '#currentTable',
        table_render_id: 'currentTableRenderId',
        index_url: 'news.details/index',
        add_url: 'news.details/add',
        edit_url: 'news.details/edit',
        delete_url: 'news.details/delete',
        export_url: 'news.details/export',
        modify_url: 'news.details/modify',
    };

    var Controller = {

        index: function () {
            ea.table.render({
                init: init,
                cols: [[
                    {type: 'checkbox'},                    {field: 'id', title: 'id'},                    {field: 'cate_id', title: '分类ID'},                    {field: 'title', title: '新闻名称'},                    {field: 'sort', title: '排序', edit: 'text'},                    {field: 'status', title: '状态(1:禁用,2:启用)', templet: ea.table.switch},                    {field: 'remark', title: '备注说明', templet: ea.table.text},                    {field: 'create_time', title: '创建时间'},                    {width: 250, title: '操作', templet: ea.table.tool},
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