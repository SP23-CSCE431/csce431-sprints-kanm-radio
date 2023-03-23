# frozen_string_literal: true

class DjsController < ApplicationController
     before_action :set_dj, only: %i[show edit update destroy]

     # GET /djs or /djs.json
     def index
          @djs = Dj.all
     end

     # GET /djs/1 or /djs/1.json
     def show; end

     # GET /djs/new
     def new
          @dj = Dj.new
     end

     # GET /djs/1/edit
     def edit; end

     # POST /djs or /djs.json
     def create
          @dj = Dj.new(dj_params)

          respond_to do |format|
               if @dj.save
                    format.html { redirect_to djs_url, notice: 'Dj was successfully created.' }
                    format.json { render :show, status: :created, location: @dj }
               else
                    format.html { render :new, status: :unprocessable_entity }
                    format.json { render json: @dj.errors, status: :unprocessable_entity }
               end
          end
     end

     # PATCH/PUT /djs/1 or /djs/1.json
     def update
          respond_to do |format|
               if @dj.update(dj_params)
                    format.html { redirect_to djs_url, notice: 'Dj was successfully updated.' }
                    format.json { render :show, status: :ok, location: @dj }
               else
                    format.html { render :edit, status: :unprocessable_entity }
                    format.json { render json: @dj.errors, status: :unprocessable_entity }
               end
          end
     end

     # DELETE /djs/1 or /djs/1.json
     def destroy
          @dj.destroy

          respond_to do |format|
               format.html { redirect_to djs_url, notice: 'Dj has been successfully deleted.' }
               format.json { head :no_content }
          end
     end

     private

     # Use callbacks to share common setup or constraints between actions.
     def set_dj
          @dj = Dj.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def dj_params
          params.require(:dj).permit(:dj_id, :member_id, :speciality, :picture)
     end
end
