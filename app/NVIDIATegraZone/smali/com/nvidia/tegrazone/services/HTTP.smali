.class public final Lcom/nvidia/tegrazone/services/HTTP;
.super Ljava/lang/Object;
.source "HTTP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/tegrazone/services/HTTP$FileResponseHandler;,
        Lcom/nvidia/tegrazone/services/HTTP$HttpGetRequestBuilder;,
        Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;,
        Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;,
        Lcom/nvidia/tegrazone/services/HTTP$RequestCustomizer;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "response"
    .parameter "encoding"

    .prologue
    const/4 v2, 0x0

    .line 166
    if-nez p0, :cond_0

    .line 167
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 170
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 171
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_1

    .line 178
    :goto_0
    return-object v2

    .line 176
    :cond_1
    :try_start_0
    invoke-static {v1, p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static get(Ljava/lang/String;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 1
    .parameter "url"

    .prologue
    .line 151
    new-instance v0, Lcom/nvidia/tegrazone/services/HTTP$HttpGetRequestBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpGetRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
    .locals 1
    .parameter "url"

    .prologue
    .line 140
    new-instance v0, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/services/HTTP$HttpPostRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
