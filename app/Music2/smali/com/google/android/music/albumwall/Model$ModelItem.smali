.class Lcom/google/android/music/albumwall/Model$ModelItem;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelItem"
.end annotation


# instance fields
.field public mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-array v1, v4, [Lcom/google/android/music/albumwall/Model$RequestableTexture;

    iput-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    .line 321
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 322
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    new-instance v2, Lcom/google/android/music/albumwall/Model$RequestableTexture;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/music/albumwall/Model$RequestableTexture;-><init>(Lcom/google/android/music/albumwall/Model$1;)V

    aput-object v2, v1, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 4
    .parameter "indent"

    .prologue
    .line 343
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 344
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

    iget-object v3, p0, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method

.method public eglContextCleared()V
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->eglContextCleared()V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 2

    .prologue
    .line 327
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 328
    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/Model$ModelItem;->invalidate(I)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method

.method public final invalidate(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelItem;->mTextures:[Lcom/google/android/music/albumwall/Model$RequestableTexture;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$RequestableTexture;->invalidate()V

    .line 334
    return-void
.end method
