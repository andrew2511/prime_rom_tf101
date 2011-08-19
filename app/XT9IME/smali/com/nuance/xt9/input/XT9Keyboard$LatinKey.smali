.class Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;
.super Lcom/nuance/xt9/input/KeyboardEx$Key;
.source "XT9Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/XT9Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LatinKey"
.end annotation


# instance fields
.field private mShiftLockEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 1
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 411
    invoke-direct/range {p0 .. p5}, Lcom/nuance/xt9/input/KeyboardEx$Key;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/KeyboardEx$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 412
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->popupResId:I

    .line 416
    :cond_0
    return-void
.end method


# virtual methods
.method public enableShiftLock()V
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->mShiftLockEnabled:Z

    .line 420
    return-void
.end method

.method public isInside(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x5

    const/4 v1, 0x0

    .line 440
    iget v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->edgeFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    aget v0, v0, v1

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_1

    .line 443
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->height:I

    div-int/lit8 v0, v0, 0xa

    sub-int/2addr p2, v0

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    aget v0, v0, v1

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->width:I

    div-int/lit8 v0, v0, 0x6

    add-int/2addr p1, v0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->codes:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->width:I

    div-int/lit8 v0, v0, 0x6

    sub-int/2addr p1, v0

    .line 447
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/KeyboardEx$Key;->isInside(II)Z

    move-result v0

    return v0
.end method

.method public isShiftLockEnabled()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->mShiftLockEnabled:Z

    return v0
.end method

.method public onReleased(Z)V
    .locals 1
    .parameter "inside"

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_0

    .line 429
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/KeyboardEx$Key;->onReleased(Z)V

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->pressed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/xt9/input/XT9Keyboard$LatinKey;->pressed:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
