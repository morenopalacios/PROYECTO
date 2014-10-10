class ActionCorreo < ActionMailer::Base
  default from: "wdrojas8@gmail.com"

  def bienvenido_email(accidente)
    
     @accidente = accidente
     #@accidente = Accidente.find(1)
    #@user.created_at = '2014-10-06'
    
    attachments["inicio.png"] = File.read("#{Rails.root}/public/inicio.png") 
      
    email_with_name = "#{@accidente.funcionario_id} <#{@accidente.email_sede_principal}>"

  	mail(to: email_with_name, 
  		subject: 'Software Adminstrativo de Novedad Ocupacional')

    end

end
