module MWebhooksHelper

    def set_cell_color(perc_opened)
        if perc_opened
            if perc_opened > 14
                return "green_3"
            elsif perc_opened > 12
                return "green_2"
            elsif perc_opened > 10
                return "green_1"
            elsif perc_opened > 8
                return "yellow"
            elsif perc_opened > 6
                return "neutral"
            elsif perc_opened > 4
                return "orange"
            elsif perc_opened > 2
                return "red_1"
            else
                return "red_2"
            end
        end
    end
    def set_cell_color_click(perc_opened)
        if perc_opened
            if perc_opened > 5
                return "green_3"
            elsif perc_opened > 4
                return "green_2"
            elsif perc_opened > 2.5
                return "green_1"
            elsif perc_opened > 2
                return "yellow"
            elsif perc_opened > 1.5
                return "neutral"
            elsif perc_opened > 1
                return "orange"
            elsif perc_opened > 0.5
                return "red_1"
            else
                return "red_2"
            end
        end
    end
    def set_cell_color_deliv(perc_opened)
        if perc_opened
            if perc_opened > 99.5
                return "green_3"
            elsif perc_opened > 99
                return "green_2"
            elsif perc_opened > 98
                return "green_1"
            elsif perc_opened > 97
                return "yellow"
            elsif perc_opened > 96
                return "neutral"
            elsif perc_opened > 95
                return "orange"
            elsif perc_opened > 94
                return "red_1"
            else
                return "red_2"
            end
        end
    end
    # End of Module
end
