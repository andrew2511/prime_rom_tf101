.class Lcom/google/android/music/albumwall/Model$ModelPilePart;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelPilePart"
.end annotation


# instance fields
.field mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

.field mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v1, Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-direct {v1, v4}, Lcom/google/android/music/albumwall/Model$RequestableCount;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    iput-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    .line 354
    new-array v1, v3, [Lcom/google/android/music/albumwall/Model$RequestableTexture;

    iput-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    .line 355
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 356
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    new-instance v2, Lcom/google/android/music/albumwall/Model$RequestableTexture;

    invoke-direct {v2, v4}, Lcom/google/android/music/albumwall/Model$RequestableTexture;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    aput-object v2, v1, v0

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 4
    .parameter "indent"

    .prologue
    .line 378
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 379
    const-string v1, "Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method

.method public eglContextCleared()V
    .locals 2

    .prologue
    .line 372
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->eglContextCleared()V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 2

    .prologue
    .line 361
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mItemCount:Lcom/google/android/music/albumwall/Model$RequestableCount;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableCount;->invalidate()V

    .line 362
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 363
    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->invalidate(I)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_0
    return-void
.end method

.method public final invalidate(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPilePart;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->invalidate()V

    .line 369
    return-void
.end method
