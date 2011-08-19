.class public Lcom/google/android/youtube/core/async/MasfRequester;
.super Ljava/lang/Object;
.source "MasfRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/MasfRequester$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final masf:Lcom/google/android/youtube/core/masf/MasfService;

.field private final requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;",
            "Lcom/google/android/youtube/googlemobile/masf/protocol/Request;",
            ">;"
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

.field private final sendImmediately:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/masf/MasfService;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Z)V
    .locals 1
    .parameter "masf"
    .parameter
    .parameter
    .parameter "sendImmediately"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/masf/MasfService;",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;",
            "Lcom/google/android/youtube/googlemobile/masf/protocol/Request;",
            ">;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<",
            "Lcom/google/android/youtube/googlemobile/masf/protocol/Response;",
            "TE;>;Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/youtube/core/async/MasfRequester;,"Lcom/google/android/youtube/core/async/MasfRequester<TR;TE;>;"
    .local p2, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;Lcom/google/android/youtube/googlemobile/masf/protocol/Request;>;"
    .local p3, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<Lcom/google/android/youtube/googlemobile/masf/protocol/Response;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "masf may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/masf/MasfService;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/MasfRequester;->masf:Lcom/google/android/youtube/core/masf/MasfService;

    .line 44
    const-string v0, "requestConverter may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/RequestConverter;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/MasfRequester;->requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;

    .line 46
    const-string v0, "responseConverter may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/ResponseConverter;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/MasfRequester;->responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;

    .line 48
    iput-boolean p4, p0, Lcom/google/android/youtube/core/async/MasfRequester;->sendImmediately:Z

    .line 49
    return-void
.end method


# virtual methods
.method public request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lcom/google/android/youtube/core/async/MasfRequester;,"Lcom/google/android/youtube/core/async/MasfRequester<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    const-string v2, "request may not be null"

    invoke-static {p1, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v2, "callback may not be null"

    invoke-static {p2, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/core/async/MasfRequester;->requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;

    invoke-interface {v2, p1}, Lcom/google/android/youtube/core/converter/RequestConverter;->convertRequest(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/googlemobile/masf/protocol/Request;

    .line 56
    .local v1, masfRequest:Lcom/google/android/youtube/googlemobile/masf/protocol/Request;
    new-instance v2, Lcom/google/android/youtube/core/async/MasfRequester$Listener;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/MasfRequester;->responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/youtube/core/async/MasfRequester$Listener;-><init>(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/converter/ResponseConverter;)V

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/googlemobile/masf/protocol/Request;->setListener(Lcom/google/android/youtube/googlemobile/masf/protocol/Request$Listener;)V

    .line 57
    iget-object v2, p0, Lcom/google/android/youtube/core/async/MasfRequester;->masf:Lcom/google/android/youtube/core/masf/MasfService;

    iget-boolean v3, p0, Lcom/google/android/youtube/core/async/MasfRequester;->sendImmediately:Z

    invoke-interface {v2, v1, v3}, Lcom/google/android/youtube/core/masf/MasfService;->submitRequest(Lcom/google/android/youtube/googlemobile/masf/protocol/Request;Z)V
    :try_end_0
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1           #masfRequest:Lcom/google/android/youtube/googlemobile/masf/protocol/Request;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 59
    .local v0, e:Lcom/google/android/youtube/core/converter/ConverterException;
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
