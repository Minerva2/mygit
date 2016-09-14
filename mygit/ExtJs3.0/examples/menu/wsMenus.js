/*!
 * Ext JS Library 3.0.0
 * Copyright(c) 2006-2009 Ext JS, LLC
 * ����
 * http://www.lgws.com.cn
 */
Ext.onReady(function(){
    Ext.QuickTips.init();

   
    var store = new Ext.data.ArrayStore({
        fields: ['abbr', 'state'],
        data : Ext.exampledata.states 
    });

    
    var tb = new Ext.Toolbar();
    tb.render('toolbar');
//�����Ӳ˵����޸�ʱͨ��ѭ����丳ֵ
var aMenu = new Ext.menu.Menu();
    for (var i = 0; i < 5; ++i){
        aMenu.add({
            text: 'aaa ' + (i + 1)
        });
    }
    var dMenu = new Ext.menu.Menu();
    for (var i = 0; i < 8; ++i){
        dMenu.add({
            text: 'ddd ' + (i + 1)
        });
    }
    var scrollMenu = new Ext.menu.Menu();
    for (var i = 0; i < 6; ++i){
        scrollMenu.add({
            text: 'Item ' + (i + 1)
        });
    }
	
//�����˵���ʱ��Ϊ�˰���Ȩ�޷����ʹ�ù��ܣ�ÿ��items�е�Ԫ�ض�Ҫ��id��ֵ	//text�˵����ƣ�handler�����¼����ܣ�iconClsѡ��ͼ�깦�ܣ�menu�Ӳ˵�������tooltip�˵�˵�����ָ�����'-'��ʾ
  //  bmenu.items.get('ableMe').disable();
	//amenu.items.get('disableMe').disable();
  
    // scrollable menu
	  
	
	  tb.add(
			 new Ext.Toolbar.SplitButton({icon: 'preview.png',cls: 'x-btn-text-icon',text: 'ϵͳ����',menu: aMenu}),'-',
			 new Ext.Toolbar.SplitButton({icon: 'preview.png',cls: 'x-btn-text-icon',text: '��������',menu: dMenu}),'-',
			 new Ext.Toolbar.SplitButton({icon: 'preview.png',cls: 'x-btn-text-icon',text: '��Ա����',menu: scrollMenu}),'-'
			);

    tb.doLayout();

    // functions to display feedback
    function onButtonClick(btn){
        Ext.example.msg('Button Click','You clicked the "{0}" button.', btn.text);
    }

    function onItemClick(item){
        Ext.example.msg('Menu Click', 'You clicked the "{0}" menu item.', item.text);
    }

    function onItemCheck(item, checked){
        Ext.example.msg('Item Check', 'You {1} the "{0}" menu item.', item.text, checked ? 'checked' : 'unchecked');
    }

    function onItemToggle(item, pressed){
        Ext.example.msg('Button Toggled', 'Button "{0}" was toggled to {1}.', item.text, pressed);
    }

});