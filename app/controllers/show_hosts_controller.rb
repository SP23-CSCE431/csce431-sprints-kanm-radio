# frozen_string_literal: true

class ShowHostsController < ApplicationController
     before_action :set_show_host, only: %i[show edit update destroy]

     # GET /show_hosts or /show_hosts.json
     def index
          @show_hosts = ShowHost.all
     end

     # GET /show_hosts/1 or /show_hosts/1.json
     def show; end

     # GET /show_hosts/new
     def new
          @show_host = ShowHost.new
     end

     # GET /show_hosts/1/edit
     def edit; end

     # POST /show_hosts or /show_hosts.json
     def create
          @show_host = ShowHost.new(show_host_params)

          respond_to do |format|
               if @show_host.save
                    format.html { redirect_to show_hosts_path, notice: 'Show host was successfully created.' }
                    format.json { render :show, status: :created, location: @show_host }
               else
                    format.html { render :new, status: :unprocessable_entity }
                    format.json { render json: @show_host.errors, status: :unprocessable_entity }
               end
          end
     end

     # PATCH/PUT /show_hosts/1 or /show_hosts/1.json
     def update
          respond_to do |format|
               if @show_host.update(show_host_params)
                    format.html { redirect_to show_hosts_path, notice: 'Show host was successfully updated.' }
                    format.json { render :show, status: :ok, location: @show_host }
               else
                    format.html { render :edit, status: :unprocessable_entity }
                    format.json { render json: @show_host.errors, status: :unprocessable_entity }
               end
          end
     end

     def delete
          @show_host = ShowHost.find(params[:id])
     end

     def destroy
          @show_host = ShowHost.find(params[:id])
          @show_host.destroy
          redirect_to show_hosts_path, notice: 'Show host has been successfully deleted.'
     end

     private

     # Use callbacks to share common setup or constraints between actions.
     def set_show_host
          @show_host = ShowHost.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def show_host_params
          params.require(:show_host).permit(:show_id, :member_id)
     end
end
