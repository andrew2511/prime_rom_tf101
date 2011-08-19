.class public final Lcom/google/api/client/googleapis/json/JsonFeedParser;
.super Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;
.source "JsonFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final itemClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .parameter "parser"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/google/api/client/googleapis/json/JsonFeedParser;,"Lcom/google/api/client/googleapis/json/JsonFeedParser<TT;TI;>;"
    .local p2, feedClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TI;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;-><init>(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)V

    .line 39
    iput-object p3, p0, Lcom/google/api/client/googleapis/json/JsonFeedParser;->itemClass:Ljava/lang/Class;

    .line 40
    return-void
.end method

.method public static use(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/api/client/googleapis/json/JsonFeedParser;
    .locals 2
    .parameter "response"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TI;>;)",
            "Lcom/google/api/client/googleapis/json/JsonFeedParser",
            "<TT;TI;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    .local p1, feedClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TI;>;"
    invoke-static {p0}, Lcom/google/api/client/googleapis/json/JsonCParser;->parserForResponse(Lcom/google/api/client/http/HttpResponse;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 56
    .local v0, parser:Lorg/codehaus/jackson/JsonParser;
    new-instance v1, Lcom/google/api/client/googleapis/json/JsonFeedParser;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/api/client/googleapis/json/JsonFeedParser;-><init>(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v1
.end method


# virtual methods
.method parseItemInternal()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/api/client/googleapis/json/JsonFeedParser;,"Lcom/google/api/client/googleapis/json/JsonFeedParser<TT;TI;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/JsonFeedParser;->parser:Lorg/codehaus/jackson/JsonParser;

    iget-object v1, p0, Lcom/google/api/client/googleapis/json/JsonFeedParser;->itemClass:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseNextItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/google/api/client/googleapis/json/JsonFeedParser;,"Lcom/google/api/client/googleapis/json/JsonFeedParser<TT;TI;>;"
    invoke-super {p0}, Lcom/google/api/client/googleapis/json/AbstractJsonFeedParser;->parseNextItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
