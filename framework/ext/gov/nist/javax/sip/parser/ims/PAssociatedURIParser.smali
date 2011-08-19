.class public Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PAssociatedURIParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "associatedURI"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 71
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
    const/16 v4, 0x2c

    .line 81
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->debug:Z

    if-eqz v2, :cond_b

    .line 82
    const-string v2, "PAssociatedURIParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->dbg_enter(Ljava/lang/String;)V

    .line 84
    :cond_b
    new-instance v1, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;-><init>()V

    .line 88
    .local v1, associatedURIList:Lgov/nist/javax/sip/header/ims/PAssociatedURIList;
    const/16 v2, 0x851

    :try_start_12
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->headerName(I)V

    .line 90
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;-><init>()V

    .line 91
    .local v0, associatedURI:Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    const-string v2, "P-Associated-URI"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->setHeaderName(Ljava/lang/String;)V

    .line 93
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 94
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 96
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 97
    :goto_2a
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-ne v2, v4, :cond_5b

    .line 99
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 100
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 102
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    .end local v0           #associatedURI:Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;-><init>()V

    .line 103
    .restart local v0       #associatedURI:Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 104
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 106
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_4f
    .catchall {:try_start_12 .. :try_end_4f} :catchall_50

    goto :goto_2a

    .line 117
    .end local v0           #associatedURI:Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    :catchall_50
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->debug:Z

    if-eqz v3, :cond_5a

    .line 118
    const-string v3, "PAssociatedURIParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->dbg_leave(Ljava/lang/String;)V

    .line 117
    :cond_5a
    throw v2

    .line 108
    .restart local v0       #associatedURI:Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    :cond_5b
    :try_start_5b
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 109
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_50

    .line 117
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->debug:Z

    if-eqz v2, :cond_70

    .line 118
    const-string v2, "PAssociatedURIParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->dbg_leave(Ljava/lang/String;)V

    .line 111
    :cond_70
    return-object v1
.end method
