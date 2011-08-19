.class Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;
.super Ljava/lang/Object;
.source "TimestampedCachingRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/TimestampedCachingRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachingCallback"
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

.field final synthetic this$0:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/TimestampedCachingRequester;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
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
    .line 96
    .local p0, this:Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<TR;TE;>.CachingCallback;"
    .local p2, targetCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->this$0:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->targetCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 98
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
    .line 107
    .local p0, this:Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<TR;TE;>.CachingCallback;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->targetCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 108
    return-void
.end method

.method public onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TE;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<TR;TE;>.CachingCallback;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->this$0:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->access$100(Lcom/google/android/youtube/core/async/TimestampedCachingRequester;)Lcom/google/android/youtube/core/cache/Cache;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/async/Timestamped;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->this$0:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->access$000(Lcom/google/android/youtube/core/async/TimestampedCachingRequester;)Lcom/google/android/youtube/core/utils/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/core/utils/Clock;->currentMillis()J

    move-result-wide v2

    invoke-direct {v1, p2, v2, v3}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/async/TimestampedCachingRequester$CachingCallback;->targetCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    return-void
.end method
