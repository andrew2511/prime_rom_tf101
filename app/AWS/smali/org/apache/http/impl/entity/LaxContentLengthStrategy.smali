.class public Lorg/apache/http/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

# interfaces
.implements Lorg/apache/http/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public determineLength(Lorg/apache/http/HttpMessage;)J
    .locals 20
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "HTTP message may not be null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 69
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    .line 70
    .local v13, params:Lorg/apache/http/params/HttpParams;
    const-string v17, "http.protocol.strict-transfer-encoding"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v15

    .line 72
    .local v15, strict:Z
    const-string v17, "Transfer-Encoding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v16

    .line 73
    .local v16, transferEncodingHeader:Lorg/apache/http/Header;
    const-string v17, "Content-Length"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 76
    .local v3, contentLengthHeader:Lorg/apache/http/Header;
    if-eqz v16, :cond_6

    .line 77
    const/4 v8, 0x0

    .line 79
    .local v8, encodings:[Lorg/apache/http/HeaderElement;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 85
    if-eqz v15, :cond_2

    .line 87
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object v0, v8

    array-length v0, v0

    move/from16 v17, v0

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 88
    aget-object v17, v8, v11

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, encoding:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    const-string v17, "chunked"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "identity"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 92
    new-instance v17, Lorg/apache/http/ProtocolException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "Unsupported transfer encoding: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 80
    .end local v7           #encoding:Ljava/lang/String;
    .end local v11           #i:I
    :catch_0
    move-exception v14

    .line 81
    .local v14, px:Lorg/apache/http/ParseException;
    new-instance v17, Lorg/apache/http/ProtocolException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "Invalid Transfer-Encoding header value: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 87
    .end local v14           #px:Lorg/apache/http/ParseException;
    .restart local v7       #encoding:Ljava/lang/String;
    .restart local v11       #i:I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 97
    .end local v7           #encoding:Ljava/lang/String;
    .end local v11           #i:I
    :cond_2
    array-length v12, v8

    .line 98
    .local v12, len:I
    const-string v17, "identity"

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 99
    const-wide/16 v17, -0x1

    .line 133
    .end local v8           #encodings:[Lorg/apache/http/HeaderElement;
    .end local v12           #len:I
    :goto_1
    return-wide v17

    .line 100
    .restart local v8       #encodings:[Lorg/apache/http/HeaderElement;
    .restart local v12       #len:I
    :cond_3
    if-lez v12, :cond_4

    const-string v17, "chunked"

    const/16 v18, 0x1

    sub-int v18, v12, v18

    aget-object v18, v8, v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 102
    const-wide/16 v17, -0x2

    goto :goto_1

    .line 104
    :cond_4
    if-eqz v15, :cond_5

    .line 105
    new-instance v17, Lorg/apache/http/ProtocolException;

    const-string v18, "Chunk-encoding must be the last one applied"

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 107
    :cond_5
    const-wide/16 v17, -0x1

    goto :goto_1

    .line 109
    .end local v8           #encodings:[Lorg/apache/http/HeaderElement;
    .end local v12           #len:I
    :cond_6
    if-eqz v3, :cond_b

    .line 110
    const-wide/16 v4, -0x1

    .line 111
    .local v4, contentlen:J
    const-string v17, "Content-Length"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v10

    .line 112
    .local v10, headers:[Lorg/apache/http/Header;
    if-eqz v15, :cond_7

    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 113
    new-instance v17, Lorg/apache/http/ProtocolException;

    const-string v18, "Multiple content length headers"

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 115
    :cond_7
    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v11, v17, v18

    .restart local v11       #i:I
    :goto_2
    if-ltz v11, :cond_8

    .line 116
    aget-object v9, v10, v11

    .line 118
    .local v9, header:Lorg/apache/http/Header;
    :try_start_1
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 127
    .end local v9           #header:Lorg/apache/http/Header;
    :cond_8
    const-wide/16 v17, 0x0

    cmp-long v17, v4, v17

    if-ltz v17, :cond_a

    move-wide/from16 v17, v4

    .line 128
    goto :goto_1

    .line 120
    .restart local v9       #header:Lorg/apache/http/Header;
    :catch_1
    move-exception v17

    move-object/from16 v6, v17

    .line 121
    .local v6, e:Ljava/lang/NumberFormatException;
    if-eqz v15, :cond_9

    .line 122
    new-instance v17, Lorg/apache/http/ProtocolException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "Invalid content length: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 115
    :cond_9
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 130
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v9           #header:Lorg/apache/http/Header;
    :cond_a
    const-wide/16 v17, -0x1

    goto/16 :goto_1

    .line 133
    .end local v4           #contentlen:J
    .end local v10           #headers:[Lorg/apache/http/Header;
    .end local v11           #i:I
    :cond_b
    const-wide/16 v17, -0x1

    goto/16 :goto_1
.end method
