.class public Lgov/nist/javax/sip/parser/RetryAfterParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "RetryAfterParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "retryAfter"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3b

    .line 69
    sget-boolean v9, Lgov/nist/javax/sip/parser/RetryAfterParser;->debug:Z

    if-eqz v9, :cond_b

    .line 70
    const-string v9, "RetryAfterParser.parse"

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->dbg_enter(Ljava/lang/String;)V

    .line 72
    :cond_b
    new-instance v4, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    .line 74
    .local v4, retryAfter:Lgov/nist/javax/sip/header/RetryAfter;
    const/16 v9, 0x819

    :try_start_12
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->headerName(I)V

    .line 77
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_8d

    move-result-object v8

    .line 79
    .local v8, value:Ljava/lang/String;
    :try_start_1b
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 80
    .local v1, ds:I
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_98
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1b .. :try_end_22} :catch_a3

    .line 87
    :try_start_22
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 88
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v9

    const/16 v10, 0x28

    if-ne v9, v10, :cond_3b

    .line 89
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->comment()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, comment:Ljava/lang/String;
    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/header/RetryAfter;->setComment(Ljava/lang/String;)V

    .line 92
    .end local v0           #comment:Ljava/lang/String;
    :cond_3b
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 94
    :goto_40
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v9

    if-ne v9, v11, :cond_ea

    .line 95
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v10, 0x3b

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 96
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 97
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 98
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v7

    .line 99
    .local v7, token:Lgov/nist/core/Token;
    invoke-virtual {v7}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    .line 100
    const-string v9, "duration"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c4

    .line 101
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 102
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 103
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_7f
    .catchall {:try_start_22 .. :try_end_7f} :catchall_8d

    move-result-object v8

    .line 105
    :try_start_80
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 106
    .local v2, duration:I
    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/header/RetryAfter;->setDuration(I)V
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_87} :catch_ae
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_80 .. :try_end_87} :catch_b9

    .line 121
    .end local v2           #duration:I
    :goto_87
    :try_start_87
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_8d

    goto :goto_40

    .line 124
    .end local v1           #ds:I
    .end local v7           #token:Lgov/nist/core/Token;
    .end local v8           #value:Ljava/lang/String;
    :catchall_8d
    move-exception v9

    sget-boolean v10, Lgov/nist/javax/sip/parser/RetryAfterParser;->debug:Z

    if-eqz v10, :cond_97

    .line 125
    const-string v10, "RetryAfterParser.parse"

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/RetryAfterParser;->dbg_leave(Ljava/lang/String;)V

    .line 124
    :cond_97
    throw v9

    .line 81
    .restart local v8       #value:Ljava/lang/String;
    :catch_98
    move-exception v9

    move-object v3, v9

    .line 82
    .local v3, ex:Ljava/lang/NumberFormatException;
    :try_start_9a
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    .line 83
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    :catch_a3
    move-exception v9

    move-object v3, v9

    .line 84
    .local v3, ex:Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    .line 107
    .end local v3           #ex:Ljavax/sip/InvalidArgumentException;
    .restart local v1       #ds:I
    .restart local v7       #token:Lgov/nist/core/Token;
    :catch_ae
    move-exception v9

    move-object v3, v9

    .line 108
    .local v3, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    .line 109
    .end local v3           #ex:Ljava/lang/NumberFormatException;
    :catch_b9
    move-exception v9

    move-object v3, v9

    .line 110
    .local v3, ex:Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    .line 113
    .end local v3           #ex:Ljavax/sip/InvalidArgumentException;
    :cond_c4
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 114
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 115
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 116
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 117
    iget-object v9, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    .line 118
    .local v5, secondToken:Lgov/nist/core/Token;
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, secondValue:Ljava/lang/String;
    invoke-virtual {v4, v8, v6}, Lgov/nist/javax/sip/header/RetryAfter;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_9a .. :try_end_e9} :catchall_8d

    goto :goto_87

    .line 124
    .end local v5           #secondToken:Lgov/nist/core/Token;
    .end local v6           #secondValue:Ljava/lang/String;
    .end local v7           #token:Lgov/nist/core/Token;
    :cond_ea
    sget-boolean v9, Lgov/nist/javax/sip/parser/RetryAfterParser;->debug:Z

    if-eqz v9, :cond_f3

    .line 125
    const-string v9, "RetryAfterParser.parse"

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->dbg_leave(Ljava/lang/String;)V

    .line 128
    :cond_f3
    return-object v4
.end method
