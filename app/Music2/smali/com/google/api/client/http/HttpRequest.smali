.class public final Lcom/google/api/client/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field private static final USER_AGENT_SUFFIX:Ljava/lang/String; = "Google-API-Java-Client/1.1.1-alpha"


# instance fields
.field public content:Lcom/google/api/client/http/HttpContent;

.field public disableContentLogging:Z

.field public headers:Lcom/google/api/client/http/HttpHeaders;

.field public method:Ljava/lang/String;

.field public final transport:Lcom/google/api/client/http/HttpTransport;

.field public url:Lcom/google/api/client/http/GenericUrl;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;)V
    .locals 1
    .parameter "transport"
    .parameter "method"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 79
    iget-object v0, p1, Lcom/google/api/client/http/HttpTransport;->defaultHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpHeaders;->clone()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 80
    iput-object p2, p0, Lcom/google/api/client/http/HttpRequest;->method:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private static addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "logger"
    .parameter "logbuf"
    .parameter "lowLevelHttpRequest"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 226
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, stringValue:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, "Authorization"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    const-string v1, "<Not Logged>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :goto_0
    sget-object v1, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_0
    invoke-virtual {p2, p3, v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .line 232
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public execute()Lcom/google/api/client/http/HttpResponse;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v27, v0

    .line 108
    .local v27, transport:Lcom/google/api/client/http/HttpTransport;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/api/client/http/HttpTransport;->intercepters:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/api/client/http/HttpExecuteIntercepter;

    .line 109
    .local v16, intercepter:Lcom/google/api/client/http/HttpExecuteIntercepter;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/api/client/http/HttpExecuteIntercepter;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    goto :goto_0

    .line 112
    .end local v16           #intercepter:Lcom/google/api/client/http/HttpExecuteIntercepter;
    :cond_0
    invoke-static {}, Lcom/google/api/client/http/HttpTransport;->useLowLevelHttpTransport()Lcom/google/api/client/http/LowLevelHttpTransport;

    move-result-object v21

    .line 114
    .local v21, lowLevelHttpTransport:Lcom/google/api/client/http/LowLevelHttpTransport;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->method:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 115
    .local v23, method:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    move-object/from16 v28, v0

    .line 116
    .local v28, url:Lcom/google/api/client/http/GenericUrl;
    invoke-virtual/range {v28 .. v28}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v29

    .line 118
    .local v29, urlString:Ljava/lang/String;
    const-string v31, "DELETE"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 119
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpTransport;->buildDeleteRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v20

    .line 135
    .local v20, lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :goto_1
    sget-object v19, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 136
    .local v19, logger:Ljava/util/logging/Logger;
    sget-object v31, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v18

    .line 137
    .local v18, loggable:Z
    const/16 v17, 0x0

    .line 139
    .local v17, logbuf:Ljava/lang/StringBuilder;
    if-eqz v18, :cond_1

    .line 140
    new-instance v17, Ljava/lang/StringBuilder;

    .end local v17           #logbuf:Ljava/lang/StringBuilder;
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .restart local v17       #logbuf:Ljava/lang/StringBuilder;
    const-string v31, "-------------- REQUEST  --------------"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x20

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object v13, v0

    .line 148
    .local v13, headers:Lcom/google/api/client/http/HttpHeaders;
    move-object v0, v13

    iget-object v0, v0, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_9

    .line 149
    const-string v31, "Google-API-Java-Client/1.1.1-alpha"

    move-object/from16 v0, v31

    move-object v1, v13

    iput-object v0, v1, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 154
    :goto_2
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 155
    .local v12, headerNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/google/api/client/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v14           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 156
    .local v11, headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 157
    .local v24, name:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    .line 158
    .local v22, lowerCase:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_a

    .line 159
    new-instance v31, Ljava/lang/IllegalArgumentException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "multiple headers of the same name (headers are case insensitive): "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 120
    .end local v11           #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12           #headerNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13           #headers:Lcom/google/api/client/http/HttpHeaders;
    .end local v17           #logbuf:Ljava/lang/StringBuilder;
    .end local v18           #loggable:Z
    .end local v19           #logger:Ljava/util/logging/Logger;
    .end local v20           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    .end local v22           #lowerCase:Ljava/lang/String;
    .end local v24           #name:Ljava/lang/String;
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_3
    const-string v31, "GET"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 121
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpTransport;->buildGetRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v20

    .restart local v20       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 122
    .end local v20           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_4
    const-string v31, "PATCH"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 123
    invoke-virtual/range {v21 .. v21}, Lcom/google/api/client/http/LowLevelHttpTransport;->supportsPatch()Z

    move-result v31

    if-nez v31, :cond_5

    .line 124
    new-instance v31, Ljava/lang/IllegalArgumentException;

    const-string v32, "HTTP transport doesn\'t support PATCH"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 127
    :cond_5
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpTransport;->buildPatchRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v20

    .restart local v20       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 128
    .end local v20           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_6
    const-string v31, "POST"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 129
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpTransport;->buildPostRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v20

    .restart local v20       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 130
    .end local v20           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_7
    const-string v31, "PUT"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 131
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpTransport;->buildPutRequest(Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v20

    .restart local v20       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    goto/16 :goto_1

    .line 133
    .end local v20           #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_8
    new-instance v31, Ljava/lang/IllegalArgumentException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "illegal method: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 151
    .restart local v13       #headers:Lcom/google/api/client/http/HttpHeaders;
    .restart local v17       #logbuf:Ljava/lang/StringBuilder;
    .restart local v18       #loggable:Z
    .restart local v19       #logger:Ljava/util/logging/Logger;
    .restart local v20       #lowLevelHttpRequest:Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_9
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v13

    iget-object v0, v0, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " Google-API-Java-Client/1.1.1-alpha"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v13

    iput-object v0, v1, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    goto/16 :goto_2

    .line 163
    .end local v14           #i$:Ljava/util/Iterator;
    .restart local v11       #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12       #headerNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v22       #lowerCase:Ljava/lang/String;
    .restart local v24       #name:Ljava/lang/String;
    :cond_a
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    .line 164
    .local v30, value:Ljava/lang/Object;
    if-eqz v30, :cond_2

    .line 165
    move-object/from16 v0, v30

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v31, v0

    if-eqz v31, :cond_b

    .line 166
    check-cast v30, Ljava/util/Collection;

    .end local v30           #value:Ljava/lang/Object;
    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    .line 167
    .local v25, repeatedValue:Ljava/lang/Object;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/api/client/http/HttpRequest;->addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 170
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v25           #repeatedValue:Ljava/lang/Object;
    .restart local v30       #value:Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    move-object/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/api/client/http/HttpRequest;->addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 175
    .end local v11           #headerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22           #lowerCase:Ljava/lang/String;
    .end local v24           #name:Ljava/lang/String;
    .end local v30           #value:Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    move-object v6, v0

    .line 176
    .local v6, content:Lcom/google/api/client/http/HttpContent;
    if-eqz v6, :cond_15

    .line 178
    invoke-interface {v6}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, contentEncoding:Ljava/lang/String;
    invoke-interface {v6}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v9

    .line 180
    .local v9, contentLength:J
    invoke-interface {v6}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, contentType:Ljava/lang/String;
    const-wide/16 v31, 0x0

    cmp-long v31, v9, v31

    if-eqz v31, :cond_14

    if-nez v8, :cond_14

    if-eqz v7, :cond_14

    invoke-static {v7}, Lcom/google/api/client/http/LogContent;->isTextBasedContentType(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 184
    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->disableContentLogging:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    :cond_d
    sget-object v31, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 186
    :cond_e
    new-instance v5, Lcom/google/api/client/http/LogContent;

    invoke-direct/range {v5 .. v10}, Lcom/google/api/client/http/LogContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;Ljava/lang/String;J)V

    .end local v6           #content:Lcom/google/api/client/http/HttpContent;
    .local v5, content:Lcom/google/api/client/http/HttpContent;
    move-object v6, v5

    .line 190
    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v6       #content:Lcom/google/api/client/http/HttpContent;
    :cond_f
    const-wide/16 v31, 0x100

    cmp-long v31, v9, v31

    if-ltz v31, :cond_14

    .line 191
    new-instance v5, Lcom/google/api/client/http/GZipContent;

    invoke-direct {v5, v6, v7}, Lcom/google/api/client/http/GZipContent;-><init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;)V

    .line 192
    .end local v6           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v5       #content:Lcom/google/api/client/http/HttpContent;
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v8

    .line 193
    invoke-interface {v5}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v9

    .line 197
    :goto_5
    if-eqz v18, :cond_11

    .line 198
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Content-Type: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    if-eqz v8, :cond_10

    .line 201
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Content-Encoding: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_10
    const-wide/16 v31, 0x0

    cmp-long v31, v9, v31

    if-ltz v31, :cond_11

    .line 205
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Content-Length: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_11
    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)V

    .line 212
    .end local v7           #contentType:Ljava/lang/String;
    .end local v8           #contentEncoding:Ljava/lang/String;
    .end local v9           #contentLength:J
    :goto_6
    if-eqz v18, :cond_12

    .line 213
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 216
    :cond_12
    new-instance v26, Lcom/google/api/client/http/HttpResponse;

    invoke-virtual/range {v20 .. v20}, Lcom/google/api/client/http/LowLevelHttpRequest;->execute()Lcom/google/api/client/http/LowLevelHttpResponse;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/HttpResponse;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/LowLevelHttpResponse;)V

    .line 218
    .local v26, response:Lcom/google/api/client/http/HttpResponse;
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode:Z

    move/from16 v31, v0

    if-nez v31, :cond_13

    .line 219
    new-instance v31, Lcom/google/api/client/http/HttpResponseException;

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    throw v31

    .line 221
    :cond_13
    return-object v26

    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .end local v26           #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v6       #content:Lcom/google/api/client/http/HttpContent;
    .restart local v7       #contentType:Ljava/lang/String;
    .restart local v8       #contentEncoding:Ljava/lang/String;
    .restart local v9       #contentLength:J
    :cond_14
    move-object v5, v6

    .end local v6           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v5       #content:Lcom/google/api/client/http/HttpContent;
    goto/16 :goto_5

    .end local v5           #content:Lcom/google/api/client/http/HttpContent;
    .end local v7           #contentType:Ljava/lang/String;
    .end local v8           #contentEncoding:Ljava/lang/String;
    .end local v9           #contentLength:J
    .restart local v6       #content:Lcom/google/api/client/http/HttpContent;
    :cond_15
    move-object v5, v6

    .end local v6           #content:Lcom/google/api/client/http/HttpContent;
    .restart local v5       #content:Lcom/google/api/client/http/HttpContent;
    goto :goto_6
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "encodedUrl"

    .prologue
    .line 85
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 86
    return-void
.end method
