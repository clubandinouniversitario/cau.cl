module Admin
  class PagesController < AdminController
    before_action :set_page, only: [:edit, :update, :destroy]

    def index
      @pages = Page.all
    end

    def edit
    end

    def new
      @page = Page.new
    end

    def create
      @page = Page.new(page_params)
      if @page.save
        redirect_to admin_pages_path, notice: I18n.t('admin.page.created')
      else
        puts ap @page.errors.messages if @page.errors
        render :new
      end
    end

    def update
      if @page.update(page_params)
        redirect_to admin_pages_path, notice: I18n.t('admin.page.updated')
      else
        render :edit
      end
    end

    def destroy
      @page.destroy
      redirect_to admin_pages_url, notice: I18n.t('admin.page.destroyed')
    end

    private

    def set_page
      @page = Page.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:title, :active, :content, :url, :deletable)
    end
  end
end
