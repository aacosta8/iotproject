class SwitchController < ApplicationController

  def putswitch

    estado = Switch.find_by(idhome: params[:idhome])

    if estado == nil
      switch = Switch.create(idhome: params[:idhome], var_1: params[:state])
      render json: switch
    else
      estado.update!(var_1: params[:state])
      # raise "entra"
      render json: estado
    end

  end

  def getswitch
    render json: Switch.find_by(idhome: params[:idhome]).var_1
  end
end
