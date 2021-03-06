﻿/**
 * date:2020/02/27
 * author:Mr.Chung
 * version:2.0
 * description:layuimini 主体框架扩展
 */
layui.define(["jquery", "layer", 'form', 'table', 'tablePlug', 'treetable'], function (exports) {
    var $ = layui.jquery,
        form = layui.form,
        layer = layui.layer,
        treetable = layui.treetable,
        tablePlug = layui.tablePlug,
        table = layui.table;

    var obj = {
        //table渲染封装
        rendertable: function (options) {
            var defaults = {
                elem: '#currentTableId',//主键
                toolbar: '#toolbarDemo',//工具栏
                cellMinWidth: 80,  //全局定义常规单元格的最小宽度，layui 2.2.1 新增
                defaultToolbar: ['filter', 'exports', 'print'],//默认工具栏
                method: 'get',//请求方法
                limit: 10,//每页数据 默认
                height: 'full-150',
                page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                    layout: ['skip', 'prev', 'page', 'next','count'] //自定义分页布局
                    //,curr: 2 //设定初始在第 5 页
                    , groups: 3 //只显示 1 个连续页码
                    , first: false //不显示首页
                    , last: false //不显示尾页
                },
                smartReloadModel: true, // 是否开启智能reload的模式
                request: {
                    pageName: 'page' //页码的参数名称，默认：page
                    , limitName: 'rows' //每页数据量的参数名，默认：limit
                },
                done: function (res, curr, count) { // 使用自定义参数hideAlways隐藏
                    //$(".layui-table-box").find("[data-field='F_Id']").css("display", "none");
                }
            };
            var options = $.extend(defaults, options);
           return table.render(options);
        },
        //tabletree渲染封装
        rendertreetable: function (options) {
            //样式不协调，先不加
            //layer.load(2);
            var defaults = {
                elem: '#currentTableId',//主键
                toolbar: '#toolbarDemo',//工具栏
                treeColIndex: 1,	//树形图标显示在第几列
                treeSpid: '0',		//最上级的父级id
                treeIdName: 'F_Id',	//id字段的名称
                treePidName: 'F_ParentId',	//父级节点字段
                height: 'full-145',
                method: 'get',//请求方法
                smartReloadModel: true, // 是否开启智能reload的模式
                page: false,
                icon: false,             
                done: function () {
                    //$(".layui-table-box").find("[data-field='F_Id']").css("display", "none");
                    //关闭加载
                    //layer.closeAll('loading');
                }
            };
            var options = $.extend(defaults, options);
            return treetable.render(options);
        },
        //table刷新
        reloadtable: function (options) {
            var defaults = {
                elem: 'currentTableId',//主键
                page: true,//分页参数
                curr: 1,//当前页
                where: {}
            };
            var options = $.extend(defaults, options);
            if (options.page) {
                //执行搜索重载
                table.reload(options.elem, {
                    page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                        layout: ['skip', 'prev', 'page', 'next', 'count'] //自定义分页布局
                        //,curr: 2 //设定初始在第 5 页
                        , groups: 3 //只显示 1 个连续页码
                        , first: false //不显示首页
                        , last: false, //不显示尾页
                        curr: options.curr
                    }
                    , where: options.where
                }, 'data');
            }
            else {
                //执行搜索重载
                table.reload(options.elem, {
                    where: options.where
                }, 'data');
            }

        },
        //msg
        modalMsg: function (content, type, close = false) {
            if (type != undefined) {
                var icon = 0;
                if (type == 'success') {
                    icon = 1;
                }
                if (type == 'error') {
                    icon = 2;
                }
                if (type == 'warning') {
                    icon = 7;
                }
                top.layer.msg(content, {
                    icon: icon, time: 1000, shift: 5,
                }, function () {
                    if (close) {
                        var index = parent.layer.getFrameIndex(window.name);
                        parent.layer.close(index);
                    }
                });
            } else {
                top.layer.msg(content);
            }
        },
        //alert
        modalAlert: function (content, type, close = false) {
            var icon = 0;
            if (type == 'success') {
                icon = 1;
            }
            if (type == 'error') {
                icon = 2;
            }
            if (type == 'warning') {
                icon = 7;
            }
            top.layer.alert(content, {
                icon: icon,
                title: "系统提示",
                btn: ['确认'],
                btnclass: ['btn btn-primary'],
                yes: function (index) {
                    if (close) {
                        var pindex = parent.layer.getFrameIndex(window.name);
                        parent.layer.close(pindex);
                        top.layer.close(index);
                    }
                    else {
                        top.layer.close(index);
                    }
                }
            });
        },
        //界面关闭
        modalClose: function () {
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            var $IsdialogClose = top.$("#layui-layer" + index).find('.layui-layer-btn').find("#IsdialogClose");
            var IsClose = $IsdialogClose.is(":checked");
            if ($IsdialogClose.length == 0) {
                IsClose = true;
            }
            if (IsClose) {
                parent.layer.close(index);
            } else {
                location.reload();
            }
        },
        //创建界面
        modalOpen: function (options) {
            var defaults = {
                title: '系统窗口',
                width: "100px",
                height: "100px",
                url: '',
                shade: 0.3,
                //btn: ['确认', '关闭'],
                //btnclass: ['btn btn-primary', 'btn btn-danger'],
                //callBack: null,
                end: null,
            };
            var options = $.extend(defaults, options);
            var _width = top.$(window).width() > parseInt(options.width.replace('px', '')) ? options.width : top.$(window).width() - 20 + 'px';
            var _height = top.$(window).height() > parseInt(options.height.replace('px', '')) ? options.height : top.$(window).height() - 20 + 'px';
            layer.open({
                type: 2,
                shade: options.shade,
                title: options.title,
                fix: false,
                area: [_width, _height],
                content: options.url,
                //btn: options.btn,
                //btnclass: options.btnclass,
                //yes: function (index) {
                //    if (!!options.callBack) {
                //        options.callBack(index)
                //    }
                //}, cancel: function () {
                //    return true;
                //},
                end: function () {
                    if (!!options.end) {
                        options.end();
                    }
                }
            });
        },
        //表单提交
        submitForm: function (options) {
            var defaults = {
                url: "",
                param: [],
                success: null,
                close: true
            };
            var options = $.extend(defaults, options);
            window.setTimeout(function () {
                if ($('[name=__RequestVerificationToken]').length > 0) {
                    options.param["__RequestVerificationToken"] = $('[name=__RequestVerificationToken]').val();
                }
                var index = parent.layer.load(0, {
                    shade: [0.5, '#000'], //0.1透明度的背景
                });
                $.ajax({
                    url: options.url,
                    data: options.param,
                    type: "post",
                    dataType: "json",
                    success: function (data) {
                        if (data.state == "success") {
                            options.success(data);
                            obj.modalMsg(data.message, data.state);
                            if (options.close) {
                                obj.modalClose();
                            }
                        } else {
                            obj.modalAlert(data.message, data.state);
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        parent.layer.close(index);
                        obj.modalAlert(errorThrown, "error");
                    },
                    beforeSend: function () {
                    },
                    complete: function () {
                        parent.layer.close(index);
                    }
                });
                return false;
            }, 500);
        },
        //二次确认框
        modalConfirm: function (content, callBack) {
            top.layer.confirm(content, {
                icon: "fa-exclamation-circle",
                title: "系统提示",
                btn: ['确认', '取消'],
                btnclass: ['btn btn-primary', 'btn btn-danger'],
            }, function () {
                callBack(true);
            }, function () {
                callBack(false)
            });
        },
        //文档弹窗
        modalPrompt: function (type, title, callBack) {
            if (type < 0 || type > 3) {
                type = 0;
            }
            top.layer.prompt({
                formType: type,
                value: '',
                title: title,
                btn: ['确认', '取消'],
                btnclass: ['btn btn-primary', 'btn btn-danger'],
            }, function (value, index, elem) {
                top.layer.close(index);
                callBack(true, value);
            });
        },
        //删除
        deleteForm: function (options) {
            var defaults = {
                prompt: "注：您确定要删除该项数据吗？",
                url: "",
                param: [],
                success: null,
                close: false
            };
            var options = $.extend(defaults, options);
            if ($('[name=__RequestVerificationToken]').length > 0) {
                options.param["__RequestVerificationToken"] = $('[name=__RequestVerificationToken]').val();
            }
            obj.modalConfirm(options.prompt, function (r) {
                if (r) {
                    var index = parent.layer.load(0, {
                        shade: [0.5, '#000'], //0.1透明度的背景
                    });
                    window.setTimeout(function () {
                        $.ajax({
                            url: options.url,
                            data: options.param,
                            type: "post",
                            dataType: "json",
                            success: function (data) {
                                if (data.state == "success") {
                                    options.success(data);
                                    obj.modalMsg(data.message, data.state);
                                    if (options.close) {
                                        obj.modalClose();
                                    }
                                } else {
                                    obj.modalAlert(data.message, data.state);
                                }
                            },
                            error: function (XMLHttpRequest, textStatus, errorThrown) {
                                parent.layer.close(index);
                                obj.modalMsg(errorThrown, "error");
                            },
                            beforeSend: function () {
                            },
                            complete: function () {
                                parent.layer.close(index);
                            }
                        });
                    }, 500);
                }
            });

        },
        //post提交
        submitPost: function (options) {
            var defaults = {
                prompt: options.title,
                url: "",
                param: [],
                success: null,
                close: false
            };
            var options = $.extend(defaults, options);
            if ($('[name=__RequestVerificationToken]').length > 0) {
                options.param["__RequestVerificationToken"] = $('[name=__RequestVerificationToken]').val();
            }
            obj.modalConfirm(options.prompt, function (r) {
                if (r) {
                    var index = parent.layer.load(0, {
                        shade: [0.5, '#000'], //0.1透明度的背景
                    });
                    window.setTimeout(function () {
                        $.ajax({
                            url: options.url,
                            data: options.param,
                            type: "post",
                            dataType: "json",
                            success: function (data) {
                                if (data.state == "success") {
                                    options.success(data);
                                    obj.modalMsg(data.message, data.state);
                                    if (options.close) {
                                        obj.modalClose();
                                    }
                                } else {
                                    obj.modalAlert(data.message, data.state);
                                }
       
                            },
                            error: function (XMLHttpRequest, textStatus, errorThrown) {
                                parent.layer.close(index);
                                obj.modalMsg(errorThrown, "error");
                            },
                            beforeSend: function () {
                            },
                            complete: function () {
                                parent.layer.close(index);
                            }
                        });
                    }, 500);
                }
                else {
                    layer.close(index);
                }
            });

        },
        //Form序列化方法
        val: function (filter, formdate){
            var element = $('div[lay-filter=' + filter + ']');
            if (!!formdate) {
                for (var key in formdate) {
                    var $id = element.find('#' + key);
                    var value = $.trim(formdate[key]).replace(/&nbsp;/g, '');
                    var type = $id.attr('type');
                    if ($id.hasClass("select2-hidden-accessible")) {
                        type = "select";
                    }
                    switch (type) {
                        case "checkbox":
                            if (value == "true") {
                                $id.attr("checked", 'checked');
                            } else {
                                $id.removeAttr("checked");
                            }
                            break;
                        case "select":
                            $id.val(value).trigger("change");
                            break;
                        default:
                            $id.val(value);
                            break;
                    }
                };
                return false;
            }
            var postdata = {};
            element.find('input,select,textarea').each(function (r) {
                var $this = $(this);
                var id = $this.attr('id');
                var type = $this.attr('type');
                switch (type) {
                    case "checkbox":
                        postdata[id] = $this.is(":checked");
                        break;
                    case "radio":
                        postdata[id] = $this.is(":checked");
                        break;
                    default:
                        var value = $this.val() == "" ? "&nbsp;" : $this.val();
                        if (!$.request("keyValue")) {
                            value = value.replace(/&nbsp;/g, '');
                        }
                        postdata[id] = value;
                        break;
                }
            });
            if ($('[name=__RequestVerificationToken]').length > 0) {
                postdata["__RequestVerificationToken"] = $('[name=__RequestVerificationToken]').val();
            }
            return postdata;
        },
        //父窗体刷新（按钮刷新）
        parentreload: function (filter) {
            parent.$('button[lay-filter="' + filter+'"]').click();//按钮刷新
        },
        //当前页刷新（按钮刷新）
        reload: function (filter) {
            $('button[lay-filter="' + filter + '"]').click();//按钮刷新
        },
        //下载方法
        download : function (url, data, method) {
            if (url && data) {
                data = typeof data == 'string' ? data : jQuery.param(data);
                var inputs = '';
                $.each(data.split('&'), function () {
                    var pair = this.split('=');
                    inputs += '<input type="hidden" name="' + pair[0] + '" value="' + pair[1] + '" />';
                });
                $('<form action="' + url + '" method="' + (method || 'post') + '">' + inputs + '</form>').appendTo('body').submit().remove();
            };
        },
        //设置Form只读
        setReadOnly: function (filter) {
            var readForm = layui.$('[lay-filter="' + filter + '"]');
            readForm.find('input,textarea,select').prop('disabled', true);
            readForm.find('.layui-layedit iframe').contents().find('body').prop('contenteditable', false);
        },
        //权限按钮
        authorizeButton : function (id) {
            var moduleId = top.$(".layui-tab-title>.layui-this").attr("lay-id");
            //var moduleId = top.$("layuiminiTabInfo").attr("id").substr(6);
            var dataJson = top.clients.authorizeButton[moduleId];
            var $element = $('#' + id);
            $element.find('button[authorize=yes]').attr('authorize', 'no');
            if (dataJson != undefined) {
                $.each(dataJson, function (i) {
                    $element.find("#" + dataJson[i].F_EnCode).attr('authorize', 'yes');
                });
            }
            $element.find("[authorize=no]").parents('button').prev('.split').remove();
            $element.find("[authorize=no]").parents('button').remove();
            $element.find('[authorize=no]').remove();
        },
    }
    exports("common", obj);
});