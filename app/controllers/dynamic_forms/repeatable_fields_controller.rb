module DynamicForms
  class RepeatableFieldsController < ApplicationController
    def new
      @field_config = FieldConfig.find(params[:id])
      @form = DynamicForm.new(@field_config.form_config)
    end

    def delete
      @field_config = FieldConfig.find(params[:id])
      @repetition = params[:repetition]
    end
  end
end
