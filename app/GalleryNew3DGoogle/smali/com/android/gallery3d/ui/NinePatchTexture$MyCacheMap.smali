.class Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;
.super Ljava/util/LinkedHashMap;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/NinePatchTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyCacheMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private CACHE_SIZE:I

.field private mJustRemoved:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 100
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;,"Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap<TK;TV;>;"
    const/4 v0, 0x4

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 96
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->CACHE_SIZE:I

    .line 101
    return-void
.end method


# virtual methods
.method public getJustRemoved()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;,"Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap<TK;TV;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->mJustRemoved:Ljava/lang/Object;

    .line 114
    .local v0, result:Ljava/lang/Object;,"TV;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->mJustRemoved:Ljava/lang/Object;

    .line 115
    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;,"Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->size()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->CACHE_SIZE:I

    if-le v0, v1, :cond_0

    .line 106
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture$MyCacheMap;->mJustRemoved:Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
