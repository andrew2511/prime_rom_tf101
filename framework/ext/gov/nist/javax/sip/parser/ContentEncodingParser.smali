.class public Lgov/nist/javax/sip/parser/ContentEncodingParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ContentEncodingParser.java"


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
    .parameter "contentEncoding"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2c

    .line 69
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentEncodingParser;->debug:Z

    if-eqz v4, :cond_b

    .line 70
    const-string v4, "ContentEncodingParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_b
    new-instance v2, Lgov/nist/javax/sip/header/ContentEncodingList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ContentEncodingList;-><init>()V

    .line 74
    .local v2, list:Lgov/nist/javax/sip/header/ContentEncodingList;
    const/16 v4, 0x823

    :try_start_12
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->headerName(I)V

    .line 76
    :cond_15
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_9d

    .line 77
    new-instance v0, Lgov/nist/javax/sip/header/ContentEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentEncoding;-><init>()V

    .line 78
    .local v0, cl:Lgov/nist/javax/sip/header/ContentEncoding;
    const-string v4, "Content-Encoding"

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ContentEncoding;->setHeaderName(Ljava/lang/String;)V

    .line 80
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 81
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 83
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 84
    .local v3, token:Lgov/nist/core/Token;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ContentEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 89
    :goto_4b
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_15

    .line 90
    new-instance v0, Lgov/nist/javax/sip/header/ContentEncoding;

    .end local v0           #cl:Lgov/nist/javax/sip/header/ContentEncoding;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentEncoding;-><init>()V

    .line 91
    .restart local v0       #cl:Lgov/nist/javax/sip/header/ContentEncoding;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 92
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 93
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 94
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 95
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 98
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ContentEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_86
    .catchall {:try_start_12 .. :try_end_86} :catchall_92
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_86} :catch_87

    goto :goto_4b

    .line 103
    .end local v0           #cl:Lgov/nist/javax/sip/header/ContentEncoding;
    .end local v3           #token:Lgov/nist/core/Token;
    :catch_87
    move-exception v4

    move-object v1, v4

    .line 104
    .local v1, ex:Ljava/text/ParseException;
    :try_start_89
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_92

    .line 106
    .end local v1           #ex:Ljava/text/ParseException;
    :catchall_92
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/ContentEncodingParser;->debug:Z

    if-eqz v5, :cond_9c

    .line 107
    const-string v5, "ContentEncodingParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->dbg_leave(Ljava/lang/String;)V

    .line 106
    :cond_9c
    throw v4

    :cond_9d
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentEncodingParser;->debug:Z

    if-eqz v4, :cond_a6

    .line 107
    const-string v4, "ContentEncodingParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->dbg_leave(Ljava/lang/String;)V

    .line 102
    :cond_a6
    return-object v2
.end method
