.class public final Lcom/google/api/client/googleapis/json/GoogleApi;
.super Ljava/lang/Object;
.source "GoogleApi.java"


# instance fields
.field public name:Ljava/lang/String;

.field public serviceDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;

.field public transport:Lcom/google/api/client/http/HttpTransport;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/api/client/googleapis/GoogleTransport;->create()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleApi;->transport:Lcom/google/api/client/http/HttpTransport;

    return-void
.end method


# virtual methods
.method public buildRequest(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;
    .locals 24
    .parameter "fullyQualifiedMethodName"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/googleapis/json/GoogleApi;->name:Ljava/lang/String;

    move-object v9, v0

    .line 94
    .local v9, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/googleapis/json/GoogleApi;->version:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 95
    .local v20, version:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/googleapis/json/GoogleApi;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v16, v0

    .line 96
    .local v16, transport:Lcom/google/api/client/http/HttpTransport;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/googleapis/json/GoogleApi;->serviceDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;

    move-object v15, v0

    .line 97
    .local v15, serviceDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;
    invoke-static {v9}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static/range {v20 .. v20}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static/range {v16 .. v16}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static/range {p1 .. p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    if-nez v15, :cond_0

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/googleapis/json/GoogleApi;->load()V

    .line 104
    :cond_0
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;->getResourceMethod(Ljava/lang/String;)Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceMethod;

    move-result-object v8

    .line 106
    .local v8, method:Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceMethod;
    const-string v21, "method not found: %s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    move-object v0, v8

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual/range {v16 .. v16}, Lcom/google/api/client/http/HttpTransport;->buildRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v13

    .line 110
    .local v13, request:Lcom/google/api/client/http/HttpRequest;
    move-object v0, v8

    iget-object v0, v0, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceMethod;->httpMethod:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v13

    iput-object v0, v1, Lcom/google/api/client/http/HttpRequest;->method:Ljava/lang/String;

    .line 111
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v14, requestMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/DataUtil;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 114
    .local v5, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    .line 115
    .local v18, value:Ljava/lang/Object;
    if-eqz v18, :cond_1

    .line 116
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v14

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    .end local v5           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18           #value:Ljava/lang/Object;
    :cond_2
    new-instance v17, Lcom/google/api/client/http/GenericUrl;

    move-object v0, v15

    iget-object v0, v0, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;->baseUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 121
    .local v17, url:Lcom/google/api/client/http/GenericUrl;
    iget-object v12, v8, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceMethod;->pathUrl:Ljava/lang/String;

    .line 122
    .local v12, pathUrl:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v11, pathBuf:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 124
    .local v4, cur:I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    .line 125
    .local v7, length:I
    :goto_1
    if-ge v4, v7, :cond_3

    .line 126
    const/16 v21, 0x7b

    move-object v0, v12

    move/from16 v1, v21

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 127
    .local v10, next:I
    const/16 v21, -0x1

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 128
    invoke-virtual {v12, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .end local v10           #next:I
    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/GenericUrl;->appendRawPath(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/GenericUrl;->putAll(Ljava/util/Map;)V

    .line 145
    move-object/from16 v0, v17

    move-object v1, v13

    iput-object v0, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 146
    return-object v13

    .line 131
    .restart local v10       #next:I
    :cond_4
    invoke-virtual {v12, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/16 v21, 0x7d

    add-int/lit8 v22, v10, 0x2

    move-object v0, v12

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 133
    .local v3, close:I
    add-int/lit8 v21, v10, 0x1

    move-object v0, v12

    move/from16 v1, v21

    move v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 134
    .local v19, varName:Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    .line 135
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 136
    .local v18, value:Ljava/lang/String;
    if-nez v18, :cond_5

    .line 137
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "missing required path parameter: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 140
    :cond_5
    invoke-static/range {v18 .. v18}, Lcom/google/api/client/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public load()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/api/client/googleapis/json/GoogleApi;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/api/client/googleapis/json/DiscoveryDocument;->load(Ljava/lang/String;)Lcom/google/api/client/googleapis/json/DiscoveryDocument;

    move-result-object v0

    .line 71
    .local v0, doc:Lcom/google/api/client/googleapis/json/DiscoveryDocument;
    iget-object v1, v0, Lcom/google/api/client/googleapis/json/DiscoveryDocument;->apiDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;

    iget-object v2, p0, Lcom/google/api/client/googleapis/json/GoogleApi;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/api/client/googleapis/json/DiscoveryDocument$APIDefinition;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;

    iput-object v1, p0, Lcom/google/api/client/googleapis/json/GoogleApi;->serviceDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;

    .line 72
    iget-object v1, p0, Lcom/google/api/client/googleapis/json/GoogleApi;->serviceDefinition:Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;

    const-string v2, "version not found: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/api/client/googleapis/json/GoogleApi;->version:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method
