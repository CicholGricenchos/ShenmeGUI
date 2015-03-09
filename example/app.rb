require '../lib/shenmegui'

ShenmeGUI.app do
  body do

    @b = button 'button1'
    @b.onclick do
      @b.value = "clicked"
      @text.value = "ok"
    end

    @s = stack do 
      but = button 'change background'
      but.onclick do
        @s.style = "background-color: #ccc"
      end
      @text = textarea 'default'
      @text.onblur do
        this.value = "blur"
      end
      @text.onfocus do 
        this.value = "focus"
      end
    end

    @i = image "http://7jpqbr.com1.z0.glb.clouddn.com/bw-2014-06-19.jpg"
    @src = textline @i.src
    @src.onchange do
      @i.src = @src.value
    end

    @t = textline 'textline'
    @t.oninput do
      @b.value = this.value
    end

  end
end

ShenmeGUI::Server.start!