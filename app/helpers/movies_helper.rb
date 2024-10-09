module MoviesHelper
    def sort_indicator(column)
        if params[:sort] == column
          params[:direction] == 'desc' ? '⬇️' : '⬆️'
        else
          ''
        end
      end

    def sorted_column_class(column)
        if params[:sort] == column
          direction = params[:direction] == 'desc' ? 'desc' : 'asc'
          "sorted-column #{direction}-sorted"
        else
          ""
        end
      end
    def toggle_direction(column)
        params[:sort] == column && params[:direction] == 'asc' ? 'desc' : 'asc'
      end
    end