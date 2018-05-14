class RegisterController < ApplicationController


  def show
    render json: Register.where(idhome: params[:idhome]).limit(params[:limit])
  end

  def send1
    idhome = params_send_1[:idhome]
    var_1 = params_send_1[:var_1]
    registro = Register.new
    registro.idhome = idhome
    registro.var_1 = var_1
    if registro.save
      render json: registro
    else
      render json: "Error: Couldn't response"
    end
  end

  def send2
    idhome = params_send_2[:idhome]
    var_1 = params_send_2[:var_1]
    var_2 = params_send_2[:var_2]
    registro = Register.new
    registro.idhome = idhome
    registro.var_1 = var_1
    registro.var_2 = var_2
    if registro.save
      render json: registro
    else
      render json: "Error: Couldn't response"
    end
  end

  def send3
    idhome = params_send_3[:idhome]
    var_1 = params_send_3[:var_1]
    var_2 = params_send_3[:var_2]
    var_3 = params_send_3[:var_3]
    registro = Register.new
    registro.idhome = idhome
    registro.var_1 = var_1
    registro.var_2 = var_2
    registro.var_3 = var_3
    if registro.save
      render json: registro
    else
      render json: "Error: Couldn't response"
    end
  end

  private

  def params_send_1
    params.permit(:idhome, :var_1)
  end

  def params_send_2
    params.permit(:idhome, :var_1, :var_2)
  end

  def params_send_3
    params.permit(:idhome, :var_1, :var_2, :var_3)
  end
end
