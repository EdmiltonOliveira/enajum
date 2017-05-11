module ApplicationHelper

  def bootstrap_class_for flash_type
  	puts "passou aqui 2"
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-success" }[flash_type] || flash_type.to_s
  end

  def flash_messages(opts = {})
  	puts "passou aqui"
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type.to_sym)} fade in") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
	end

	def pagination(data)
    sPrevious = '<i class="fa fa-arrow-left" aria-hidden="true"></i>'
    sNext     = '<i class="fa fa-arrow-right" aria-hidden="true"></i>'
    will_paginate(
    	@inscritos, :inner_window => 1, 
    	:outer_window => 0, 
    	previous_label: sPrevious.html_safe(), 
    	next_label: sNext.html_safe()
    )

	end

	def link_to_show(url, caption=false)
		if caption
			caption1='Visualizar' 
			caption2=''
		else
			caption2='Visualizar' 
			caption1=''
		end
		icon='<i class="fa fa-building-o" aria-hidden="true"></i> '+caption1
    link_to icon.html_safe(), url, data: { toggle: "tooltip", placement: "top"}, title: caption2, class: "btn btn-default btn-xs"
	end

	def link_to_edit(url, caption=false)
		if caption
			caption1='Editar' 
			caption2=''
		else
			caption2='Editar' 
			caption1=''
		end
		icon='<i class="fa fa-pencil-square-o" aria-hidden="true"></i> '+caption1
    link_to icon.html_safe(), url, data: { toggle: "tooltip", placement: "top"}, title: caption2, class: "btn btn-default btn-xs"
	end

	def link_to_destroy(url, caption=false)
		if caption
			caption1='Excluir' 
			caption2=''
		else
			caption2='Excluir' 
			caption1=''
		end
		icon='<i class="fa fa-trash-o" aria-hidden="true"></i> '+caption1
    link_to icon.html_safe(), url, method: :delete, data: { toggle: "tooltip", placement: "top", confirm: 'Confirmat a exclusão?' }, type: :submit, title: caption2, class: "btn btn-default btn-xs"
	end

end
