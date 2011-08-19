.class public Lgov/nist/javax/sip/parser/AcceptEncodingParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AcceptEncodingParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "acceptEncoding"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 71
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
    const/16 v9, 0x2c

    const/16 v8, 0xa

    const/16 v7, 0x3b

    .line 87
    new-instance v1, Lgov/nist/javax/sip/header/AcceptEncodingList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptEncodingList;-><init>()V

    .line 88
    .local v1, acceptEncodingList:Lgov/nist/javax/sip/header/AcceptEncodingList;
    sget-boolean v5, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->debug:Z

    if-eqz v5, :cond_14

    .line 89
    const-string v5, "AcceptEncodingParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->dbg_enter(Ljava/lang/String;)V

    .line 92
    :cond_14
    const/16 v5, 0x813

    :try_start_16
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->headerName(I)V

    .line 94
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v8, :cond_4c

    .line 95
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    .line 96
    .local v0, acceptEncoding:Lgov/nist/javax/sip/header/AcceptEncoding;
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_c2

    .line 137
    .end local v0           #acceptEncoding:Lgov/nist/javax/sip/header/AcceptEncoding;
    :cond_2a
    sget-boolean v5, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->debug:Z

    if-eqz v5, :cond_33

    .line 138
    const-string v5, "AcceptEncodingParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->dbg_leave(Ljava/lang/String;)V

    .line 135
    :cond_33
    return-object v1

    .line 127
    .restart local v0       #acceptEncoding:Lgov/nist/javax/sip/header/AcceptEncoding;
    :cond_34
    :try_start_34
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 128
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v9, :cond_4c

    .line 129
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 130
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 98
    .end local v0           #acceptEncoding:Lgov/nist/javax/sip/header/AcceptEncoding;
    :cond_4c
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v8, :cond_2a

    .line 99
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    .line 100
    .restart local v0       #acceptEncoding:Lgov/nist/javax/sip/header/AcceptEncoding;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-eq v5, v7, :cond_77

    .line 102
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0xfff

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 104
    .local v4, value:Lgov/nist/core/Token;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/AcceptEncoding;->setEncoding(Ljava/lang/String;)V

    .line 107
    .end local v4           #value:Lgov/nist/core/Token;
    :cond_77
    :goto_77
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v7, :cond_34

    .line 108
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 109
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 110
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x71

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 111
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 112
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 113
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 114
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0xfff

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 115
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_b0
    .catchall {:try_start_34 .. :try_end_b0} :catchall_c2

    move-result-object v4

    .line 117
    .restart local v4       #value:Lgov/nist/core/Token;
    :try_start_b1
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 118
    .local v3, qv:F
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/AcceptEncoding;->setQValue(F)V
    :try_end_bc
    .catchall {:try_start_b1 .. :try_end_bc} :catchall_c2
    .catch Ljava/lang/NumberFormatException; {:try_start_b1 .. :try_end_bc} :catch_cd
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_b1 .. :try_end_bc} :catch_d8

    .line 124
    :try_start_bc
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_c2

    goto :goto_77

    .line 137
    .end local v0           #acceptEncoding:Lgov/nist/javax/sip/header/AcceptEncoding;
    .end local v3           #qv:F
    .end local v4           #value:Lgov/nist/core/Token;
    :catchall_c2
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->debug:Z

    if-eqz v6, :cond_cc

    .line 138
    const-string v6, "AcceptEncodingParser.parse"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->dbg_leave(Ljava/lang/String;)V

    .line 137
    :cond_cc
    throw v5

    .line 119
    .restart local v0       #acceptEncoding:Lgov/nist/javax/sip/header/AcceptEncoding;
    .restart local v4       #value:Lgov/nist/core/Token;
    :catch_cd
    move-exception v5

    move-object v2, v5

    .line 120
    .local v2, ex:Ljava/lang/NumberFormatException;
    :try_start_cf
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5

    .line 121
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_d8
    move-exception v5

    move-object v2, v5

    .line 122
    .local v2, ex:Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
    :try_end_e3
    .catchall {:try_start_cf .. :try_end_e3} :catchall_c2
.end method
