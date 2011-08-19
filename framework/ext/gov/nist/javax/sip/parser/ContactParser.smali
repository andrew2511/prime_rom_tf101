.class public Lgov/nist/javax/sip/parser/ContactParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ContactParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 51
    iput-object p1, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "contact"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 47
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

    const/16 v8, 0x2a

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    const/16 v4, 0x827

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContactParser;->headerName(I)V

    .line 57
    new-instance v3, Lgov/nist/javax/sip/header/ContactList;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/ContactList;-><init>()V

    .line 59
    .local v3, retval:Lgov/nist/javax/sip/header/ContactList;
    :goto_12
    new-instance v0, Lgov/nist/javax/sip/header/Contact;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    .line 60
    .local v0, contact:Lgov/nist/javax/sip/header/Contact;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v8, :cond_5a

    .line 61
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 62
    .local v2, next:C
    const/16 v4, 0x20

    if-eq v2, v4, :cond_33

    const/16 v4, 0x9

    if-eq v2, v4, :cond_33

    const/16 v4, 0xd

    if-eq v2, v4, :cond_33

    if-ne v2, v7, :cond_56

    .line 63
    :cond_33
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 64
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/header/Contact;->setWildCardFlag(Z)V

    .line 71
    .end local v2           #next:C
    :goto_3b
    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/ContactList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 72
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 73
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 74
    .local v1, la:C
    if-ne v1, v9, :cond_5e

    .line 75
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContactParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_12

    .line 66
    .end local v1           #la:C
    .restart local v2       #next:C
    :cond_56
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    goto :goto_3b

    .line 69
    .end local v2           #next:C
    :cond_5a
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    goto :goto_3b

    .line 77
    .restart local v1       #la:C
    :cond_5e
    if-eq v1, v7, :cond_62

    if-nez v1, :cond_63

    .line 82
    :cond_62
    return-object v3

    .line 80
    :cond_63
    const-string v4, "unexpected char"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContactParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
.end method
