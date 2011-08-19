.class public Lcom/google/api/client/json/JsonHttpParser;
.super Ljava/lang/Object;
.source "JsonHttpParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# instance fields
.field public contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/google/api/client/json/JsonHttpParser;->contentType:Ljava/lang/String;

    return-void
.end method

.method public static parserForResponse(Lcom/google/api/client/http/HttpResponse;)Lorg/codehaus/jackson/JsonParser;
    .locals 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 74
    .local v0, content:Ljava/io/InputStream;
    :try_start_0
    sget-object v2, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 75
    .local v1, parser:Lorg/codehaus/jackson/JsonParser;
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v0, 0x0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    throw v0

    :cond_0
    return-object v1

    .line 79
    .end local v1           #parser:Lorg/codehaus/jackson/JsonParser;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v2
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/api/client/json/JsonHttpParser;->contentType:Ljava/lang/String;

    return-object v0
.end method

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
    .line 54
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/api/client/json/JsonHttpParser;->parserForResponse(Lcom/google/api/client/http/HttpResponse;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
