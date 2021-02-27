#初期値
coin = 100
point = 0

while coin > 0
    puts "-----------------------"
    puts "残りコイン数:#{coin}枚"
    puts "合計獲得ポイント:#{point}ポイント"
    puts "何枚コインを入れますか？"
    puts "1(10コイン)2(30コイン)3(50コイン)4(やめる)"
    puts "-----------------------"
    
    select_coins = gets.to_i
    
    case select_coins
    
    when 1
        put_coins = 10
    when 2
        put_coins = 30
    when 3
        put_coins = 50
    else
        break
    end
    
    if coin < put_coins
        puts "コイン不足です！"
        break
    end

    puts "エンターを3回押してください！"
    puts "-----------------------"
    #位置関係の説明
    #| slot_no1 | slot_no4 | slot_no7 | 
    #| slot_no2 | slot_no5 | slot_no8 |
    #| slot_no3 | slot_no6 | slot_no9 |

    #1回目
    s = gets.to_i
    slot_no1 = rand(1..9)
    slot_no2 = rand(1..9)
    slot_no3 = rand(1..9)
    puts "|#{slot_no1}| | |"
    puts "|#{slot_no2}| | |"
    puts "|#{slot_no3}| | |"

    #2回目
    s = gets.to_i
    slot_no4 = rand(1..9)
    slot_no5 = rand(1..9)
    slot_no6 = rand(1..9)
    puts "|#{slot_no1}|#{slot_no4}| |"
    puts "|#{slot_no2}|#{slot_no5}| |"
    puts "|#{slot_no3}|#{slot_no6}| |"

    #3回目
    s = gets.to_i
    slot_no7 = rand(1..9)
    slot_no8 = rand(1..9)
    slot_no9 = rand(1..9)
    puts "|#{slot_no1}|#{slot_no4}|#{slot_no7}|"
    puts "|#{slot_no2}|#{slot_no5}|#{slot_no8}|"
    puts "|#{slot_no3}|#{slot_no6}|#{slot_no9}|"

    slot_display = [[slot_no1,slot_no2,slot_no3],[slot_no4,slot_no5,slot_no6],[slot_no7,slot_no8,slot_no9]]
    
    for num_ag in 0..2 do
        if slot_display[0][num_ag] == 7 && slot_display[1][num_ag] == 7 && slot_display[2][num_ag] == 7
            puts "横で7が揃いました！50ポイントゲットです！"
            point = point + 50
        else
            if slot_display[0][num_ag] == slot_display[1][num_ag] && slot_display[1][num_ag] == slot_display[2][num_ag]
                puts "横で同じ数字が揃いました！10ポイントゲットです！"
                point = point + 10
            end
        end
    end

    if slot_display[0][0] == 7 && slot_display[1][1] == 7 && slot_display[2][2] == 7
        puts "斜めで7が揃いました！50ポイントゲットです！"
        point = point + 50
    else
        if slot_display[0][0] == slot_display[1][1] && slot_display[1][1] == slot_display[2][2]
            puts "斜めで同じ数字が揃いました！10ポイントゲットです！"
            point = point + 10
        end
    end
    
    if slot_display[0][2] == 7 && slot_display[1][1] == 7 && slot_display[2][0] == 7
        puts "斜めで7が揃いました！50ポイントゲットです！"
        point = point + 50
    else
        if slot_display[0][2] == slot_display[1][1] && slot_display[1][1] == slot_display[2][0]
            puts "斜めで同じ数字が揃いました！10ポイントゲットです！"
            point = point + 10
        end
    end

    coin = coin - put_coins

end

puts "またチャレンジしてね！"