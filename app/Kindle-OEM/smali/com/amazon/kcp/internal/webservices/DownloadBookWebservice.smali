.class public Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice;
.super Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;
.source "DownloadBookWebservice.java"


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V
    .locals 0
    .parameter "wc"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;-><init>(Lcom/amazon/foundation/internal/net/LightWebConnector;)V

    .line 34
    return-void
.end method

.method public static getNewCDEDownloadErrorDescriber(Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;)Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    .locals 12
    .parameter "todoItem"
    .parameter "messages"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 135
    const/4 v6, 0x1

    .line 136
    .local v6, ok:Z
    new-instance v3, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;

    invoke-direct {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;-><init>()V

    .line 138
    .local v3, handler:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 140
    invoke-virtual {v3}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberHandler;->getRootNode()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v2

    .line 142
    .local v2, errorsNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz v6, :cond_1

    const-string v8, "Errors"

    invoke-virtual {v2, v8}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v11

    .line 144
    :goto_0
    invoke-virtual {v2}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v1

    .line 146
    .local v1, errorNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz v6, :cond_2

    const-string v8, "Error"

    invoke-virtual {v1, v8}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v11

    .line 148
    :goto_1
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v0

    .line 149
    .local v0, codeNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    const-string v8, "Code"

    invoke-virtual {v0, v8}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v11

    .line 150
    :goto_2
    if-eqz v6, :cond_4

    if-eqz v0, :cond_4

    new-instance v8, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$1;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$1;-><init>(Lcom/amazon/kcp/application/models/internal/TodoItem;)V

    invoke-virtual {v0, v8}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v11

    .line 157
    :goto_3
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v5

    .line 158
    .local v5, messageNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    const-string v8, "Message"

    invoke-virtual {v5, v8}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v6, v11

    .line 159
    :goto_4
    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    new-instance v8, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$2;

    invoke-direct {v8, p1}, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$2;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;)V

    invoke-virtual {v5, v8}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v6, v11

    .line 166
    :goto_5
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v7

    .line 167
    .local v7, titleNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    const-string v8, "Title"

    invoke-virtual {v7, v8}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v6, v11

    .line 168
    :goto_6
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    new-instance v8, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$3;

    invoke-direct {v8, p1}, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$3;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;)V

    invoke-virtual {v7, v8}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v8

    if-eqz v8, :cond_8

    move v6, v11

    .line 175
    :goto_7
    invoke-virtual {v1}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->getNewChild()Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;

    move-result-object v4

    .line 176
    .local v4, linkNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    const-string v8, "Link"

    invoke-virtual {v4, v8}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v6, v11

    .line 177
    :goto_8
    if-eqz v6, :cond_a

    if-eqz v4, :cond_a

    new-instance v8, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$4;

    invoke-direct {v8, p1}, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$4;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;)V

    invoke-virtual {v4, v8}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->setContentMapping(Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v8

    if-eqz v8, :cond_a

    move v6, v11

    .line 184
    :goto_9
    if-eqz v6, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "href"

    new-instance v9, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$5;

    invoke-direct {v9, p1}, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice$5;-><init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$MessageWithOptionalLinks;)V

    invoke-virtual {v4, v8, v9}, Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;->addAttributeMapping(Ljava/lang/String;Lcom/amazon/foundation/internal/IStringValueMapping;)Z

    move-result v8

    if-eqz v8, :cond_b

    move v6, v11

    .line 197
    .end local v0           #codeNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .end local v1           #errorNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .end local v2           #errorsNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .end local v4           #linkNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .end local v5           #messageNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .end local v7           #titleNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :goto_a
    if-nez v6, :cond_0

    .line 199
    const/4 v3, 0x0

    .line 202
    :cond_0
    return-object v3

    .restart local v2       #errorsNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_1
    move v6, v10

    .line 142
    goto/16 :goto_0

    .restart local v1       #errorNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_2
    move v6, v10

    .line 146
    goto/16 :goto_1

    .restart local v0       #codeNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_3
    move v6, v10

    .line 149
    goto/16 :goto_2

    :cond_4
    move v6, v10

    .line 150
    goto/16 :goto_3

    .restart local v5       #messageNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_5
    move v6, v10

    .line 158
    goto :goto_4

    :cond_6
    move v6, v10

    .line 159
    goto :goto_5

    .restart local v7       #titleNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_7
    move v6, v10

    .line 167
    goto :goto_6

    :cond_8
    move v6, v10

    .line 168
    goto :goto_7

    .restart local v4       #linkNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_9
    move v6, v10

    .line 176
    goto :goto_8

    :cond_a
    move v6, v10

    .line 177
    goto :goto_9

    :cond_b
    move v6, v10

    .line 184
    goto :goto_a

    .line 194
    .end local v0           #codeNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .end local v1           #errorNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .end local v2           #errorsNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .end local v4           #linkNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .end local v5           #messageNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    .end local v7           #titleNode:Lcom/amazon/foundation/internal/parser/xml/SAXDescriberNode;
    :cond_c
    const/4 v6, 0x0

    goto :goto_a
.end method


# virtual methods
.method public createDownloadRequest(Lcom/amazon/kcp/application/AuthenticationManager;Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/foundation/internal/IDataOutputStream;JJLjava/lang/String;Lcom/amazon/foundation/IStatusTracker;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {}, Lcom/amazon/kcp/internal/webservices/KindleWebServiceURLs;->getDownloadBookURL()Lcom/amazon/foundation/internal/WebserviceURL;

    move-result-object v9

    .line 56
    invoke-virtual {v9}, Lcom/amazon/foundation/internal/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getType()Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    const-string v3, "GET"

    const-string v5, ""

    invoke-static {p1, v3, v4, v5}, Lcom/amazon/kcp/internal/webservices/KindleStoreWebServiceClient;->generateSignedHeaders(Lcom/amazon/kcp/application/AuthenticationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v7

    .line 63
    const-wide/16 v5, 0x0

    cmp-long v3, p4, v5

    if-ltz v3, :cond_3

    const-wide/16 v5, 0x0

    cmp-long v3, p6, v5

    if-lez v3, :cond_3

    .line 65
    const-string v3, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-long v10, p4, p6

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting to download bytes "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-long v5, p4, p6

    const-wide/16 v10, 0x1

    sub-long/2addr v5, v10

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".  Response may not give us this chunk."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    :goto_0
    if-eqz p8, :cond_1

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 93
    const-string v3, "ResumableDownloadToken"

    move-object v0, v7

    move-object v1, v3

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting ResumableDownloadToken to \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/amazon/kcp/internal/webservices/DownloadBookWebservice;->wc:Lcom/amazon/foundation/internal/net/LightWebConnector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/amazon/foundation/internal/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    move-object/from16 v5, p3

    move-object/from16 v6, p9

    invoke-static/range {v3 .. v8}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;Ljava/util/Hashtable;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v3

    .line 104
    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {v9}, Lcom/amazon/foundation/internal/WebserviceURL;->getTimeout()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->SetTimeout(J)V

    .line 109
    :cond_2
    return-object v3

    .line 70
    :cond_3
    const-wide/16 v5, 0x0

    cmp-long v3, p4, v5

    if-ltz v3, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v3, p6, v5

    if-nez v3, :cond_4

    .line 72
    const-string v3, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting to download from byte "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " onward.  Response may not give us this."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 78
    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v3, p4, v5

    if-nez v3, :cond_5

    const-wide/16 v5, 0x0

    cmp-long v3, p6, v5

    if-eqz v3, :cond_0

    .line 84
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting illegal byte range to download (downloadStartOffset:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", maxDownloadLength:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ").  Defaulting to download all bytes.  Response may not give us this."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
