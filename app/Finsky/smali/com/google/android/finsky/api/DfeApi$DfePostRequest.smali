.class Lcom/google/android/finsky/api/DfeApi$DfePostRequest;
.super Lcom/google/android/finsky/api/DfeRequest;
.source "DfeApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/DfeApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DfePostRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/micro/MessageMicro;",
        ">",
        "Lcom/google/android/finsky/api/DfeRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mPostParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .parameter "url"
    .parameter "apiContext"
    .parameter
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/api/DfeApiContext;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/finsky/api/DfeApi$DfePostRequest;,"Lcom/google/android/finsky/api/DfeApi$DfePostRequest<TT;>;"
    .local p3, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<TT;>;"
    const/4 v1, 0x0

    .line 204
    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 200
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->mPostParams:Ljava/util/Map;

    .line 206
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setShouldCache(Z)V

    .line 207
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->setDrainable(Z)V

    .line 208
    return-void
.end method


# virtual methods
.method public addPostParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 211
    .local p0, this:Lcom/google/android/finsky/api/DfeApi$DfePostRequest;,"Lcom/google/android/finsky/api/DfeApi$DfePostRequest<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->mPostParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public getPostParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, this:Lcom/google/android/finsky/api/DfeApi$DfePostRequest;,"Lcom/google/android/finsky/api/DfeApi$DfePostRequest<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->mPostParams:Ljava/util/Map;

    return-object v0
.end method
