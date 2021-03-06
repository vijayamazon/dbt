with joined as (

    select *
    from {{ ref('stg_amazon_mws') }} m 
    left join {{ ref('stg_amazon_mws_order_items') }} i on m.id = i.order_id
    order by 1

),

asins as (
    
    select
        distinct asin
    from joined

), 

costs as (
    
    select
        asin,
        case when asin = 'B07VQBB9FY' then 37.46
            when asin = 'B07QZD95LK' then 33.95
            when asin = 'B07X3P1QFB' then 33.87
            when asin = 'B07QZT5TLK' then 33.75
            when asin = 'B07QJDLPZF' then 31.26
            when asin = 'B07VFKBVC9' then 30.02
            when asin = 'B07QY9WNV1' then 29.92
            when asin = 'B07QY9C8YD' then 29.92
            when asin = 'B07QZ4DK26' then 29.91
            when asin = 'B01GIIOP4Y' then 20.95
            when asin = 'B01GIIOP4Y' then 20.95
            when asin = 'B01M2Y1NN8' then 16.26
            when asin = 'B01M2Y1NN8' then 16.26
            when asin = 'B01GIDJU3U' then 16.12
            when asin = 'B01GIDJU3U' then 16.12
            when asin = 'B0751379Q9' then 15.64
            when asin = 'B076PT9MT8' then 15.44
            when asin = 'B071G8WTK9' then 15.39
            when asin = 'B071G8WTK9' then 15.39
            when asin = 'B013P4YVU2' then 14.99
            when asin = 'B013P4YVU2' then 14.99
            when asin = 'B074YXP8GX' then 14.75
            when asin = 'B074YXP8GX' then 14.75
            when asin = 'B074YQSX11' then 14.75
            when asin = 'B076PMSD72' then 14.72
            when asin = 'B07FF9TC1M' then 14.46
            when asin = 'B01M4R32QX' then 14.24
            when asin = 'B072N1T2RN' then 14.13
            when asin = 'B0786Q46VR' then 13.73
            when asin = 'B01M7XI35O' then 13.52
            when asin = 'B07WL7C1ZM' then 13.15
            when asin = 'B07KFQS6KF' then 13.13
            when asin = 'B072N28S7B' then 13.12
            when asin = 'B07X3N44TN' then 12.84
            when asin = 'B07BYQGCXX' then 12.77
            when asin = 'B076FCD2KM' then 12.54
            when asin = 'B07KFQVBT9' then 12.23
            when asin = 'B074YQSX11' then 11.79
            when asin = 'B013MRPPL6' then 11.79
            when asin = 'B013MRPPL6' then 11.79
            when asin = 'B07X3PZW8W' then 11.74
            when asin = 'B07J1YD6MY' then 11.32
            when asin = 'B07KFQ2463' then 11.26
            when asin = 'B071SH212S' then 11.05
            when asin = 'B071SH212S' then 11.05
            when asin = 'B0786NDJXX' then 10.41
            when asin = 'B07MFZTHSP' then 10.39
            when asin = 'B077J34GD4' then 10.04
            when asin = 'B07R1Z1WHD' then 9.97
            when asin = 'B07JCPKW1T' then 9.97
            when asin = 'B07JBP3151' then 9.97
            when asin = 'B077J7FGRF' then 9.82
            when asin = 'B07FFFBWFL' then 9.62
            when asin = 'B06VVJLSZR' then 9.09
            when asin = 'B07RVCMG6L' then 8.59
            when asin = 'B0797ZSZDW' then 8.1
            when asin = 'B07FL1PW5W' then 7.98
            when asin = 'B072KFZ9TQ' then 7.74
            when asin = 'B071W7HS67' then 7.73
            when asin = 'B071W7HS67' then 7.73
            when asin = 'B075L5HD6H' then 7.66
            when asin = 'B07FRRW4QC' then 7.59
            when asin = 'B07FRRW4QC' then 7.59
            when asin = 'B07MW8LSL9' then 7.01
            when asin = 'B07FN3PJTG' then 6.9
            when asin = 'B0786Q3BZ6' then 6.78
            when asin = 'B07KT6NWTW' then 6.69
            when asin = 'B07KTB9T7Z' then 6.62
            when asin = 'B07KT9QGXM' then 6.62
            when asin = 'B079KKM9BK' then 6.42
            when asin = 'B07KT8KJGL' then 6.37
            when asin = 'B07RXLQSDT' then 5.9
            when asin = 'B07G4MW7TH' then 4.94
            when asin = 'B07FRN1R39' then 4.34
            when asin = 'B07FN5G6QC' then 4.3
            when asin = 'B07H8R7DDM' then 4.09
            when asin = 'B07C1XXX78' then 4.06
            when asin = 'B07H8QV3DC' then 3.9
            when asin = 'B07G7BTTMC' then 3.78
            when asin = 'B07H8PQ8Z5' then 3.75
            when asin = 'B07G7CPQTM' then 3.66
            when asin = 'B07SPW6V2X' then 3.64
            when asin = 'B07FPPT9BT' then 3.11
            when asin = 'B07FPPT9BT' then 3.11
            when asin = 'B07FYTH417' then 3.07
            when asin = 'B07FRPTRPD' then 2.97
            when asin = 'B07FRPTRPD' then 2.97
            when asin = 'B07QZT2RTK' then 2.95
            when asin = 'B07NPW9HSR' then 2.29
            when asin = 'B01MUB7BUV' then 0.69
          else 0 end as cogs,
        case when asin = 'B072KFZ9TQ' then 5.8485
            when asin = 'B07QZT2RTK' then 4.4985
            when asin = 'B01M7XI35O' then 8.8485
            when asin = 'B01MUB7BUV' then 1.1985
            when asin = 'B01MUB7BUV' then 1.1985
            when asin = 'B07SPW6V2X' then 4.9485
            when asin = 'B077J7FGRF' then 5.85
            when asin = 'B0797ZSZDW' then 5.8485
            when asin = 'B07J1YD6MY' then 5.9985
            when asin = 'B06VVJLSZR' then 4.76
            when asin = 'B07FL1PW5W' then 5.8485
            when asin = 'B07JBP3151' then 5.9985
            when asin = 'B077J34GD4' then 4.76
            when asin = 'B07FFFBWFL' then 4.76
            when asin = 'B079KKM9BK' then 2.8455
            when asin = 'B076PT9MT8' then 8.8485
            when asin = 'B07JCPKW1T' then 5.9985
            when asin = 'B0786NDJXX' then 5.2485
            when asin = 'B013MRPPL6' then 7.4955
            when asin = 'B075L5HD6H' then 5.8485
            when asin = 'B07FF9TC1M' then 8.8485
            when asin = 'B076PMSD72' then 8.8485
            when asin = 'B076FCD2KM' then 5.8485
            when asin = 'B01M4R32QX' then 8.8485
            when asin = 'B0786Q3BZ6' then 4.0485
            when asin = 'B07FN5G6QC' then 4.35
            when asin = 'B01M2Y1NN8' then 7.4955
            when asin = 'B0751379Q9' then 7.4985
            when asin = 'B072N28S7B' then 7.4985
            when asin = 'B07BYQGCXX' then 8.85
            when asin = 'B071SH212S' then 4.3485
            when asin = 'B072N1T2RN' then 7.4445
            when asin = 'B071G8WTK9' then 5.9985
            when asin = 'B07KFQS6KF' then 5.9985
            when asin = 'B07FN3PJTG' then 4.35
            when asin = 'B07H8QV3DC' then 2.8455
            when asin = 'B07KFQVBT9' then 4.95
            when asin = 'B07H8R7DDM' then 2.8455
            when asin = 'B013P4YVU2' then 8.25
            when asin = 'B07NPW9HSR' then 4.0485
            when asin = 'B07G7BTTMC' then 3.3
            when asin = 'B01GIIOP4Y' then 7.4985
            when asin = 'B07FYTH417' then 3.3
            when asin = 'B0786Q46VR' then 5.9985
            when asin = 'B07KT6NWTW' then 3.3
            when asin = 'B07KT9QGXM' then 3.3
            when asin = 'B071W7HS67' then 3.861
            when asin = 'B07H8PQ8Z5' then 2.8455
            when asin = 'B07MFZTHSP' then 4.4985
            when asin = 'B07FRRW4QC' then 2.9985
            when asin = 'B07G4MW7TH' then 3.3
            when asin = 'B07KTB9T7Z' then 3.3
            when asin = 'B07MW8LSL9' then 1.1985
            when asin = 'B07KT8KJGL' then 3.3
            when asin = 'B07KFQ2463' then 5.9985
            when asin = 'B07G7CPQTM' then 3.3
            when asin = 'B074YXP8GX' then 2.8425
            when asin = 'B07FRN1R39' then 4.35
            when asin = 'B074YQSX11' then 2.8425
            when asin = 'B07FRPTRPD' then 2.9985
            when asin = 'B07FPPT9BT' then 2.9985
            else 0 end as amazon_referral,
        case when asin = 'B072KFZ9TQ' then 4.76
            when asin = 'B07QZT2RTK' then 2.42
            when asin = 'B01M7XI35O' then 3.28
            when asin = 'B01MUB7BUV' then 3.19
            when asin = 'B01MUB7BUV' then 2.08
            when asin = 'B07SPW6V2X' then 3.28
            when asin = 'B077J7FGRF' then 4.76
            when asin = 'B0797ZSZDW' then 4.76
            when asin = 'B07J1YD6MY' then 8.8
            when asin = 'B06VVJLSZR' then 4.76
            when asin = 'B07FL1PW5W' then 4.76
            when asin = 'B07JBP3151' then 13.41
            when asin = 'B077J34GD4' then 4.76
            when asin = 'B07FFFBWFL' then 4.76
            when asin = 'B079KKM9BK' then 4.76
            when asin = 'B076PT9MT8' then 3.28
            when asin = 'B07JCPKW1T' then 4.76
            when asin = 'B0786NDJXX' then 5.26
            when asin = 'B013MRPPL6' then 5.26
            when asin = 'B075L5HD6H' then 4.76
            when asin = 'B07FF9TC1M' then 3.28
            when asin = 'B076PMSD72' then 3.28
            when asin = 'B076FCD2KM' then 3.28
            when asin = 'B01M4R32QX' then 3.28
            when asin = 'B0786Q3BZ6' then 4.76
            when asin = 'B07FN5G6QC' then 3.19
            when asin = 'B01M2Y1NN8' then 5.26
            when asin = 'B0751379Q9' then 4.76
            when asin = 'B072N28S7B' then 3.28
            when asin = 'B07BYQGCXX' then 4.76
            when asin = 'B071SH212S' then 4.76
            when asin = 'B072N1T2RN' then 3.28
            when asin = 'B071G8WTK9' then 4.76
            when asin = 'B07KFQS6KF' then 4.76
            when asin = 'B07FN3PJTG' then 3.28
            when asin = 'B07H8QV3DC' then 3.19
            when asin = 'B07KFQVBT9' then 4.76
            when asin = 'B07H8R7DDM' then 3.19
            when asin = 'B013P4YVU2' then 4.76
            when asin = 'B07NPW9HSR' then 2.41
            when asin = 'B07G7BTTMC' then 3.19
            when asin = 'B01GIIOP4Y' then 4.76
            when asin = 'B07FYTH417' then 3.19
            when asin = 'B0786Q46VR' then 5.26
            when asin = 'B071W7HS67' then 3.19
            when asin = 'B07H8PQ8Z5' then 3.19
            when asin = 'B07MFZTHSP' then 3.19
            when asin = 'B07FRRW4QC' then 3.28
            when asin = 'B07G4MW7TH' then 3.19
            when asin = 'B07MW8LSL9' then 3.19
            when asin = 'B07KFQ2463' then 4.76
            when asin = 'B07G7CPQTM' then 3.19
            when asin = 'B074YXP8GX' then 4.76
            when asin = 'B07FRN1R39' then 3.19
            when asin = 'B074YQSX11' then 4.76
            when asin = 'B07FRPTRPD' then 3.19
            when asin = 'B07FPPT9BT' then 3.19
            else 0 end as amazon_fba_fee
    from asins
  
),

calculation_1 as (

    select 
        j.*,
        c.cogs*j.quantityordered as cogs,
        c.amazon_referral*j.quantityordered as amazon_referral,
        c.amazon_fba_fee*j.quantityordered as amazon_fba_fee
    from joined j
    left join costs c on j.asin = c.asin

),

calculation_2 as (

    select 
        *,
        product_sales-cogs-amazon_referral-amazon_fba_fee as contribution_margin
    from calculation_1

),

agg as (

    select
        created_at::date as day,
        sku,
        asin,
        avg(item_price) as item_price,
        sum(quantityordered) as units_ordered,
        sum(product_sales) as product_sales,
        sum(cogs) as cogs,
        sum(amazon_referral) as amazon_referral,
        sum(amazon_fba_fee) as amazon_fba_fee,
        sum(contribution_margin) as contribution_margin
    from calculation_2
    where orderstatus != 'Canceled'
    group by 1,2,3

),

mws_recent as (

    select max(day) as day
    from agg

),

mws_metrics as (

    select 
        *,
        contribution_margin/nullif(product_sales,0) as "CM %",
        contribution_margin as "CM Total",
        avg(item_price) over (partition by sku order by day rows between 6 preceding and current row) as price7,
        sum(product_sales) over (partition by sku order by day rows between 2 preceding and current row) as sales_y3,
        sum(product_sales) over (partition by sku order by day rows between 6 preceding and current row) as sales_y7,
        sum(product_sales) over (partition by sku order by day rows between 29 preceding and current row) as sales_y30,
        sum(units_ordered) over (partition by sku order by day rows between 2 preceding and current row) as units_y3,
        sum(units_ordered) over (partition by sku order by day rows between 6 preceding and current row) as units_y7,
        sum(units_ordered) over (partition by sku order by day rows between 29 preceding and current row) as units_y30
    from agg
    --filter out orders from prime day
    where day <> '2019-07-15' and day <> '2019-07-16'
    order by 2 asc, 1 asc

),

mws_final as (

    select
        sku,
        asin,
        price7 as price,
        round("CM %"*100.0,2) as "CM %",
        "CM Total",
        product_sales as "Y Sales",
        round(sales_y3/3,2) as "Y3 Sales",
        round(sales_y7/7,2) as "Y7 Sales",
        round(sales_y30/30,2) as "Y30 Sales",
        units_ordered as "Y Units",
        round(units_y3/3,2) as "Y3 Units",
        round(units_y7/7,2) as "Y7 Units",
        round(units_y30/30,2) as "Y30 Units"
    from mws_metrics m
    join mws_recent r on m.day = r.day

)

select * from mws_final
