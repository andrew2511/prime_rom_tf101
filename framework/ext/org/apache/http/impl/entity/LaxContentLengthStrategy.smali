.class public Lorg/apache/http/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

# interfaces
.implements Lorg/apache/http/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method


# virtual methods
.method public determineLength(Lorg/apache/http/HttpMessage;)J
    .registers 22
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 188
    if-nez p1, :cond_a

    .line 189
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "HTTP message may not be null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 192
    :cond_a
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    .line 193
    .local v13, params:Lorg/apache/http/params/HttpParams;
    const-string v17, "http.protocol.strict-transfer-encoding"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v15

    .line 195
    .local v15, strict:Z
    const-string v17, "Transfer-Encoding"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v16

    .line 196
    .local v16, transferEncodingHeader:Lorg/apache/http/Header;
    const-string v17, "Content-Length"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 199
    .local v3, contentLengthHeader:Lorg/apache/http/Header;
    if-eqz v16, :cond_d8

    .line 200
    const/4 v8, 0x0

    .line 202
    .local v8, encodings:[Lorg/apache/http/HeaderElement;
    :try_start_2e
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;
    :try_end_31
    .catch Lorg/apache/http/ParseException; {:try_start_2e .. :try_end_31} :catch_7e

    move-result-object v8

    .line 208
    if-eqz v15, :cond_a4

    .line 210
    const/4 v11, 0x0

    .local v11, i:I
    :goto_35
    move-object v0, v8

    array-length v0, v0

    move/from16 v17, v0

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_a4

    .line 211
    aget-object v17, v8, v11

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, encoding:Ljava/lang/String;
    if-eqz v7, :cond_a1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_a1

    const-string v17, "chunked"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a1

    const-string v17, "identity"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a1

    .line 215
    new-instance v17, Lorg/apache/http/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupported transfer encoding: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 203
    .end local v7           #encoding:Ljava/lang/String;
    .end local v11           #i:I
    :catch_7e
    move-exception v14

    .line 204
    .local v14, px:Lorg/apache/http/ParseException;
    new-instance v17, Lorg/apache/http/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid Transfer-Encoding header value: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 210
    .end local v14           #px:Lorg/apache/http/ParseException;
    .restart local v7       #encoding:Ljava/lang/String;
    .restart local v11       #i:I
    :cond_a1
    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    .line 220
    .end local v7           #encoding:Ljava/lang/String;
    .end local v11           #i:I
    :cond_a4
    array-length v12, v8

    .line 221
    .local v12, len:I
    const-string v17, "identity"

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b4

    .line 222
    const-wide/16 v17, -0x1

    .line 256
    .end local v8           #encodings:[Lorg/apache/http/HeaderElement;
    .end local v12           #len:I
    :goto_b3
    return-wide v17

    .line 223
    .restart local v8       #encodings:[Lorg/apache/http/HeaderElement;
    .restart local v12       #len:I
    :cond_b4
    if-lez v12, :cond_cb

    const-string v17, "chunked"

    const/16 v18, 0x1

    sub-int v18, v12, v18

    aget-object v18, v8, v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_cb

    .line 225
    const-wide/16 v17, -0x2

    goto :goto_b3

    .line 227
    :cond_cb
    if-eqz v15, :cond_d5

    .line 228
    new-instance v17, Lorg/apache/http/ProtocolException;

    const-string v18, "Chunk-encoding must be the last one applied"

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 230
    :cond_d5
    const-wide/16 v17, -0x1

    goto :goto_b3

    .line 232
    .end local v8           #encodings:[Lorg/apache/http/HeaderElement;
    .end local v12           #len:I
    :cond_d8
    if-eqz v3, :cond_142

    .line 233
    const-wide/16 v4, -0x1

    .line 234
    .local v4, contentlen:J
    const-string v17, "Content-Length"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v10

    .line 235
    .local v10, headers:[Lorg/apache/http/Header;
    if-eqz v15, :cond_fc

    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_fc

    .line 236
    new-instance v17, Lorg/apache/http/ProtocolException;

    const-string v18, "Multiple content length headers"

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 238
    :cond_fc
    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v11, v17, v18

    .restart local v11       #i:I
    :goto_104
    if-ltz v11, :cond_110

    .line 239
    aget-object v9, v10, v11

    .line 241
    .local v9, header:Lorg/apache/http/Header;
    :try_start_108
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_10f
    .catch Ljava/lang/NumberFormatException; {:try_start_108 .. :try_end_10f} :catch_119

    move-result-wide v4

    .line 250
    .end local v9           #header:Lorg/apache/http/Header;
    :cond_110
    const-wide/16 v17, 0x0

    cmp-long v17, v4, v17

    if-ltz v17, :cond_13e

    move-wide/from16 v17, v4

    .line 251
    goto :goto_b3

    .line 243
    .restart local v9       #header:Lorg/apache/http/Header;
    :catch_119
    move-exception v17

    move-object/from16 v6, v17

    .line 244
    .local v6, e:Ljava/lang/NumberFormatException;
    if-eqz v15, :cond_13b

    .line 245
    new-instance v17, Lorg/apache/http/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid content length: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 238
    :cond_13b
    add-int/lit8 v11, v11, -0x1

    goto :goto_104

    .line 253
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v9           #header:Lorg/apache/http/Header;
    :cond_13e
    const-wide/16 v17, -0x1

    goto/16 :goto_b3

    .line 256
    .end local v4           #contentlen:J
    .end local v10           #headers:[Lorg/apache/http/Header;
    .end local v11           #i:I
    :cond_142
    const-wide/16 v17, -0x1

    goto/16 :goto_b3
.end method
