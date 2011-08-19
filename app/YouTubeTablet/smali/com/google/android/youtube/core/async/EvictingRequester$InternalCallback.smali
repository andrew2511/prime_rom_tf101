.class Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;
.super Ljava/lang/Object;
.source "EvictingRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/EvictingRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field private final targetCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/youtube/core/async/EvictingRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/EvictingRequester;Lcom/google/android/youtube/core/async/Callback;)V
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
    .line 58
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;,"Lcom/google/android/youtube/core/async/EvictingRequester<TR;TE;TK;>.InternalCallback;"
    .local p2, target:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;->this$0:Lcom/google/android/youtube/core/async/EvictingRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "targetCallback can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;->targetCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 60
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
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
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;,"Lcom/google/android/youtube/core/async/EvictingRequester<TR;TE;TK;>.InternalCallback;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;->targetCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 69
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
    .line 63
    .local p0, this:Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;,"Lcom/google/android/youtube/core/async/EvictingRequester<TR;TE;TK;>.InternalCallback;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;->this$0:Lcom/google/android/youtube/core/async/EvictingRequester;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/EvictingRequester;->access$000(Lcom/google/android/youtube/core/async/EvictingRequester;)Lcom/google/android/youtube/core/cache/Cache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;->this$0:Lcom/google/android/youtube/core/async/EvictingRequester;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/youtube/core/async/EvictingRequester;->getFilter(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/youtube/core/utils/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/cache/Cache;->filter(Lcom/google/android/youtube/core/utils/Predicate;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/async/EvictingRequester$InternalCallback;->targetCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    return-void
.end method
