.class Lcom/google/android/youtube/core/async/MasfRequester$Listener;
.super Ljava/lang/Object;
.source "MasfRequester.java"

# interfaces
.implements Lcom/google/android/youtube/googlemobile/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/MasfRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/googlemobile/masf/protocol/Request$Listener;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;"
        }
    .end annotation
.end field

.field private final originalRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<",
            "Lcom/google/android/youtube/googlemobile/masf/protocol/Response;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/converter/ResponseConverter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<",
            "Lcom/google/android/youtube/googlemobile/masf/protocol/Response;",
            "TE;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/google/android/youtube/core/async/MasfRequester$Listener;,"Lcom/google/android/youtube/core/async/MasfRequester$Listener<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    .local p3, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<Lcom/google/android/youtube/googlemobile/masf/protocol/Response;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/youtube/core/async/MasfRequester$Listener;->originalRequest:Ljava/lang/Object;

    .line 80
    iput-object p3, p0, Lcom/google/android/youtube/core/async/MasfRequester$Listener;->responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;

    .line 81
    iput-object p2, p0, Lcom/google/android/youtube/core/async/MasfRequester$Listener;->callback:Lcom/google/android/youtube/core/async/Callback;

    .line 82
    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/google/android/youtube/googlemobile/masf/protocol/Request;Lcom/google/android/youtube/googlemobile/masf/protocol/Response;)V
    .locals 7
    .parameter "request"
    .parameter "response"

    .prologue
    .line 85
    .local p0, this:Lcom/google/android/youtube/core/async/MasfRequester$Listener;,"Lcom/google/android/youtube/core/async/MasfRequester$Listener<TR;TE;>;"
    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/protocol/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 86
    iget-object v2, p0, Lcom/google/android/youtube/core/async/MasfRequester$Listener;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/MasfRequester$Listener;->originalRequest:Ljava/lang/Object;

    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {p2}, Lcom/google/android/youtube/googlemobile/masf/protocol/Response;->getStatusCode()I

    move-result v5

    const-string v6, "MASF error"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/core/async/MasfRequester$Listener;->responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;

    invoke-interface {v2, p2}, Lcom/google/android/youtube/core/converter/ResponseConverter;->convertResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, parseResult:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/google/android/youtube/core/async/MasfRequester$Listener;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/MasfRequester$Listener;->originalRequest:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v1           #parseResult:Ljava/lang/Object;,"TE;"
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 94
    .local v0, e:Lcom/google/android/youtube/core/converter/ConverterException;
    iget-object v2, p0, Lcom/google/android/youtube/core/async/MasfRequester$Listener;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/MasfRequester$Listener;->originalRequest:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public requestFailed(Lcom/google/android/youtube/googlemobile/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 99
    .local p0, this:Lcom/google/android/youtube/core/async/MasfRequester$Listener;,"Lcom/google/android/youtube/core/async/MasfRequester$Listener<TR;TE;>;"
    const-string v0, "MASF request failed"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/core/async/MasfRequester$Listener;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/MasfRequester$Listener;->originalRequest:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 101
    return-void
.end method
