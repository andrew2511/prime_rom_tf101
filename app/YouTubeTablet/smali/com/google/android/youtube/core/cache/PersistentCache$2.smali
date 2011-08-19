.class Lcom/google/android/youtube/core/cache/PersistentCache$2;
.super Ljava/lang/Object;
.source "PersistentCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/cache/PersistentCache;->init(Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/cache/PersistentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/cache/PersistentCache;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/cache/PersistentCache;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache$2;,"Lcom/google/android/youtube/core/cache/PersistentCache.2;"
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/PersistentCache$2;->this$0:Lcom/google/android/youtube/core/cache/PersistentCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache$2;,"Lcom/google/android/youtube/core/cache/PersistentCache.2;"
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache$2;->this$0:Lcom/google/android/youtube/core/cache/PersistentCache;

    invoke-static {v0}, Lcom/google/android/youtube/core/cache/PersistentCache;->access$000(Lcom/google/android/youtube/core/cache/PersistentCache;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache$2;->this$0:Lcom/google/android/youtube/core/cache/PersistentCache;

    invoke-static {v0}, Lcom/google/android/youtube/core/cache/PersistentCache;->access$100(Lcom/google/android/youtube/core/cache/PersistentCache;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 111
    return-void
.end method
