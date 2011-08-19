.class Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;
.super Ljava/lang/Object;
.source "GenerationCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/GenerationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenerationCacheEntry"
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
.field public child:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public parent:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 219
    .local p0, this:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;,"Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/util/GenerationCache$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 219
    .local p0, this:Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;,"Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/android/apps/books/util/GenerationCache$GenerationCacheEntry;-><init>()V

    return-void
.end method
