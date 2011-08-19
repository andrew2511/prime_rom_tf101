.class public Lcom/google/android/apps/books/util/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mReferences:Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/SimpleCache",
            "<TK;TV;>.SoftReferenceMap;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIF)V
    .locals 1
    .parameter "initialCapacity"
    .parameter "maxCapacity"
    .parameter "loadFactor"

    .prologue
    .line 58
    .local p0, this:Lcom/google/android/apps/books/util/SimpleCache;,"Lcom/google/android/apps/books/util/SimpleCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;-><init>(Lcom/google/android/apps/books/util/SimpleCache;IIF)V

    iput-object v0, p0, Lcom/google/android/apps/books/util/SimpleCache;->mReferences:Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;

    .line 60
    return-void
.end method

.method private static unwrap(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/SoftReference",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<TV;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 80
    .local p0, this:Lcom/google/android/apps/books/util/SimpleCache;,"Lcom/google/android/apps/books/util/SimpleCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/SimpleCache;->mReferences:Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;

    invoke-virtual {v0}, Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;->clear()V

    .line 81
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/google/android/apps/books/util/SimpleCache;,"Lcom/google/android/apps/books/util/SimpleCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/SimpleCache;->mReferences:Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/google/android/apps/books/util/SimpleCache;,"Lcom/google/android/apps/books/util/SimpleCache<TK;TV;>;"
    check-cast p0, Ljava/lang/ref/SoftReference;

    invoke-static {p0}, Lcom/google/android/apps/books/util/SimpleCache;->unwrap(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/google/android/apps/books/util/SimpleCache;,"Lcom/google/android/apps/books/util/SimpleCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/android/apps/books/util/SimpleCache;->mReferences:Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/books/util/SimpleCache$SoftReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/google/android/apps/books/util/SimpleCache;,"Lcom/google/android/apps/books/util/SimpleCache<TK;TV;>;"
    check-cast p0, Ljava/lang/ref/SoftReference;

    invoke-static {p0}, Lcom/google/android/apps/books/util/SimpleCache;->unwrap(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
