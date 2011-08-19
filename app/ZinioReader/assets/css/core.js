var FAQAccordian = new Class({
	/*
		[
			parent_string/obj,
			toggle_string,
			container_string
		],
		[
			toggle_string,
			container_string
		]
	*/
	initialize:function(primary,secondary){ window.addEvent('domready',this.Callbacks.domReady.bind(this,[primary,secondary]));	},
	Elements:{},
	Callbacks:
	{
		domReady:function(primary,secondary)
		{
			this.Strings = { primary:primary };
			if(secondary) this.Strings.secondary = secondary;
			
			if($type(this.Strings.primary[0])=='string') this.Elements.parent = $(this.Strings.primary[0]);
			else this.Elements.parent = this.Strings.primary[0];
			
			
			this.Elements.headers = this.Elements.parent.getElements(this.Strings.primary[1]);
			this.Elements.contents = this.Elements.parent.getElements(this.Strings.primary[2]);
			
			this.Elements.headers.each(function(el,index){
				el.addEvent('click',this.Callbacks.toggle.bindWithEvent(this,index));
				el.className = 'contracted';
				this.Elements.contents[index].style.display = 'none';
				
				if(this.Strings.secondary)
				{
					var t_array = $A(this.Strings.secondary);
					t_array.splice(0,0,this.Elements.contents[index]);
					new FAQAccordian(t_array); 
				}
			},this);
			
			this.expanded = null;
		},
		
		toggle:function(e,index)
		{
			e.preventDefault();
			// User is closing an open accordian
			if(index==this.expanded)
			{
				this.Elements.headers[index].className = 'contracted';
				this.Elements.contents[index].style.display = 'none';
				
				this.expanded=null;
				return;
			}
			// User is opening a new accordian, and needs to close the current one
			if(index!=this.expanded && this.expanded!=null)
			{
				this.Elements.headers[this.expanded].className = 'contracted';
				this.Elements.contents[this.expanded].style.display = 'none';
				
				this.Elements.headers[index].className = 'expanded';
				this.Elements.contents[index].style.display = 'block';
				
				new Fx.Scroll($(window),{ duration:500 }).toElement(this.Elements.headers[index]);
				
				this.expanded=index;
				return;
			}
			// User is opening first accordian
			if(this.expanded==null)
			{
				this.Elements.headers[index].className = 'expanded';
				this.Elements.contents[index].style.display = 'block';
				
				new Fx.Scroll($(window),{ duration:200 }).toElement(this.Elements.headers[index]);
				this.expanded=index;
			}
		}
	}
});
new FAQAccordian(['faq','h1 a','.faq_content'],['.sub_accordian h2','.sub_content']);