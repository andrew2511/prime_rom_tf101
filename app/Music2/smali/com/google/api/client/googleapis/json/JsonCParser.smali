.class public final Lcom/google/api/client/googleapis/json/JsonCParser;
.super Lcom/google/api/client/json/JsonHttpParser;
.source "JsonCParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/api/client/json/JsonHttpParser;-><init>()V

    return-void
.end method

.method public static parserForResponse(Lcom/google/api/client/http/HttpResponse;)Lorg/codehaus/jackson/JsonParser;
    .locals 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    .line 70
    .local v0, contentType:Ljava/lang/String;
    const-string v3, "application/json"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong content type: expected <application/json> but got <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_0
    const/4 v1, 0x1

    .line 77
    .local v1, failed:Z
    invoke-static {p0}, Lcom/google/api/client/json/JsonHttpParser;->parserForResponse(Lcom/google/api/client/http/HttpResponse;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 79
    .local v2, parser:Lorg/codehaus/jackson/JsonParser;
    :try_start_0
    iget-boolean v3, p0, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode:Z

    if-eqz v3, :cond_2

    const-string v3, "data"

    :goto_0
    invoke-static {v2, v3}, Lcom/google/api/client/json/Json;->skipToKey(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_3

    .line 81
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "data key not found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->close()V

    :cond_1
    throw v3

    .line 79
    :cond_2
    :try_start_1
    const-string v3, "error"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :cond_3
    const/4 v1, 0x0

    .line 86
    if-eqz v1, :cond_4

    .line 87
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->close()V

    :cond_4
    return-object v2
.end method


# virtual methods
.method public parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "response"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/api/client/googleapis/json/JsonCParser;->parserForResponse(Lcom/google/api/client/http/HttpResponse;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/google/api/client/json/Json;->parseAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
