.class final Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;
.super Ljava/lang/Object;
.source "ConvertingRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/ConvertingRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConvertingCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<TS;TF;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final originalCallback:Lcom/google/android/youtube/core/async/Callback;
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

.field private response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/youtube/core/async/ConvertingRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ConvertingRequester;Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter
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
    .line 104
    .local p0, this:Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;,"Lcom/google/android/youtube/core/async/ConvertingRequester<TR;TE;TS;TF;>.ConvertingCallback;"
    .local p2, originalRequest:Ljava/lang/Object;,"TR;"
    .local p3, originalCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->this$0:Lcom/google/android/youtube/core/async/ConvertingRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->originalRequest:Ljava/lang/Object;

    .line 106
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 107
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;,"Lcom/google/android/youtube/core/async/ConvertingRequester<TR;TE;TS;TF;>.ConvertingCallback;"
    .local p1, request:Ljava/lang/Object;,"TS;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->originalRequest:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 127
    return-void
.end method

.method public onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TF;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;,"Lcom/google/android/youtube/core/async/ConvertingRequester<TR;TE;TS;TF;>.ConvertingCallback;"
    .local p1, request:Ljava/lang/Object;,"TS;"
    .local p2, response:Ljava/lang/Object;,"TF;"
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->response:Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->this$0:Lcom/google/android/youtube/core/async/ConvertingRequester;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/ConvertingRequester;->access$000(Lcom/google/android/youtube/core/async/ConvertingRequester;)Lcom/google/android/youtube/core/converter/ResponseConverter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->this$0:Lcom/google/android/youtube/core/async/ConvertingRequester;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/ConvertingRequester;->access$100(Lcom/google/android/youtube/core/async/ConvertingRequester;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->this$0:Lcom/google/android/youtube/core/async/ConvertingRequester;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/ConvertingRequester;->access$100(Lcom/google/android/youtube/core/async/ConvertingRequester;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->run()V

    goto :goto_0

    .line 120
    :cond_1
    move-object v0, p2

    .line 121
    .local v0, convertedResponse:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->originalRequest:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 131
    .local p0, this:Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;,"Lcom/google/android/youtube/core/async/ConvertingRequester<TR;TE;TS;TF;>.ConvertingCallback;"
    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->this$0:Lcom/google/android/youtube/core/async/ConvertingRequester;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/ConvertingRequester;->access$000(Lcom/google/android/youtube/core/async/ConvertingRequester;)Lcom/google/android/youtube/core/converter/ResponseConverter;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->response:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/converter/ResponseConverter;->convertResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, convertedResponse:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->originalRequest:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0           #convertedResponse:Ljava/lang/Object;,"TE;"
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 134
    .local v1, e:Lcom/google/android/youtube/core/converter/ConverterException;
    iget-object v2, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/ConvertingRequester$ConvertingCallback;->originalRequest:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
