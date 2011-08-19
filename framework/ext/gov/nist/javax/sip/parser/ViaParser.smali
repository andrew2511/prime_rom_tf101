.class public Lgov/nist/javax/sip/parser/ViaParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ViaParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .parameter "lexer"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "via"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private parseVia(Lgov/nist/javax/sip/header/Via;)V
    .registers 19
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/16 v15, 0xfff

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v10

    .line 59
    .local v10, protocolName:Lgov/nist/core/Token;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/16 v15, 0xfff

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v11

    .line 67
    .local v11, protocolVersion:Lgov/nist/core/Token;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/16 v15, 0xfff

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v13

    .line 76
    .local v13, transport:Lgov/nist/core/Token;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    new-instance v9, Lgov/nist/javax/sip/header/Protocol;

    invoke-direct {v9}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    .line 79
    .local v9, protocol:Lgov/nist/javax/sip/header/Protocol;
    invoke-virtual {v10}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lgov/nist/javax/sip/header/Protocol;->setProtocolName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v11}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lgov/nist/javax/sip/header/Protocol;->setProtocolVersion(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v13}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lgov/nist/javax/sip/header/Protocol;->setTransport(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Via;->setSentProtocol(Lgov/nist/javax/sip/header/Protocol;)V

    .line 85
    new-instance v5, Lgov/nist/core/HostNameParser;

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/parser/ViaParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v14

    invoke-direct {v5, v14}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    .line 86
    .local v5, hnp:Lgov/nist/core/HostNameParser;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v6

    .line 87
    .local v6, hostPort:Lgov/nist/core/HostPort;
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Via;->setSentBy(Lgov/nist/core/HostPort;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 93
    :goto_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v14

    const/16 v15, 0x3b

    if-ne v14, v15, :cond_119

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/parser/ViaParser;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v8

    .line 97
    .local v8, nameValue:Lgov/nist/core/NameValue;
    invoke-virtual {v8}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, name:Ljava/lang/String;
    const-string v14, "branch"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10a

    .line 99
    invoke-virtual {v8}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, branchId:Ljava/lang/String;
    if-nez v2, :cond_10a

    .line 101
    new-instance v14, Ljava/text/ParseException;

    const-string v15, "null branch Id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 104
    .end local v2           #branchId:Ljava/lang/String;
    :cond_10a
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Via;->setParameter(Lgov/nist/core/NameValue;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_c1

    .line 111
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #nameValue:Lgov/nist/core/NameValue;
    :cond_119
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v14

    const/16 v15, 0x28

    if-ne v14, v15, :cond_160

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const-string v15, "charLexer"

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 114
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v4, comment:Ljava/lang/StringBuffer;
    :goto_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 117
    .local v3, ch:C
    const/16 v14, 0x29

    if-ne v3, v14, :cond_161

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 135
    :cond_156
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Via;->setComment(Ljava/lang/String;)V

    .line 138
    .end local v3           #ch:C
    .end local v4           #comment:Ljava/lang/StringBuffer;
    :cond_160
    return-void

    .line 120
    .restart local v3       #ch:C
    .restart local v4       #comment:Ljava/lang/StringBuffer;
    :cond_161
    const/16 v14, 0x5c

    if-ne v3, v14, :cond_198

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v12

    .line 123
    .local v12, tok:Lgov/nist/core/Token;
    invoke-virtual {v12}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    invoke-virtual {v14}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v12

    .line 126
    invoke-virtual {v12}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_13f

    .line 128
    .end local v12           #tok:Lgov/nist/core/Token;
    :cond_198
    const/16 v14, 0xa

    if-eq v3, v14, :cond_156

    .line 131
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_13f
.end method


# virtual methods
.method protected nameValue()Lgov/nist/core/NameValue;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 145
    sget-boolean v7, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v7, :cond_9

    .line 146
    const-string v7, "nameValue"

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_enter(Ljava/lang/String;)V

    .line 149
    :cond_9
    :try_start_9
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0xfff

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 150
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 152
    .local v2, name:Lgov/nist/core/Token;
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_b2

    .line 155
    const/4 v4, 0x0

    .line 157
    .local v4, quoted:Z
    :try_start_1c
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 159
    .local v1, la:C
    const/16 v7, 0x3d

    if-ne v1, v7, :cond_87

    .line 160
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 161
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 162
    const/4 v5, 0x0

    .line 163
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "received"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_62

    .line 166
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v5

    .line 177
    :goto_45
    new-instance v3, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v5}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    .local v3, nv:Lgov/nist/core/NameValue;
    if-eqz v4, :cond_57

    .line 180
    invoke-virtual {v3}, Lgov/nist/core/NameValue;->setQuotedValue()V
    :try_end_57
    .catchall {:try_start_1c .. :try_end_57} :catchall_b2
    .catch Ljava/text/ParseException; {:try_start_1c .. :try_end_57} :catch_9f

    .line 191
    :cond_57
    sget-boolean v7, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v7, :cond_60

    .line 192
    const-string v7, "nameValue"

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    :cond_60
    move-object v7, v3

    .line 187
    .end local v1           #la:C
    .end local v3           #nv:Lgov/nist/core/NameValue;
    .end local v5           #str:Ljava/lang/String;
    :cond_61
    :goto_61
    return-object v7

    .line 168
    .restart local v1       #la:C
    .restart local v5       #str:Ljava/lang/String;
    :cond_62
    :try_start_62
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    const/16 v8, 0x22

    if-ne v7, v8, :cond_75

    .line 169
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v5

    .line 170
    const/4 v4, 0x1

    goto :goto_45

    .line 172
    :cond_75
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0xfff

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 173
    iget-object v7, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    .line 174
    .local v6, value:Lgov/nist/core/Token;
    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_45

    .line 183
    .end local v5           #str:Ljava/lang/String;
    .end local v6           #value:Lgov/nist/core/Token;
    :cond_87
    new-instance v7, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_95
    .catchall {:try_start_62 .. :try_end_95} :catchall_b2
    .catch Ljava/text/ParseException; {:try_start_62 .. :try_end_95} :catch_9f

    .line 191
    sget-boolean v8, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v8, :cond_61

    .line 192
    const-string v8, "nameValue"

    .end local v1           #la:C
    :goto_9b
    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    goto :goto_61

    .line 186
    :catch_9f
    move-exception v7

    move-object v0, v7

    .line 187
    .local v0, ex:Ljava/text/ParseException;
    :try_start_a1
    new-instance v7, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_b2

    .line 191
    sget-boolean v8, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v8, :cond_61

    .line 192
    const-string v8, "nameValue"

    goto :goto_9b

    .line 191
    .end local v0           #ex:Ljava/text/ParseException;
    .end local v2           #name:Lgov/nist/core/Token;
    .end local v4           #quoted:Z
    :catchall_b2
    move-exception v7

    sget-boolean v8, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v8, :cond_bc

    .line 192
    const-string v8, "nameValue"

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    .line 191
    :cond_bc
    throw v7
.end method

.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 198
    sget-boolean v2, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v2, :cond_b

    .line 199
    const-string v2, "parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_enter(Ljava/lang/String;)V

    .line 201
    :cond_b
    :try_start_b
    new-instance v1, Lgov/nist/javax/sip/header/ViaList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ViaList;-><init>()V

    .line 203
    .local v1, viaList:Lgov/nist/javax/sip/header/ViaList;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x810

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 204
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 205
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 206
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 209
    :cond_28
    new-instance v0, Lgov/nist/javax/sip/header/Via;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Via;-><init>()V

    .line 210
    .local v0, v:Lgov/nist/javax/sip/header/Via;
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/parser/ViaParser;->parseVia(Lgov/nist/javax/sip/header/Via;)V

    .line 211
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ViaList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 212
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 213
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_4e

    .line 214
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 215
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 217
    :cond_4e
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-ne v2, v4, :cond_28

    .line 220
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ViaParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_5e
    .catchall {:try_start_b .. :try_end_5e} :catchall_68

    .line 223
    sget-boolean v2, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v2, :cond_67

    .line 224
    const-string v2, "parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    .line 221
    :cond_67
    return-object v1

    .line 223
    .end local v0           #v:Lgov/nist/javax/sip/header/Via;
    .end local v1           #viaList:Lgov/nist/javax/sip/header/ViaList;
    :catchall_68
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v3, :cond_72

    .line 224
    const-string v3, "parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    .line 223
    :cond_72
    throw v2
.end method
