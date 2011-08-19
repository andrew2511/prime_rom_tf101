.class public Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SecurityAgreeParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "security"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;
    .registers 15
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xfff

    const/16 v11, 0x2c

    const/16 v10, 0xa

    const/16 v9, 0x3b

    const/4 v8, 0x0

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 87
    new-instance v4, Lgov/nist/javax/sip/header/ims/SecurityClientList;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/ims/SecurityClientList;-><init>()V

    .line 98
    .local v4, list:Lgov/nist/javax/sip/header/SIPHeaderList;
    :goto_1d
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 99
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v12}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 100
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    .line 101
    .local v5, type:Lgov/nist/core/Token;
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    .line 102
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 104
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 105
    .local v2, la:C
    if-ne v2, v10, :cond_72

    .line 107
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-object v6, v4

    .line 153
    .end local v2           #la:C
    .end local v4           #list:Lgov/nist/javax/sip/header/SIPHeaderList;
    .end local v5           #type:Lgov/nist/core/Token;
    :goto_45
    return-object v6

    .line 88
    :cond_46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 89
    new-instance v4, Lgov/nist/javax/sip/header/ims/SecurityServerList;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/ims/SecurityServerList;-><init>()V

    .restart local v4       #list:Lgov/nist/javax/sip/header/SIPHeaderList;
    goto :goto_1d

    .line 90
    .end local v4           #list:Lgov/nist/javax/sip/header/SIPHeaderList;
    :cond_5b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 91
    new-instance v4, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;-><init>()V

    .restart local v4       #list:Lgov/nist/javax/sip/header/SIPHeaderList;
    goto :goto_1d

    .line 94
    .end local v4           #list:Lgov/nist/javax/sip/header/SIPHeaderList;
    :cond_70
    const/4 v6, 0x0

    goto :goto_45

    .line 110
    .restart local v2       #la:C
    .restart local v4       #list:Lgov/nist/javax/sip/header/SIPHeaderList;
    .restart local v5       #type:Lgov/nist/core/Token;
    :cond_72
    if-ne v2, v9, :cond_79

    .line 111
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 113
    :cond_79
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    move-object v1, p1

    .line 117
    .end local p1
    .local v1, header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :goto_7f
    :try_start_7f
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-eq v6, v10, :cond_9b

    .line 119
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parseParameter(Lgov/nist/javax/sip/header/ims/SecurityAgree;)V

    .line 120
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 121
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 122
    .local v3, laInLoop:C
    if-eq v3, v10, :cond_9b

    if-nez v3, :cond_a1

    .line 151
    .end local v3           #laInLoop:C
    :cond_9b
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-object p1, v1

    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1
    move-object v6, v4

    .line 153
    goto :goto_45

    .line 124
    .end local p1
    .restart local v1       #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local v3       #laInLoop:C
    :cond_a1
    if-ne v3, v11, :cond_129

    .line 126
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 128
    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V
    :try_end_ba
    .catch Ljava/text/ParseException; {:try_start_7f .. :try_end_ba} :catch_120

    .line 135
    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1
    :goto_ba
    :try_start_ba
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 137
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 138
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0xfff

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 139
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    .line 140
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    .line 143
    :goto_da
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 145
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-ne v6, v9, :cond_ef

    .line 146
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 148
    :cond_ef
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_f4
    .catch Ljava/text/ParseException; {:try_start_ba .. :try_end_f4} :catch_124

    move-object v1, p1

    .line 150
    .end local p1
    .restart local v1       #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    goto :goto_7f

    .line 129
    :cond_f6
    :try_start_f6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10b

    .line 130
    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1
    goto :goto_ba

    .line 131
    .end local p1
    .restart local v1       #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :cond_10b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_127

    .line 132
    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V
    :try_end_11f
    .catch Ljava/text/ParseException; {:try_start_f6 .. :try_end_11f} :catch_120

    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1
    goto :goto_ba

    .line 155
    .end local v3           #laInLoop:C
    .end local p1
    .restart local v1       #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :catch_120
    move-exception v6

    move-object v0, v6

    move-object p1, v1

    .line 156
    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .local v0, ex:Ljava/text/ParseException;
    .restart local p1
    :goto_123
    throw v0

    .line 155
    .end local v0           #ex:Ljava/text/ParseException;
    .restart local v3       #laInLoop:C
    :catch_124
    move-exception v6

    move-object v0, v6

    goto :goto_123

    .end local p1
    .restart local v1       #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :cond_127
    move-object p1, v1

    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1
    goto :goto_ba

    .end local p1
    .restart local v1       #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :cond_129
    move-object p1, v1

    .end local v1           #header:Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1
    goto :goto_da
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/ims/SecurityAgree;)V
    .registers 5
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->debug:Z

    if-eqz v1, :cond_9

    .line 70
    const-string v1, "parseParameter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->dbg_enter(Ljava/lang/String;)V

    .line 72
    :cond_9
    const/16 v1, 0x3d

    :try_start_b
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 73
    .local v0, nv:Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1c

    .line 75
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->debug:Z

    if-eqz v1, :cond_1b

    .line 76
    const-string v1, "parseParameter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->dbg_leave(Ljava/lang/String;)V

    .line 78
    :cond_1b
    return-void

    .line 75
    .end local v0           #nv:Lgov/nist/core/NameValue;
    :catchall_1c
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->debug:Z

    if-eqz v2, :cond_26

    .line 76
    const-string v2, "parseParameter"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->dbg_leave(Ljava/lang/String;)V

    .line 75
    :cond_26
    throw v1
.end method
