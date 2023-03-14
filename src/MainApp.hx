package;
import haap.*;


class  MainApp  extends hxd.App {

    var infos:h2d.Text;
    var button:haap.Button;
    public var medias:haap.Medias;

    override  function  init() {

        hxd.Res.initEmbed();
        medias= new Medias();

        infos = new h2d.Text(hxd.res.DefaultFont.get());
        infos.text = "Hello";

        button = new haap.Button("BTN",50,20);
        button.x=100;
        button.y=100;
        button.action = function(){medias.startmedia();};

        s2d.scaleMode = Resize;
        s2d.addChild(infos); 
        s2d.addChild(button);       

    }

    function ok(){
        trace("ok");
    }

    override function update(dt:Float) {
        var w = hxd.Window.getInstance().width;
		var h = hxd.Window.getInstance().height;
        //infos.text="Size :"+w+" X "+h;
           
        
    }

    override function onResize() {
        super.onResize();
        var w = hxd.Window.getInstance().width;
		var h = hxd.Window.getInstance().height;
        infos.text="Size :"+w+" X "+h;
        
    }


    public static var inst : MainApp;

    static  function  main() {
        inst=new  MainApp();

    }
  }