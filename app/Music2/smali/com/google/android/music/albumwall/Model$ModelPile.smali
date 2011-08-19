.class Lcom/google/android/music/albumwall/Model$ModelPile;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelPile"
.end annotation


# instance fields
.field public mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

.field public mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance v0, Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    .line 386
    new-instance v0, Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/albumwall/Model$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model$ModelPile;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 3
    .parameter "indent"

    .prologue
    .line 408
    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mUnexpanded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->dump(Ljava/lang/String;)V

    .line 410
    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mExpanded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->dump(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public final eglContextCleared()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->eglContextCleared()V

    .line 394
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->eglContextCleared()V

    .line 395
    return-void
.end method

.method public final getPart(Z)Lcom/google/android/music/albumwall/Model$ModelPilePart;
    .locals 1
    .parameter "expanded"

    .prologue
    .line 389
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    goto :goto_0
.end method

.method public final invalidate()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->invalidate()V

    .line 399
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->invalidate()V

    .line 400
    return-void
.end method

.method public final invalidate(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mUnexpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->invalidate(I)V

    .line 404
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$ModelPile;->mExpanded:Lcom/google/android/music/albumwall/Model$ModelPilePart;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model$ModelPilePart;->invalidate(I)V

    .line 405
    return-void
.end method
