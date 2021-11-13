SimpleForm.setup do |config|
  config.wrappers :default,
                  class: 'form-field',
                  hint_class: 'has-hint',
                  error_class: 'has-error' do |form|
    form.use :html5
    form.use :placeholder
    form.use :label_input
    form.use :error, wrap_with: { tag: 'span', class: 'error' }
    form.use :hint,  wrap_with: { tag: 'span', class: 'hint' }

    form.use :maxlength
    form.use :min_max
    form.use :readonly
    form.use :pattern
  end

  config.label_text = ->(label, _required, _explicit_label) { label.to_s }

  config.label_class = 'form-label'
  config.button_class = 'button'
  config.default_form_class = 'form'

  config.collection_wrapper_tag = 'div'
  config.collection_wrapper_class = 'radio-buttons'
  config.item_wrapper_tag = nil
  config.item_wrapper_class = 'radio'
  config.boolean_label_class = nil

  config.wrappers :floating_label,
                  tag: 'div',
                  class: 'floating-label',
                  error_class: 'error' do |field|
    field.use :html5
    field.use :input
    field.use :label
    field.use :error, wrap_with: { tag: 'span', class: 'error' }
    field.use :hint,  wrap_with: { tag: 'span', class: 'hint' }
  end

  config.wrappers :input_length,
                  tag: 'div',
                  class: 'form-field character-length-container',
                  error_class: 'error' do |field|
    field.use :html5
    field.use :label_input
    field.wrapper tag: 'div',
                  html: { 'data-target': 'character-limit.currentLength' },
                  class: 'character-length' do |length|
    end
    field.use :error, wrap_with: { tag: 'span', class: 'error' }
    field.use :hint,  wrap_with: { tag: 'span', class: 'hint' }
  end

  config.wrappers :checkbox,
                  tag: 'div',
                  class: 'form-field checkbox',
                  error_class: 'error' do |field|
    field.use :html5
    field.use :input
    field.wrapper tag: 'span' do |span|
      span.use :label_text
    end
    field.use :error, wrap_with: { tag: 'span', class: 'error' }
    field.use :hint,  wrap_with: { tag: 'span', class: 'hint' }
  end

  config.wrappers :switch,
                  tag: 'div',
                  class: 'form-field switch margin-null',
                  error_class: 'error' do |field|
    field.use :html5
    field.use :label_input
    field.use :error, wrap_with: { tag: 'span', class: 'error' }
    field.use :hint,  wrap_with: { tag: 'span', class: 'hint' }
  end

  config.wrappers :tags,
                  tag: 'div',
                  error_class: 'error' do |field|
    field.use :html5
    field.use :label
    field.wrapper tag: 'ul', html: { id: 'myTags' } do |list|
    end
    field.use :error, wrap_with: { tag: 'span', class: 'error' }
    field.use :hint,  wrap_with: { tag: 'span', class: 'hint' }
  end

  config.wrappers :select_group,
                  tag: 'div',
                  class: 'form-field select multiple-select',
                  error_class: 'error' do |field|
    field.use :html5
    field.use :label_input
    field.use :error, wrap_with: { tag: 'span', class: 'error' }
    field.use :hint,  wrap_with: { tag: 'span', class: 'hint' }
  end

  config.wrappers :image_selection,
                  tag: 'div',
                  class: 'form-field form-image-selection-group',
                  wrapper_html: { 'data-target': 'remove-for-attribute.label' },
                  error_class: 'error' do |field|
    field.use :html5
    field.use :label_input
    field.use :error, wrap_with: { tag: 'span', class: 'error' }
    field.use :hint,  wrap_with: { tag: 'span', class: 'hint' }
  end

  config.wrappers :radio,
                  tag: 'div',
                  class: 'form-field radio',
                  error_class: 'error' do |field|
    field.use :html5
    field.use :label
    field.use :input
    field.use :error, wrap_with: { tag: 'span', class: 'error' }
    field.use :hint,  wrap_with: { tag: 'span', class: 'hint' }
  end

  config.wrappers :radio_boxes,
                  tag: 'div',
                  class: 'form-field radio-boxes',
                  error_class: 'error' do |field|
    field.use :html5
    field.use :label
    field.use :input
    field.use :error, wrap_with: { tag: 'span', class: 'error' }
    field.use :hint,  wrap_with: { tag: 'span', class: 'hint' }
  end

  config.wrappers :radio_tabs,
                  tag: 'div',
                  class: 'form-field tabs',
                  error_class: 'error' do |field|
    field.use :input
    field.use :label
  end

  config.wrappers :file_upload,
                  tag: 'div',
                  class: 'form-field tabs',
                  error_class: 'error' do |field|
    field.wrapper tag: 'label' do |tag|
      tag.use :input
      tag.wrapper tag: 'span',
                  class: 'icon icon-before icon-upload icon-pink' do |span|
        span.use :label_text
      end
    end
  end
end
