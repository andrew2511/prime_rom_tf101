.class public Lgov/nist/javax/sip/parser/ErrorInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ErrorInfoParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "errorInfo"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 50
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

    .line 67
    sget-boolean v4, Lgov/nist/javax/sip/parser/ErrorInfoParser;->debug:Z

    if-eqz v4, :cond_b

    .line 68
    const-string v4, "ErrorInfoParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_b
    new-instance v1, Lgov/nist/javax/sip/header/ErrorInfoList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ErrorInfoList;-><init>()V

    .line 72
    .local v1, list:Lgov/nist/javax/sip/header/ErrorInfoList;
    const/16 v4, 0x80a

    :try_start_12
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->headerName(I)V

    .line 74
    :cond_15
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_75

    .line 76
    :goto_20
    new-instance v0, Lgov/nist/javax/sip/header/ErrorInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>()V

    .line 77
    .local v0, errorInfo:Lgov/nist/javax/sip/header/ErrorInfo;
    const-string v4, "Error-Info"

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ErrorInfo;->setHeaderName(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 80
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 81
    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v4, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 82
    .local v3, urlParser:Lgov/nist/javax/sip/parser/URLParser;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    .line 83
    .local v2, uri:Lgov/nist/javax/sip/address/GenericURI;
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ErrorInfo;->setErrorInfo(Ljavax/sip/address/URI;)V

    .line 84
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 85
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 88
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ErrorInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 90
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_15

    .line 91
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_69
    .catchall {:try_start_12 .. :try_end_69} :catchall_6a

    goto :goto_20

    .line 98
    .end local v0           #errorInfo:Lgov/nist/javax/sip/header/ErrorInfo;
    .end local v2           #uri:Lgov/nist/javax/sip/address/GenericURI;
    .end local v3           #urlParser:Lgov/nist/javax/sip/parser/URLParser;
    :catchall_6a
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/ErrorInfoParser;->debug:Z

    if-eqz v5, :cond_74

    .line 99
    const-string v5, "ErrorInfoParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 98
    :cond_74
    throw v4

    :cond_75
    sget-boolean v4, Lgov/nist/javax/sip/parser/ErrorInfoParser;->debug:Z

    if-eqz v4, :cond_7e

    .line 99
    const-string v4, "ErrorInfoParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 96
    :cond_7e
    return-object v1
.end method
