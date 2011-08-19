.class Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;
.super Ljava/util/LinkedHashMap;
.source "CacheManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/cache/CacheManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/ref/SoftReference",
        "<",
        "Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mMaxSize:I

.field final synthetic this$0:Lcom/android/vending/cache/CacheManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/vending/cache/CacheManagerImpl;I)V
    .locals 2
    .parameter
    .parameter "maxSize"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->this$0:Lcom/android/vending/cache/CacheManagerImpl;

    .line 100
    const/high16 v0, 0x3f80

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 101
    iput p2, p0, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->mMaxSize:I

    .line 102
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
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/SoftReference<Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;>;>;"
    invoke-virtual {p0}, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->size()I

    move-result v0

    iget v1, p0, Lcom/android/vending/cache/CacheManagerImpl$BoundedCache;->mMaxSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
