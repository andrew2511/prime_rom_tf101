.class Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;
.super Ljava/util/LinkedHashMap;
.source "SimpleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/SimpleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftReferenceMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private final mMaxCapacity:I

.field final synthetic this$0:Lcom/google/android/apps/books/util/SimpleCache;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/util/SimpleCache;IIF)V
    .locals 1
    .parameter
    .parameter "initialCapacity"
    .parameter "maxCapacity"
    .parameter "loadFactor"

    .prologue
    .line 29
    .local p0, this:Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;,"Lcom/google/android/apps/books/util/SimpleCache<TK;TV;>.SoftReferenceMap;"
    iput-object p1, p0, Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;->this$0:Lcom/google/android/apps/books/util/SimpleCache;

    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 31
    iput p3, p0, Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;->mMaxCapacity:I

    .line 32
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
            "<TK;",
            "Ljava/lang/ref/SoftReference",
            "<TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;,"Lcom/google/android/apps/books/util/SimpleCache<TK;TV;>.SoftReferenceMap;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Ljava/lang/ref/SoftReference<TV;>;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;->mMaxCapacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
