.class public Lgov/nist/javax/sip/parser/TimeStampParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "TimeStampParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "timeStamp"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2e

    .line 67
    sget-boolean v7, Lgov/nist/javax/sip/parser/TimeStampParser;->debug:Z

    if-eqz v7, :cond_b

    .line 68
    const-string v7, "TimeStampParser.parse"

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_b
    new-instance v4, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V

    .line 71
    .local v4, timeStamp:Lgov/nist/javax/sip/header/TimeStamp;
    const/16 v7, 0x837

    :try_start_12
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->headerName(I)V

    .line 73
    const-string v7, "Timestamp"

    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/header/TimeStamp;->setHeaderName(Ljava/lang/String;)V

    .line 75
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_c0

    move-result-object v1

    .line 80
    .local v1, firstNumber:Ljava/lang/String;
    :try_start_25
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    if-ne v7, v9, :cond_ad

    .line 81
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, secondNumber:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 86
    .local v5, ts:F
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V
    :try_end_59
    .catchall {:try_start_25 .. :try_end_59} :catchall_c0
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_59} :catch_b5
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_25 .. :try_end_59} :catch_cb

    .line 99
    .end local v2           #s:Ljava/lang/String;
    .end local v3           #secondNumber:Ljava/lang/String;
    .end local v5           #ts:F
    :goto_59
    :try_start_59
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_a3

    .line 101
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_c0

    move-result-object v1

    .line 105
    :try_start_6f
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    if-ne v7, v9, :cond_d6

    .line 106
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 107
    iget-object v7, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 109
    .restart local v3       #secondNumber:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .restart local v2       #s:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 111
    .restart local v5       #ts:F
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/TimeStamp;->setDelay(F)V
    :try_end_a3
    .catchall {:try_start_6f .. :try_end_a3} :catchall_c0
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_a3} :catch_df
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_6f .. :try_end_a3} :catch_ea

    .line 126
    .end local v2           #s:Ljava/lang/String;
    .end local v3           #secondNumber:Ljava/lang/String;
    .end local v5           #ts:F
    :cond_a3
    :goto_a3
    sget-boolean v7, Lgov/nist/javax/sip/parser/TimeStampParser;->debug:Z

    if-eqz v7, :cond_ac

    .line 127
    const-string v7, "TimeStampParser.parse"

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->dbg_leave(Ljava/lang/String;)V

    .line 130
    :cond_ac
    return-object v4

    .line 88
    :cond_ad
    :try_start_ad
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 89
    .local v5, ts:J
    invoke-virtual {v4, v5, v6}, Lgov/nist/javax/sip/header/TimeStamp;->setTime(J)V
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_c0
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_b4} :catch_b5
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_ad .. :try_end_b4} :catch_cb

    goto :goto_59

    .line 93
    .end local v5           #ts:J
    :catch_b5
    move-exception v7

    move-object v0, v7

    .line 94
    .local v0, ex:Ljava/lang/NumberFormatException;
    :try_start_b7
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7
    :try_end_c0
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_c0

    .line 126
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v1           #firstNumber:Ljava/lang/String;
    :catchall_c0
    move-exception v7

    sget-boolean v8, Lgov/nist/javax/sip/parser/TimeStampParser;->debug:Z

    if-eqz v8, :cond_ca

    .line 127
    const-string v8, "TimeStampParser.parse"

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/TimeStampParser;->dbg_leave(Ljava/lang/String;)V

    .line 126
    :cond_ca
    throw v7

    .line 95
    .restart local v1       #firstNumber:Ljava/lang/String;
    :catch_cb
    move-exception v7

    move-object v0, v7

    .line 96
    .local v0, ex:Ljavax/sip/InvalidArgumentException;
    :try_start_cd
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7
    :try_end_d6
    .catchall {:try_start_cd .. :try_end_d6} :catchall_c0

    .line 113
    .end local v0           #ex:Ljavax/sip/InvalidArgumentException;
    :cond_d6
    :try_start_d6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 114
    .local v5, ts:I
    int-to-float v7, v5

    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/header/TimeStamp;->setDelay(F)V
    :try_end_de
    .catchall {:try_start_d6 .. :try_end_de} :catchall_c0
    .catch Ljava/lang/NumberFormatException; {:try_start_d6 .. :try_end_de} :catch_df
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_d6 .. :try_end_de} :catch_ea

    goto :goto_a3

    .line 118
    .end local v5           #ts:I
    :catch_df
    move-exception v7

    move-object v0, v7

    .line 119
    .local v0, ex:Ljava/lang/NumberFormatException;
    :try_start_e1
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7

    .line 120
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :catch_ea
    move-exception v7

    move-object v0, v7

    .line 121
    .local v0, ex:Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7
    :try_end_f5
    .catchall {:try_start_e1 .. :try_end_f5} :catchall_c0
.end method
