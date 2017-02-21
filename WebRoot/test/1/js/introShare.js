/*
 * Vision:1.0.0
 * Create:wufengjie
 * @onBridgeReady()
 */
 var mainTitle = "1.1跨年产品粉丝节—让天下没有被埋没的好产品",
     mainDesc = "i代言携手京东金融推出的第一个产品轻众筹狂欢节！让你找到天使用户。",
     mainURL = "http://www.idaiyan.cn/act1dot1/index/",
	 mainImgUrl = "http://www.idaiyan.cn/static/modules/extension/img/intro_apply/logo11.jpg";

function onBridgeReady() {
   

    //转发朋友圈
    WeixinJSBridge.on("menu:share:timeline", function(e) {

        var data = {
            img_url: mainImgUrl,
            img_width: "120",
            img_height: "120",
            link: mainURL,
            //desc这个属性要加上，虽然不会显示，但是不加暂时会导致无法转发至朋友圈，
            desc: mainDesc,
            title: mainTitle
        };

        WeixinJSBridge.invoke("shareTimeline", data, function(res) {

            WeixinJSBridge.log(res.err_msg)
        });
    });
    //同步到微博
    WeixinJSBridge.on("menu:share:weibo", function() {
        WeixinJSBridge.invoke("shareWeibo", {
            "content": mainDesc,
            "url": mainURL
        }, function(res) {
            WeixinJSBridge.log(res.err_msg);
        });
    });
    //分享给朋友
    WeixinJSBridge.on('menu:share:appmessage', function(argv) {

        WeixinJSBridge.invoke("sendAppMessage", {
            img_url: mainImgUrl,
            img_width: "120",
            img_height: "120",
            link: mainURL,
            desc: mainDesc,
            title: mainTitle
        }, function(res) {
            WeixinJSBridge.log(res.err_msg)
        });
    });
};

//执行
document.addEventListener('WeixinJSBridgeReady', function() {
    onBridgeReady();
});