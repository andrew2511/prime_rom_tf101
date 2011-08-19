.class public Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PProfileKeyParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "profilekey"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 49
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
    .line 52
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->debug:Z

    if-eqz v1, :cond_9

    .line 53
    const-string v1, "PProfileKey.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->dbg_enter(Ljava/lang/String;)V

    .line 56
    :cond_9
    :try_start_9
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x85e

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 57
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 58
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 59
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 61
    new-instance v0, Lgov/nist/javax/sip/header/ims/PProfileKey;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PProfileKey;-><init>()V

    .line 62
    .local v0, p:Lgov/nist/javax/sip/header/ims/PProfileKey;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_33

    .line 66
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->debug:Z

    if-eqz v1, :cond_32

    .line 67
    const-string v1, "PProfileKey.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->dbg_leave(Ljava/lang/String;)V

    .line 63
    :cond_32
    return-object v0

    .line 66
    .end local v0           #p:Lgov/nist/javax/sip/header/ims/PProfileKey;
    :catchall_33
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->debug:Z

    if-eqz v2, :cond_3d

    .line 67
    const-string v2, "PProfileKey.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->dbg_leave(Ljava/lang/String;)V

    .line 66
    :cond_3d
    throw v1
.end method
