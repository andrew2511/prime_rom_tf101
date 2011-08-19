.class public Lgov/nist/javax/sip/parser/AcceptLanguageParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AcceptLanguageParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "acceptLanguage"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2c

    const/16 v7, 0x3b

    .line 84
    new-instance v1, Lgov/nist/javax/sip/header/AcceptLanguageList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptLanguageList;-><init>()V

    .line 85
    .local v1, acceptLanguageList:Lgov/nist/javax/sip/header/AcceptLanguageList;
    sget-boolean v5, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->debug:Z

    if-eqz v5, :cond_12

    .line 86
    const-string v5, "AcceptLanguageParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->dbg_enter(Ljava/lang/String;)V

    .line 89
    :cond_12
    const/16 v5, 0x82f

    :try_start_14
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->headerName(I)V

    .line 91
    :goto_17
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_d6

    .line 92
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    .line 93
    .local v0, acceptLanguage:Lgov/nist/javax/sip/header/AcceptLanguage;
    const-string v5, "Accept-Language"

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/AcceptLanguage;->setHeaderName(Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v7, :cond_49

    .line 96
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0xfff

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 97
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 98
    .local v4, value:Lgov/nist/core/Token;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/AcceptLanguage;->setLanguageRange(Ljava/lang/String;)V

    .line 101
    .end local v4           #value:Lgov/nist/core/Token;
    :cond_49
    :goto_49
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v7, :cond_b5

    .line 102
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 104
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x71

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 106
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 107
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 108
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0xfff

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 109
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_82
    .catchall {:try_start_14 .. :try_end_82} :catchall_94

    move-result-object v4

    .line 111
    .restart local v4       #value:Lgov/nist/core/Token;
    :try_start_83
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 112
    .local v3, fl:F
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/AcceptLanguage;->setQValue(F)V
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_94
    .catch Ljava/lang/NumberFormatException; {:try_start_83 .. :try_end_8e} :catch_9f
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_83 .. :try_end_8e} :catch_aa

    .line 118
    :try_start_8e
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_94

    goto :goto_49

    .line 130
    .end local v0           #acceptLanguage:Lgov/nist/javax/sip/header/AcceptLanguage;
    .end local v3           #fl:F
    .end local v4           #value:Lgov/nist/core/Token;
    :catchall_94
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->debug:Z

    if-eqz v6, :cond_9e

    .line 131
    const-string v6, "AcceptLanguageParser.parse"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->dbg_leave(Ljava/lang/String;)V

    .line 130
    :cond_9e
    throw v5

    .line 113
    .restart local v0       #acceptLanguage:Lgov/nist/javax/sip/header/AcceptLanguage;
    .restart local v4       #value:Lgov/nist/core/Token;
    :catch_9f
    move-exception v5

    move-object v2, v5

    .line 114
    .local v2, ex:Ljava/lang/NumberFormatException;
    :try_start_a1
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5

    .line 115
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_aa
    move-exception v5

    move-object v2, v5

    .line 116
    .local v2, ex:Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5

    .line 121
    .end local v2           #ex:Ljavax/sip/InvalidArgumentException;
    .end local v4           #value:Lgov/nist/core/Token;
    :cond_b5
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptLanguageList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 122
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v8, :cond_cf

    .line 123
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 124
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto/16 :goto_17

    .line 126
    :cond_cf
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_d4
    .catchall {:try_start_a1 .. :try_end_d4} :catchall_94

    goto/16 :goto_17

    .line 130
    .end local v0           #acceptLanguage:Lgov/nist/javax/sip/header/AcceptLanguage;
    :cond_d6
    sget-boolean v5, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->debug:Z

    if-eqz v5, :cond_df

    .line 131
    const-string v5, "AcceptLanguageParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->dbg_leave(Ljava/lang/String;)V

    .line 134
    :cond_df
    return-object v1
.end method
