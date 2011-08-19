.class public Lgov/nist/javax/sip/parser/ContentDispositionParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ContentDispositionParser.java"


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
    .parameter "contentDisposition"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 67
    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    if-eqz v3, :cond_9

    .line 68
    const-string v3, "ContentDispositionParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_9
    const/16 v3, 0x834

    :try_start_b
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->headerName(I)V

    .line 73
    new-instance v0, Lgov/nist/javax/sip/header/ContentDisposition;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentDisposition;-><init>()V

    .line 74
    .local v0, cd:Lgov/nist/javax/sip/header/ContentDisposition;
    const-string v3, "Content-Disposition"

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentDisposition;->setHeaderName(Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 80
    .local v2, token:Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentDisposition;->setDispositionType(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 82
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_45
    .catchall {:try_start_b .. :try_end_45} :catchall_5a
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_45} :catch_4f

    .line 91
    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    if-eqz v3, :cond_4e

    .line 92
    const-string v3, "ContentDispositionParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_leave(Ljava/lang/String;)V

    .line 87
    :cond_4e
    return-object v0

    .line 88
    .end local v0           #cd:Lgov/nist/javax/sip/header/ContentDisposition;
    .end local v2           #token:Lgov/nist/core/Token;
    :catch_4f
    move-exception v3

    move-object v1, v3

    .line 89
    .local v1, ex:Ljava/text/ParseException;
    :try_start_51
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5a

    .line 91
    .end local v1           #ex:Ljava/text/ParseException;
    :catchall_5a
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    if-eqz v4, :cond_64

    .line 92
    const-string v4, "ContentDispositionParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_leave(Ljava/lang/String;)V

    .line 91
    :cond_64
    throw v3
.end method
