.class Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;
.super Ljava/util/LinkedHashMap;
.source "InMemoryLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/cache/InMemoryLruCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/cache/InMemoryLruCache;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/cache/InMemoryLruCache;IFZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache.1;"
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;->this$0:Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache.1;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TE;>;"
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/InMemoryLruCache$1;->this$0:Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    invoke-static {v1}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;->access$000(Lcom/google/android/youtube/core/cache/InMemoryLruCache;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
