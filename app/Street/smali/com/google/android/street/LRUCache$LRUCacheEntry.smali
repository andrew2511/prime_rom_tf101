.class Lcom/google/android/street/LRUCache$LRUCacheEntry;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/LRUCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LRUCacheEntry"
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
.field public mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public mOlder:Lcom/google/android/street/LRUCache$LRUCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/street/LRUCache$LRUCacheEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public mYounger:Lcom/google/android/street/LRUCache$LRUCacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/street/LRUCache$LRUCacheEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    .local p0, this:Lcom/google/android/street/LRUCache$LRUCacheEntry;,"Lcom/google/android/street/LRUCache$LRUCacheEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
