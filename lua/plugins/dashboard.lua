--NOTE: Plugin para crear un dashboard
--https://github.com/goolord/alpha-nvim
return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    math.randomseed(os.time())

    local function pick_color()
      local colors = { "String", "Identifier", "Keyword", "Number" }
      return colors[math.random(#colors)]
    end

    local logo = {
      "                                 @@@@@@@@@@@@@@@@                             ",
      "                             @@@@@              @@@@@                         ",
      "                           @@@:                     @@@                       ",
      "                         @@@                          @@@                  *@ ",
      "                       @@@                              @@@             @+@::@",
      "                      @@@                                 @@           @@++@@ ",
      "                     @@:                                   @@       @@::@@@@  ",
      "                    @@*                                     @@    @@+@@       ",
      "                    @@                                      @@@@@*#@-         ",
      "                   @@                                        @@*@@            ",
      "                   @@      ::=+:-                ::-*-:.     @@               ",
      "                   @@     :@    @:.             -@=   @@:    @@.              ",
      "                   @@    :@      @:             -@     @:    @@.              ",
      "                   @@    :-@    @#:             :@     @:    @@               ",
      "                   @@      :#@@@-.               :-@@@::     @@               ",
      "                    @@               +@@@@@@@+              @@%               ",
      "                    @@@     @    @@-:@:::@:::@:-@@    @     @@                ",
      "                     @@*     %@@@@@@@@@@@@@@@@@@@@@@@%     @@                 ",
      "                      @@@         @@*@:::@:::@*@@        =@@                  ",
      "                       +@@               =              @@@                   ",
      "                        @@#@@@=                    -@@@#@-                    ",
      "                       @@:+..::+:.*@@@@@@+..+@@@-.:-++=.=@                    ",
      "                       @@...+++..++++=:@@..:-@.*++..:+.:+@@                   ",
      "                       @@==++-.=+++++.@*@@+*-*@..:*++=..-@%                   ",
      "                      @#@#@#@@@%.:.+*+@..@.:..@...#@@@@=@@                    ",
      "          @#@%     @@+%@@*%=====%++*@@@++@+-..@=+*+===+=*@                    ",
      "    %@@+@@@%@ ..*@-:@@ @+#==*=*==#+=%*@..@+++.@==+=+*=*+=@@                   ",
      "   @++@  %@@ @++@@@   @@#=+%%=%%==+*=+@@@@++:-@#+=+*%+#%==@@                  ",
      "  @++@@@-@::@:@**@    @%==+==*=====#=##=#@..+:@%=====#+=+=*@                  ",
      "   @++@:@ @@@@@      @@@@@@+%=#=#===+=+#+*#@@+++==%=#=%@@@@@@                 ",
      "   @+*@@:@@@::@ #@@    @ @@+=%==#*+=#++%*+*#*=+=#+*+=#=@@.+                   ",
      " :@+@@@ @:#@   @@*     @+ @@@%*#==+=#=%=====+++=*==%@@@@.@@                   ",
      "  @++@@+=*@@ @@*@     @ #  @@ @@# @@@*##*=%*%=+@@@@@ @= @  @                  ",
      "   %@@ @@+++++@@       @  @  @ @@ @@ @@=*=#+@@@@ @@ @ .# .+                   ",
      "         @@@              .+  @@@@@=@@@@@@@@ @@@@@  @                         ",
    }
    dashboard.section.header.val = logo
    dashboard.section.header.opts.hl = pick_color()
    dashboard.section.buttons.val = {
      dashboard.button("q", "󰩈  Quit", "<cmd>qa!<cr>"),
      dashboard.button("p","  Projects", "<cmd>Telescope projects<cr>"),
      dashboard.button("f","  Files", "<cmd>lua require('telescope').extensions.file_browser.file_browser({ path = '%:h:p', select_buffer = true })<cr>"),
    }
    alpha.setup(dashboard.opts)
  end
};
