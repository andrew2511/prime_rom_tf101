.class Lcom/google/android/youtube/core/cache/AsyncCache$1;
.super Ljava/lang/Object;
.source "AsyncCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/cache/AsyncCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/cache/AsyncCache;

.field final synthetic val$element:Ljava/lang/Object;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/cache/AsyncCache;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    .local p0, this:Lcom/google/android/youtube/core/cache/AsyncCache$1;,"Lcom/google/android/youtube/core/cache/AsyncCache.1;"
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/AsyncCache$1;->this$0:Lcom/google/android/youtube/core/cache/AsyncCache;

    iput-object p2, p0, Lcom/google/android/youtube/core/cache/AsyncCache$1;->val$key:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/youtube/core/cache/AsyncCache$1;->val$element:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 56
    .local p0, this:Lcom/google/android/youtube/core/cache/AsyncCache$1;,"Lcom/google/android/youtube/core/cache/AsyncCache.1;"
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache$1;->this$0:Lcom/google/android/youtube/core/cache/AsyncCache;

    invoke-static {v0}, Lcom/google/android/youtube/core/cache/AsyncCache;->access$000(Lcom/google/android/youtube/core/cache/AsyncCache;)Lcom/google/android/youtube/core/cache/Cache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/AsyncCache$1;->val$key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/cache/AsyncCache$1;->val$element:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/AsyncCache$1;->this$0:Lcom/google/android/youtube/core/cache/AsyncCache;

    invoke-static {v0}, Lcom/google/android/youtube/core/cache/AsyncCache;->access$100(Lcom/google/android/youtube/core/cache/AsyncCache;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/AsyncCache$1;->this$0:Lcom/google/android/youtube/core/cache/AsyncCache;

    invoke-static {v1}, Lcom/google/android/youtube/core/cache/AsyncCache;->access$100(Lcom/google/android/youtube/core/cache/AsyncCache;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/cache/AsyncCache$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
