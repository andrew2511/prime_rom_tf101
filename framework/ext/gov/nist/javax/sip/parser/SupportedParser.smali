.class public Lgov/nist/javax/sip/parser/SupportedParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SupportedParser.java"


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
    .parameter "supported"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 52
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
    const/16 v5, 0x2c

    .line 68
    new-instance v1, Lgov/nist/javax/sip/header/SupportedList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/SupportedList;-><init>()V

    .line 69
    .local v1, supportedList:Lgov/nist/javax/sip/header/SupportedList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/SupportedParser;->debug:Z

    if-eqz v3, :cond_10

    .line 70
    const-string v3, "SupportedParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/SupportedParser;->dbg_enter(Ljava/lang/String;)V

    .line 73
    :cond_10
    const/16 v3, 0x814

    :try_start_12
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/SupportedParser;->headerName(I)V

    .line 75
    :cond_15
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8d

    .line 76
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    new-instance v0, Lgov/nist/javax/sip/header/Supported;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Supported;-><init>()V

    .line 78
    .local v0, supported:Lgov/nist/javax/sip/header/Supported;
    const-string v3, "Supported"

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Supported;->setHeaderName(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 83
    .local v2, token:Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 86
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/SupportedList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 88
    :goto_4b
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v5, :cond_15

    .line 89
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 92
    new-instance v0, Lgov/nist/javax/sip/header/Supported;

    .end local v0           #supported:Lgov/nist/javax/sip/header/Supported;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Supported;-><init>()V

    .line 95
    .restart local v0       #supported:Lgov/nist/javax/sip/header/Supported;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 96
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/SupportedList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_81
    .catchall {:try_start_12 .. :try_end_81} :catchall_82

    goto :goto_4b

    .line 105
    .end local v0           #supported:Lgov/nist/javax/sip/header/Supported;
    .end local v2           #token:Lgov/nist/core/Token;
    :catchall_82
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/SupportedParser;->debug:Z

    if-eqz v4, :cond_8c

    .line 106
    const-string v4, "SupportedParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/SupportedParser;->dbg_leave(Ljava/lang/String;)V

    .line 105
    :cond_8c
    throw v3

    :cond_8d
    sget-boolean v3, Lgov/nist/javax/sip/parser/SupportedParser;->debug:Z

    if-eqz v3, :cond_96

    .line 106
    const-string v3, "SupportedParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/SupportedParser;->dbg_leave(Ljava/lang/String;)V

    .line 109
    :cond_96
    return-object v1
.end method
