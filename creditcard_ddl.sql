CREATE SCHEMA IF NOT EXISTS financial_db;
USE financial_db;
CREATE TABLE
    IF NOT EXISTS creditcard (
        CreditcardNum SMALLINT PRIMARY KEY,
        Creditcard_company VARCHAR(100) NOT NULL,
        Creditcard_type VARCHAR(50) NOT NULL,
        Credit_Limit DECIMAL(9, 2),
        Totalspent DECIMAL(9, 2),
        City VARCHAR(50) NOT NULL,
        CardHolder VARCHAR(100) NOT NULL,
        Issue_Date DATE NOT NULL,
        CONSTRAINT cc_ch_creditlimit CHECK (Credit_Limit > 0)
    );


INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '4535',
        'Egg',
        'Mastercard',
        1500.00,
        1234.40,
        'London',
        'Paul Jones',
        '2018/12/12'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '4456',
        'Barclaycard',
        'Mastercard',
        10000.00,
        3500.39,
        'London',
        'John Smith',
        '2018/10/11'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '2332',
        'Capital One',
        'Visa',
        3000.00,
        1200.00,
        'Birmingham',
        'Paul Carter',
        '2019/07/05'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '3554',
        'MBNA',
        'Visa',
        5000.00,
        3450.75,
        'Aberdeen',
        'Julia Kathy',
        '2019/04/04'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '3556',
        'Egg',
        'Mastercard',
        4000.00,
        2300.00,
        'London',
        'Paul Jones',
        '2019/04/20'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '3557',
        'Natwest',
        'Visa',
        12000.00,
        4002.10,
        'Aberdeen',
        'Julia Kathy',
        '2018/04/20'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '3434',
        'Capital One',
        'Mastercard',
        20000.00,
        5420.75,
        'Birmingham',
        'Stanley Mathews',
        '2019/05/02'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '3333',
        'American Express',
        'American Express',
        3500.00,
        1243.20,
        'London',
        'Paul Jones',
        '2020/05/02'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '3334',
        'Virgin Credit',
        'Mastercard',
        1200.00,
        867.30,
        'Aberdeen',
        'Mario Brothers',
        '2019/01/17'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '2456',
        'Coutts Bank',
        'Mastercard',
        50000.00,
        2567.77,
        'Aberdeen',
        'Mario Brothers',
        '2020/01/20'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '4578',
        'Barclaycard',
        'Mastercard',
        4500.00,
        4325.60,
        'Aberdeen',
        'Julia Kathy',
        '2020/01/22'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '4323',
        'Natwest',
        'Mastercard',
        24000.00,
        7325.50,
        'Glasgow',
        'John Mackay',
        '2018/10/10'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '4489',
        'Natwest',
        'Visa',
        3000.00,
        1450.45,
        'Birmingham',
        'Paul Carter',
        '2018/05/04'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '3343',
        'Virgin Credit',
        'Visa',
        4000.00,
        2300.50,
        'Glasgow',
        'John Mackay',
        '2019/03/03'
    );

INSERT INTO
    CreditCard (
        CreditcardNum,
        Creditcard_company,
        Creditcard_type,
        Credit_Limit,
        TotalSpent,
        City,
        CardHolder,
        Issue_Date
    )
values
    (
        '1212',
        'Capital One',
        'Visa',
        5000.00,
        3476.50,
        'London',
        'Krystal Jones',
        '2019/11/12'
    );