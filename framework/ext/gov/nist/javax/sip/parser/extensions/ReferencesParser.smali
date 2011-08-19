.class public Lgov/nist/javax/sip/parser/extensions/ReferencesParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ReferencesParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "references"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 38
    sget-boolean v2, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->debug:Z

    if-eqz v2, :cond_9

    .line 39
    const-string v2, "ReasonParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->dbg_enter(Ljava/lang/String;)V

    .line 42
    :cond_9
    const/16 v2, 0x862

    :try_start_b
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->headerName(I)V

    .line 43
    new-instance v1, Lgov/nist/javax/sip/header/extensions/References;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/extensions/References;-><init>()V

    .line 44
    .local v1, references:Lgov/nist/javax/sip/header/extensions/References;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 46
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, callId:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/extensions/References;->setCallId(Ljava/lang/String;)V

    .line 49
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_2e

    .line 52
    sget-boolean v2, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->debug:Z

    if-eqz v2, :cond_2d

    .line 53
    const-string v2, "ReferencesParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->dbg_leave(Ljava/lang/String;)V

    .line 50
    :cond_2d
    return-object v1

    .line 52
    .end local v0           #callId:Ljava/lang/String;
    .end local v1           #references:Lgov/nist/javax/sip/header/extensions/References;
    :catchall_2e
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->debug:Z

    if-eqz v3, :cond_38

    .line 53
    const-string v3, "ReferencesParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->dbg_leave(Ljava/lang/String;)V

    .line 52
    :cond_38
    throw v2
.end method
