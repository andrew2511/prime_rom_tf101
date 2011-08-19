.class Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;
.super Lcom/android/gallery3d/ui/DisplayItem;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelDisplayItem"
.end annotation


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mPostfix:Ljava/lang/String;

.field private final mSlotIndex:I

.field private mTexture:Lcom/android/gallery3d/ui/StringTexture;

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;I)V
    .locals 0
    .parameter
    .parameter "slotIndex"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/DisplayItem;-><init>()V

    .line 485
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->mSlotIndex:I

    .line 486
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->updateContent()Z

    .line 487
    return-void
.end method


# virtual methods
.method public getIdentity()J
    .locals 2

    .prologue
    .line 513
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public render(Lcom/android/gallery3d/ui/GLCanvas;I)Z
    .locals 3
    .parameter "canvas"
    .parameter "pass"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->mTexture:Lcom/android/gallery3d/ui/StringTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->mWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->mHeight:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public updateContent()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 490
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, label:Ljava/lang/String;
    const/4 v1, 0x0

    .line 492
    .local v1, postfix:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1300(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetView$Model;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->mSlotIndex:I

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/AlbumSetView$Model;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v6

    .line 493
    .local v6, set:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v6, :cond_0

    .line 494
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->mLabel:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->mPostfix:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    const/4 v2, 0x0

    .line 502
    :goto_0
    return v2

    .line 499
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1400(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->access$1500(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;Ljava/lang/String;FIFZ)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->mTexture:Lcom/android/gallery3d/ui/StringTexture;

    .line 501
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->mTexture:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->mTexture:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$LabelDisplayItem;->setSize(II)V

    move v2, v5

    .line 502
    goto :goto_0
.end method
