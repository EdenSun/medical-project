/*
 * File: app/view/LoginViewport.js
 *
 * This file was generated by Sencha Architect version 2.2.2.
 * http://www.sencha.com/products/architect/
 *
 * This file requires use of the Ext JS 4.2.x library, under independent license.
 * License of Sencha Architect does not include license for Ext JS 4.2.x. For more
 * details see http://www.sencha.com/license or contact license@sencha.com.
 *
 * This file will be auto-generated each and everytime you save your project.
 *
 * Do NOT hand edit this file.
 */

Ext.define('MedicalProject.view.LoginViewport', {
    extend: 'Ext.container.Viewport',

    layout: {
        align: 'center',
        pack: 'center',
        type: 'vbox'
    },

    initComponent: function() {
        var me = this;

        Ext.applyIf(me, {
            items: [
                {
                    xtype: 'form',
                    id:'loginForm',
                    width: 348,
                    layout: {
                        type: 'fit'
                    },
                    title: '管理员登录',
                    items: [
                        {
                            xtype: 'container',
                            padding: 15,
                            layout: {
                                type: 'anchor'
                            },
                            items: [
								/*{
								    xtype: 'combobox',
								    name:'userType',
                                    anchor: '100%',
								    fieldLabel: '用户类型',
								    displayField:'display',
								    valueField:'value',
								    queryMode: 'local',
								    store: Ext.create('Ext.data.Store', {
								        fields: ['display', 'value'],
								        data : [
								            {"display":"商户", "value":"2"},
								            {"display":"管理员", "value":"1"}
								        ]
								    })
								}, */
                                {
                                    xtype: 'textfield',
                                    name:'account',
                                    id:'accountTF',
                                    allowBlank: false,
                                    anchor: '100%',
                                    fieldLabel: '帐号'
                                },
                                {
                                    xtype: 'textfield',
                                    id:'passwordTf',
                                    submitValue:false,
                                    allowBlank: false,
                                    anchor: '100%',
                                    fieldLabel: '密码',
                                    inputType: 'password'
                                },
                                {
                                    xtype: 'container',
                                    layout: {
                                        align: 'stretch',
                                        pack: 'end',
                                        type: 'hbox'
                                    },
                                    items: [
                                        {
                                            xtype: 'button',
                                            width: 96,
                                            id:'loginBtn',
                                            text: '登录'
                                        }
                                    ]
                                }
                            ]
                        }
                    ]
                }
            ]
        });

        me.callParent(arguments);
        
        me.bindEvent();
        
        me.init();
    },
    bindEvent:function(){
    	Ext.getCmp('loginBtn').on('click',function(){
    		var loginForm = Ext.getCmp('loginForm');
    		if( loginForm.isValid() ){
    			loginForm.submit({
    				url:appContext + 'admin/auth/login.do',
    				method:'POST',
    				params: {
    					password: md5(Ext.getCmp('passwordTf').getValue())
            	    },
    				success:function(form,action){
    					var response = Ext.JSON.decode(action.response.responseText);
    					if( response.data ){
    						//login success
    						location = appContext + 'admin/main/main.jsp';
    					}else{
    						Ext.Msg.alert('提示','帐号或密码错误');
    					}
    				},
    				failure: function(form,action){
    					Ext.Msg.alert('错误',action.result.msg);
    				}
    			});
    		}
    		
    	});
    },
    init:function(){
    	
    }

});