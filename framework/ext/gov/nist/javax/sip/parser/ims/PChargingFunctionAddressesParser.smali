.class public Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PChargingFunctionAddressesParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "charging"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "P-Charging-Function-Addresses: ccf=\"test str\"; ecf=token\n"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "P-Charging-Function-Addresses: ccf=192.1.1.1; ccf=192.1.1.2; ecf=192.1.1.3; ecf=192.1.1.4\n"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "P-Charging-Function-Addresses: ccf=[5555::b99:c88:d77:e66]; ccf=[5555::a55:b44:c33:d22]; ecf=[5555::1ff:2ee:3dd:4cc]; ecf=[5555::6aa:7bb:8cc:9dd]\n"

    aput-object v5, v3, v4

    .line 157
    .local v3, r:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    array-length v4, v3

    if-ge v1, v4, :cond_5c

    .line 160
    new-instance v2, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;

    aget-object v4, v3, v1

    invoke-direct {v2, v4}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;-><init>(Ljava/lang/String;)V

    .line 163
    .local v2, parser:Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "original = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    .line 166
    .local v0, chargAddr:Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 170
    .end local v0           #chargAddr:Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    .end local v2           #parser:Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;
    :cond_5c
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 89
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-eqz v3, :cond_b

    .line 90
    const-string v3, "parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_enter(Ljava/lang/String;)V

    .line 92
    :cond_b
    const/16 v3, 0x84c

    :try_start_d
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->headerName(I)V

    .line 93
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;-><init>()V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_4e

    .line 96
    .local v0, chargingFunctionAddresses:Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    :goto_15
    :try_start_15
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-eq v3, v5, :cond_31

    .line 98
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->parseParameter(Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;)V

    .line 99
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_4e
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_2c} :catch_4b

    move-result v2

    .line 101
    .local v2, la:C
    if-eq v2, v5, :cond_31

    if-nez v2, :cond_3e

    .line 112
    .end local v2           #la:C
    :cond_31
    :try_start_31
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_4e

    .line 115
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-eqz v3, :cond_3d

    .line 116
    const-string v3, "parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    .line 113
    :cond_3d
    return-object v0

    .line 104
    .restart local v2       #la:C
    :cond_3e
    :try_start_3e
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4e
    .catch Ljava/text/ParseException; {:try_start_3e .. :try_end_4a} :catch_4b

    goto :goto_15

    .line 107
    .end local v2           #la:C
    :catch_4b
    move-exception v3

    move-object v1, v3

    .line 108
    .local v1, ex:Ljava/text/ParseException;
    :try_start_4d
    throw v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 115
    .end local v0           #chargingFunctionAddresses:Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    .end local v1           #ex:Ljava/text/ParseException;
    :catchall_4e
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-eqz v4, :cond_58

    .line 116
    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    .line 115
    :cond_58
    throw v3
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;)V
    .registers 5
    .parameter "chargingFunctionAddresses"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 122
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-eqz v1, :cond_9

    .line 123
    const-string v1, "parseParameter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_enter(Ljava/lang/String;)V

    .line 126
    :cond_9
    const/16 v1, 0x3d

    :try_start_b
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 129
    .local v0, nv:Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;->setMultiParameter(Lgov/nist/core/NameValue;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1c

    .line 132
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-eqz v1, :cond_1b

    .line 133
    const-string v1, "parseParameter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    .line 138
    :cond_1b
    return-void

    .line 132
    .end local v0           #nv:Lgov/nist/core/NameValue;
    :catchall_1c
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->debug:Z

    if-eqz v2, :cond_26

    .line 133
    const-string v2, "parseParameter"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;->dbg_leave(Ljava/lang/String;)V

    .line 132
    :cond_26
    throw v1
.end method
