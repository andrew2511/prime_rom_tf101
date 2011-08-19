.class public Lgov/nist/javax/sip/parser/WarningParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "WarningParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "warning"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 55
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
    const/16 v11, 0x2c

    const/16 v10, 0x3a

    .line 75
    new-instance v7, Lgov/nist/javax/sip/header/WarningList;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/WarningList;-><init>()V

    .line 76
    .local v7, warningList:Lgov/nist/javax/sip/header/WarningList;
    sget-boolean v8, Lgov/nist/javax/sip/parser/WarningParser;->debug:Z

    if-eqz v8, :cond_12

    .line 77
    const-string v8, "WarningParser.parse"

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->dbg_enter(Ljava/lang/String;)V

    .line 80
    :cond_12
    const/16 v8, 0x81e

    :try_start_14
    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->headerName(I)V

    .line 82
    :cond_17
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_18e

    .line 83
    new-instance v6, Lgov/nist/javax/sip/header/Warning;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    .line 84
    .local v6, warning:Lgov/nist/javax/sip/header/Warning;
    const-string v8, "Warning"

    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/header/Warning;->setHeaderName(Ljava/lang/String;)V

    .line 87
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 88
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_146

    move-result-object v4

    .line 90
    .local v4, token:Lgov/nist/core/Token;
    :try_start_39
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, code:I
    invoke-virtual {v6, v0}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_146
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_44} :catch_151
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_39 .. :try_end_44} :catch_15c

    .line 97
    :try_start_44
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 101
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 103
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    if-ne v8, v10, :cond_167

    .line 104
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 106
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    .line 107
    .local v5, token2:Lgov/nist/core/Token;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 113
    .end local v5           #token2:Lgov/nist/core/Token;
    :goto_95
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 116
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v6, v2}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    .line 118
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 120
    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/header/WarningList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 122
    :goto_ab
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    if-ne v8, v11, :cond_17

    .line 123
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 124
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 126
    new-instance v6, Lgov/nist/javax/sip/header/Warning;

    .end local v6           #warning:Lgov/nist/javax/sip/header/Warning;
    invoke-direct {v6}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    .line 129
    .restart local v6       #warning:Lgov/nist/javax/sip/header/Warning;
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 130
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_d1
    .catchall {:try_start_44 .. :try_end_d1} :catchall_146

    move-result-object v3

    .line 132
    .local v3, tok:Lgov/nist/core/Token;
    :try_start_d2
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 133
    invoke-virtual {v6, v0}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V
    :try_end_dd
    .catchall {:try_start_d2 .. :try_end_dd} :catchall_146
    .catch Ljava/lang/NumberFormatException; {:try_start_d2 .. :try_end_dd} :catch_170
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_d2 .. :try_end_dd} :catch_17b

    .line 139
    :try_start_dd
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 142
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 143
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 147
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    if-ne v8, v10, :cond_186

    .line 148
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 149
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 150
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    .line 151
    .restart local v5       #token2:Lgov/nist/core/Token;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 157
    .end local v5           #token2:Lgov/nist/core/Token;
    :goto_12e
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 160
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v6, v2}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    .line 162
    iget-object v8, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 164
    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/header/WarningList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_144
    .catchall {:try_start_dd .. :try_end_144} :catchall_146

    goto/16 :goto_ab

    .line 169
    .end local v0           #code:I
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #tok:Lgov/nist/core/Token;
    .end local v4           #token:Lgov/nist/core/Token;
    .end local v6           #warning:Lgov/nist/javax/sip/header/Warning;
    :catchall_146
    move-exception v8

    sget-boolean v9, Lgov/nist/javax/sip/parser/WarningParser;->debug:Z

    if-eqz v9, :cond_150

    .line 170
    const-string v9, "WarningParser.parse"

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/WarningParser;->dbg_leave(Ljava/lang/String;)V

    .line 169
    :cond_150
    throw v8

    .line 92
    .restart local v4       #token:Lgov/nist/core/Token;
    .restart local v6       #warning:Lgov/nist/javax/sip/header/Warning;
    :catch_151
    move-exception v8

    move-object v1, v8

    .line 93
    .local v1, ex:Ljava/lang/NumberFormatException;
    :try_start_153
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v8

    throw v8

    .line 94
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catch_15c
    move-exception v8

    move-object v1, v8

    .line 95
    .local v1, ex:Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v8

    throw v8

    .line 110
    .end local v1           #ex:Ljavax/sip/InvalidArgumentException;
    .restart local v0       #code:I
    :cond_167
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    goto/16 :goto_95

    .line 134
    .restart local v2       #text:Ljava/lang/String;
    .restart local v3       #tok:Lgov/nist/core/Token;
    :catch_170
    move-exception v8

    move-object v1, v8

    .line 135
    .local v1, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v8

    throw v8

    .line 136
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catch_17b
    move-exception v8

    move-object v1, v8

    .line 137
    .local v1, ex:Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v8

    throw v8

    .line 154
    .end local v1           #ex:Ljavax/sip/InvalidArgumentException;
    :cond_186
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V
    :try_end_18d
    .catchall {:try_start_153 .. :try_end_18d} :catchall_146

    goto :goto_12e

    .line 169
    .end local v0           #code:I
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #tok:Lgov/nist/core/Token;
    .end local v4           #token:Lgov/nist/core/Token;
    .end local v6           #warning:Lgov/nist/javax/sip/header/Warning;
    :cond_18e
    sget-boolean v8, Lgov/nist/javax/sip/parser/WarningParser;->debug:Z

    if-eqz v8, :cond_197

    .line 170
    const-string v8, "WarningParser.parse"

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->dbg_leave(Ljava/lang/String;)V

    .line 173
    :cond_197
    return-object v7
.end method
