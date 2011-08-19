.class public Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PCalledPartyIDParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "calledPartyID"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->debug:Z

    if-eqz v1, :cond_9

    .line 70
    const-string v1, "PCalledPartyIDParser.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->dbg_enter(Ljava/lang/String;)V

    .line 73
    :cond_9
    :try_start_9
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x850

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 74
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 75
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    new-instance v0, Lgov/nist/javax/sip/header/ims/PCalledPartyID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PCalledPartyID;-><init>()V

    .line 79
    .local v0, calledPartyID:Lgov/nist/javax/sip/header/ims/PCalledPartyID;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_33

    .line 84
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->debug:Z

    if-eqz v1, :cond_32

    .line 85
    const-string v1, "PCalledPartyIDParser.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 81
    :cond_32
    return-object v0

    .line 84
    .end local v0           #calledPartyID:Lgov/nist/javax/sip/header/ims/PCalledPartyID;
    :catchall_33
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->debug:Z

    if-eqz v2, :cond_3d

    .line 85
    const-string v2, "PCalledPartyIDParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 84
    :cond_3d
    throw v1
.end method
