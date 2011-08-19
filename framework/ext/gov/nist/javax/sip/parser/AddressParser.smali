.class public Lgov/nist/javax/sip/parser/AddressParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "AddressParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 4
    .parameter "lexer"

    .prologue
    .line 40
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 41
    iput-object p1, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    .line 42
    iget-object v0, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "charLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "address"

    .prologue
    .line 45
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 46
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "charLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    .line 47
    return-void
.end method


# virtual methods
.method public address(Z)Lgov/nist/javax/sip/address/AddressImpl;
    .registers 13
    .parameter "inclParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3c

    const/16 v9, 0x3a

    const/16 v8, 0x2f

    const/16 v7, 0x22

    .line 93
    sget-boolean v6, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    if-eqz v6, :cond_11

    .line 94
    const-string v6, "address"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_enter(Ljava/lang/String;)V

    .line 95
    :cond_11
    const/4 v2, 0x0

    .line 97
    .local v2, retval:Lgov/nist/javax/sip/address/AddressImpl;
    const/4 v0, 0x0

    .line 98
    .local v0, k:I
    :goto_13
    :try_start_13
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 99
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 100
    .local v1, la:C
    if-eq v1, v10, :cond_29

    if-eq v1, v7, :cond_29

    if-eq v1, v9, :cond_29

    if-ne v1, v8, :cond_41

    .line 110
    .end local v1           #la:C
    :cond_29
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 111
    .restart local v1       #la:C
    if-eq v1, v10, :cond_33

    if-ne v1, v7, :cond_58

    .line 112
    :cond_33
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/AddressParser;->nameAddr()Lgov/nist/javax/sip/address/AddressImpl;
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_4a

    move-result-object v2

    .line 124
    :goto_37
    sget-boolean v6, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    if-eqz v6, :cond_40

    .line 125
    const-string v6, "address"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    .line 122
    :cond_40
    return-object v2

    .line 105
    :cond_41
    if-nez v1, :cond_55

    .line 106
    :try_start_43
    const-string v6, "unexpected EOL"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AddressParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_4a

    .line 124
    .end local v1           #la:C
    :catchall_4a
    move-exception v6

    :goto_4b
    sget-boolean v7, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    if-eqz v7, :cond_54

    .line 125
    const-string v7, "address"

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    .line 124
    :cond_54
    throw v6

    .line 108
    .restart local v1       #la:C
    :cond_55
    add-int/lit8 v0, v0, 0x1

    .line 109
    goto :goto_13

    .line 113
    :cond_58
    if-eq v1, v9, :cond_5c

    if-ne v1, v8, :cond_77

    .line 114
    :cond_5c
    :try_start_5c
    new-instance v3, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v3}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_4a

    .line 115
    .end local v2           #retval:Lgov/nist/javax/sip/address/AddressImpl;
    .local v3, retval:Lgov/nist/javax/sip/address/AddressImpl;
    :try_start_61
    new-instance v5, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v6, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v6, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v5, v6}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 116
    .local v5, uriParser:Lgov/nist/javax/sip/parser/URLParser;
    invoke-virtual {v5, p1}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v4

    .line 117
    .local v4, uri:Lgov/nist/javax/sip/address/GenericURI;
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 118
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V
    :try_end_75
    .catchall {:try_start_61 .. :try_end_75} :catchall_7e

    move-object v2, v3

    .line 119
    .end local v3           #retval:Lgov/nist/javax/sip/address/AddressImpl;
    .restart local v2       #retval:Lgov/nist/javax/sip/address/AddressImpl;
    goto :goto_37

    .line 120
    .end local v4           #uri:Lgov/nist/javax/sip/address/GenericURI;
    .end local v5           #uriParser:Lgov/nist/javax/sip/parser/URLParser;
    :cond_77
    :try_start_77
    const-string v6, "Bad address spec"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AddressParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_4a

    .line 124
    .end local v2           #retval:Lgov/nist/javax/sip/address/AddressImpl;
    .restart local v3       #retval:Lgov/nist/javax/sip/address/AddressImpl;
    :catchall_7e
    move-exception v6

    move-object v2, v3

    .end local v3           #retval:Lgov/nist/javax/sip/address/AddressImpl;
    .restart local v2       #retval:Lgov/nist/javax/sip/address/AddressImpl;
    goto :goto_4b
.end method

.method protected nameAddr()Lgov/nist/javax/sip/address/AddressImpl;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3c

    .line 50
    sget-boolean v5, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    if-eqz v5, :cond_b

    .line 51
    const-string v5, "nameAddr"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_enter(Ljava/lang/String;)V

    .line 53
    :cond_b
    :try_start_b
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v7, :cond_57

    .line 54
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 55
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v6, "sip_urlLexer"

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 56
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 57
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    .local v4, uriParser:Lgov/nist/javax/sip/parser/URLParser;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    .line 59
    .local v3, uri:Lgov/nist/javax/sip/address/GenericURI;
    new-instance v2, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 60
    .local v2, retval:Lgov/nist/javax/sip/address/AddressImpl;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 61
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 62
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_4c
    .catchall {:try_start_b .. :try_end_4c} :catchall_c4

    .line 87
    sget-boolean v5, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    if-eqz v5, :cond_55

    .line 88
    const-string v5, "nameAddr"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    :cond_55
    move-object v5, v2

    .line 84
    :goto_56
    return-object v5

    .line 66
    .end local v2           #retval:Lgov/nist/javax/sip/address/AddressImpl;
    .end local v3           #uri:Lgov/nist/javax/sip/address/GenericURI;
    .end local v4           #uriParser:Lgov/nist/javax/sip/parser/URLParser;
    :cond_57
    :try_start_57
    new-instance v0, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 67
    .local v0, addr:Lgov/nist/javax/sip/address/AddressImpl;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, name:Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_bb

    .line 70
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    :goto_77
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setDisplayName(Ljava/lang/String;)V

    .line 75
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 78
    .restart local v4       #uriParser:Lgov/nist/javax/sip/parser/URLParser;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    .line 79
    .restart local v3       #uri:Lgov/nist/javax/sip/address/GenericURI;
    new-instance v2, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/AddressImpl;-><init>()V

    .line 80
    .restart local v2       #retval:Lgov/nist/javax/sip/address/AddressImpl;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/address/AddressImpl;->setAddressType(I)V

    .line 81
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/address/AddressImpl;->setURI(Ljavax/sip/address/URI;)V

    .line 82
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_b0
    .catchall {:try_start_57 .. :try_end_b0} :catchall_c4

    .line 87
    sget-boolean v5, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    if-eqz v5, :cond_b9

    .line 88
    const-string v5, "nameAddr"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    :cond_b9
    move-object v5, v0

    .line 84
    goto :goto_56

    .line 73
    .end local v2           #retval:Lgov/nist/javax/sip/address/AddressImpl;
    .end local v3           #uri:Lgov/nist/javax/sip/address/GenericURI;
    .end local v4           #uriParser:Lgov/nist/javax/sip/parser/URLParser;
    :cond_bb
    :try_start_bb
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AddressParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_c4

    move-result-object v1

    goto :goto_77

    .line 87
    .end local v0           #addr:Lgov/nist/javax/sip/address/AddressImpl;
    .end local v1           #name:Ljava/lang/String;
    :catchall_c4
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/AddressParser;->debug:Z

    if-eqz v6, :cond_ce

    .line 88
    const-string v6, "nameAddr"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AddressParser;->dbg_leave(Ljava/lang/String;)V

    .line 87
    :cond_ce
    throw v5
.end method
