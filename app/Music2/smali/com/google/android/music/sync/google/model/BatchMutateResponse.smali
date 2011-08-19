.class public Lcom/google/android/music/sync/google/model/BatchMutateResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "BatchMutateResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;
    }
.end annotation


# instance fields
.field public mMutatePlaylistResponses:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "mutate_response"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->mMutatePlaylistResponses:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/BatchMutateResponse;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    sget-object v2, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 43
    .local v1, parser:Lorg/codehaus/jackson/JsonParser;
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 44
    const-class v2, Lcom/google/android/music/sync/google/model/BatchMutateResponse;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 45
    .end local v1           #parser:Lorg/codehaus/jackson/JsonParser;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 46
    .local v0, je:Lorg/codehaus/jackson/JsonParseException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
