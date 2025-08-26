function fish_greeting
    clear
    neofetch
end

# printf "%s@%s" ($USER) ($hostname)
# function fish_prompt
#     set stat $status
# 
#     if test $stat -eq 0
#         printf "%s%s " (set_color cyan) (prompt_pwd)
#         if test -d .git
#             set branch git rev-parse --abbrev-ref HEAD
#             printf "%s%s " (set_color brblue) ($branch)
#         end
#         printf "%s %s" (set_color green) (set_color normal)
#     else
#         printf "%s%s " (set_color cyan) (prompt_pwd)
#         if test -d .git
#             set branch git rev-parse --abbrev-ref HEAD
#             printf "%s%s " (set_color brblue) ($branch)
#         end
#         printf "%s[%s]  %s" (set_color red) (echo $stat) (set_color normal)
#     end
# end
function fish_prompt
    set stat $status

    set_color green
    echo -n $USER
    
    set_color normal
    echo -n " 󰣇 "
    
    set_color green
    echo -n $hostname
    
    set_color normal
    echo -n "  "
    
    set_color blue
    echo -n (prompt_pwd)
    
    # git rahhh
    if test -d .git
        set branch git rev-parse --abbrev-ref HEAD
        printf " %s %s%s " (set_color normal) (set_color yellow) ($branch)
    end

    if test $stat -ne 0
        set_color red
        printf " [%s]" $stat
    end
    
    set_color normal
    echo -e "\n "
end

function fish_right_prompt;
    
end

# colors
set -U fish_color_cwd         cyan
set -U fish_color_cwd_root    red

set -U fish_color_error       red
set -U fish_color_command     brcyan
set -U fish_color_keyword     brcyan

set -U fish_color_param       brblue
set -U fish_color_valid_path  brblue
set -U fish_color_quote       brblue

set -U fish_color_comment     brblack
set -U fish_color_operator    brblue
set -U fish_color_end         brwhite

set -U fish_color_autosuggestion 555

# abbrevations
abbr cls "clear"
abbr ls "ls -a"
abbr rm "rm -rf"
abbr mkdir "mkdir -p"
abbr nv "nvim"

bind \ek up-or-search
bind \ej down-or-search
bind \eh backward-char
bind \el forward-char

if status is-interactive; end
