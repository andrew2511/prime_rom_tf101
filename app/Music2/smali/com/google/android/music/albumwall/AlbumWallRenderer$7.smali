.class Lcom/google/android/music/albumwall/AlbumWallRenderer$7;
.super Ljava/lang/Object;
.source "AlbumWallRenderer.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallRenderer;->createArtistList(II)Lcom/google/android/opengl/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field final synthetic val$baseIndex:I

.field final synthetic val$isClusterExpandedLabelVertical:Z

.field final synthetic val$maxIndex:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iput p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->val$maxIndex:I

    iput p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->val$baseIndex:I

    iput-boolean p4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->val$isClusterExpandedLabelVertical:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public count()I
    .locals 3

    .prologue
    .line 462
    iget v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->val$maxIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getPileCount()I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->val$baseIndex:I

    sub-int v0, v1, v2

    .line 463
    .local v0, count:I
    return v0

    .line 462
    .end local v0           #count:I
    :cond_0
    iget v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->val$maxIndex:I

    goto :goto_0
.end method

.method public getCellLength(Z)F
    .locals 4
    .parameter "horizontal"

    .prologue
    .line 482
    const/high16 v0, 0x3f80

    .line 483
    .local v0, labelScale:F
    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->val$isClusterExpandedLabelVertical:Z

    if-eqz v1, :cond_1

    .line 484
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterCellWidth()F

    move-result v1

    .line 488
    :goto_0
    return v1

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterCellHeight()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelHeight()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v3, v3, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelMargin()F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    goto :goto_0

    .line 488
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterCellWidth()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelWidth()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v3, v3, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelMargin()F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterCellHeight()F

    move-result v1

    goto :goto_0
.end method

.method public getItemAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 546
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPileAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .locals 2
    .parameter "index"

    .prologue
    .line 550
    iget v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->val$baseIndex:I

    add-int v0, v1, p1

    .line 551
    .local v0, pileIndex:I
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1, v0}, Lcom/google/android/music/albumwall/Model;->getPile(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v1

    return-object v1
.end method

.method public getPileIndexAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 555
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->val$baseIndex:I

    add-int/2addr v0, p1

    return v0
.end method

.method public isPileList()Z
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x1

    return v0
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 501
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v6, v7

    .line 542
    :goto_0
    return v6

    .line 503
    :pswitch_1
    instance-of v6, p4, Lcom/google/android/music/albumwall/PileView;

    if-eqz v6, :cond_3

    .line 504
    move-object v0, p4

    check-cast v0, Lcom/google/android/music/albumwall/PileView;

    move-object v1, v0

    .line 505
    .local v1, albumPile:Lcom/google/android/music/albumwall/PileView;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/PileView;->getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v4

    .line 506
    .local v4, pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-eqz v4, :cond_2

    .line 509
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v6, v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v6, v4, v7}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 510
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v6, v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v6, v4, v7, v7}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 511
    .local v2, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    if-eqz v2, :cond_1

    .line 512
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-static {v6, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$000(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    move v6, v9

    .line 513
    goto :goto_0

    .line 517
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    :cond_1
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-static {v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$300(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumPoseCache;->clear()V

    .line 518
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-static {v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$400(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v6

    const/16 v7, 0x64

    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-static {v8}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$300(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/opengl/glview/TopLevelView;->visit(ILjava/lang/Object;)V

    .line 521
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v6, v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/PileView;->getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/PileView;->getIndex()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/albumwall/Model;->setExpandedPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V

    .line 523
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    :cond_2
    move v6, v9

    .line 525
    goto :goto_0

    .line 526
    .end local v1           #albumPile:Lcom/google/android/music/albumwall/PileView;
    .end local v4           #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    :cond_3
    instance-of v6, p4, Lcom/google/android/music/albumwall/PileLabel;

    if-eqz v6, :cond_0

    .line 527
    move-object v0, p4

    check-cast v0, Lcom/google/android/music/albumwall/PileLabel;

    move-object v3, v0

    .line 528
    .local v3, label:Lcom/google/android/music/albumwall/PileLabel;
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/PileLabel;->getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v4

    .line 529
    .restart local v4       #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-static {v6, v4, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$500(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    move v6, v9

    .line 530
    goto :goto_0

    .line 534
    .end local v3           #label:Lcom/google/android/music/albumwall/PileLabel;
    .end local v4           #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    :pswitch_2
    instance-of v6, p4, Lcom/google/android/music/albumwall/PileView;

    if-eqz v6, :cond_0

    instance-of v6, p3, Landroid/view/MotionEvent;

    if-eqz v6, :cond_0

    .line 535
    move-object v0, p4

    check-cast v0, Lcom/google/android/music/albumwall/PileView;

    move-object v5, v0

    .line 536
    .local v5, pileView:Lcom/google/android/music/albumwall/PileView;
    invoke-virtual {v5}, Lcom/google/android/music/albumwall/PileView;->getPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v4

    .line 537
    .restart local v4       #pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-static {v6, v4, v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$600(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    move v6, v9

    .line 538
    goto/16 :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public recycle(Lcom/google/android/opengl/glview/GLView;I)V
    .locals 0
    .parameter "view"
    .parameter "index"

    .prologue
    .line 495
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 496
    return-void
.end method

.method public viewAt(I)Lcom/google/android/opengl/glview/GLView;
    .locals 6
    .parameter "index"

    .prologue
    .line 467
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->val$baseIndex:I

    add-int v5, v0, p1

    .line 468
    .local v5, pileIndex:I
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, v5}, Lcom/google/android/music/albumwall/Model;->getPile(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v3

    .line 469
    .local v3, pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-nez v3, :cond_0

    .line 471
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageWidth()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genPlaceHolderItem(FF)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    .line 475
    :cond_0
    const/4 v4, 0x1

    .line 476
    .local v4, wantLabel:Z
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->val$isClusterExpandedLabelVertical:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelMargin()F

    move-result v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genAlbumGroup(ZFLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
