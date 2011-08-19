.class final Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;
.super Ljava/lang/Object;
.source "SequentialRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/SequentialRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<TR;TE;>;"
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

.field final synthetic this$0:Lcom/google/android/youtube/core/async/SequentialRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/SequentialRequester;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;,"Lcom/google/android/youtube/core/async/SequentialRequester<TR;TE;>.InternalCallback;"
    .local p2, originalCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;->this$0:Lcom/google/android/youtube/core/async/SequentialRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 39
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter "firstException"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;,"Lcom/google/android/youtube/core/async/SequentialRequester<TR;TE;>.InternalCallback;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;->this$0:Lcom/google/android/youtube/core/async/SequentialRequester;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/SequentialRequester;->access$000(Lcom/google/android/youtube/core/async/SequentialRequester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 48
    return-void
.end method

.method public onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TE;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;,"Lcom/google/android/youtube/core/async/SequentialRequester<TR;TE;>.InternalCallback;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;->this$0:Lcom/google/android/youtube/core/async/SequentialRequester;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/SequentialRequester;->access$000(Lcom/google/android/youtube/core/async/SequentialRequester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/SequentialRequester$InternalCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 44
    return-void
.end method
