.class Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback$1;
.super Ljava/lang/Object;
.source "FallbackRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;

.field final synthetic val$firstException:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    .local p0, this:Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback$1;,"Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback.1;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback$1;->this$1:Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback$1;->val$firstException:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback$1;,"Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback.1;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback$1;->this$1:Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;->access$100(Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback$1;->val$firstException:Ljava/lang/Exception;

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 69
    return-void
.end method

.method public onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TE;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback$1;,"Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback.1;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback$1;->this$1:Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;->access$100(Lcom/google/android/youtube/core/async/FallbackRequester$FallbackCallback;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    return-void
.end method
