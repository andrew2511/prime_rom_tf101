.class Lcom/google/android/music/albumwall/AlbumWallRenderer$1;
.super Ljava/lang/Object;
.source "AlbumWallRenderer.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/AlbumWallRenderer;->createAlbumList(ZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/opengl/glview/TexturedQuad$Pose;)Lcom/google/android/opengl/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

.field final synthetic val$defaultPose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;

.field final synthetic val$isExpandedLabelVertical:Z

.field final synthetic val$isTopLevel:Z

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field final synthetic val$pileIndex:I


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/opengl/glview/TexturedQuad$Pose;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput-boolean p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$isExpandedLabelVertical:Z

    iput-object p4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$defaultPose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    iput-boolean p5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$isTopLevel:Z

    iput p6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$pileIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public count()I
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v0

    return v0
.end method

.method public getCellLength(Z)F
    .locals 4
    .parameter "horizontal"

    .prologue
    .line 324
    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$isTopLevel:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedMetadata()F

    move-result v1

    move v0, v1

    .line 325
    .local v0, labelScale:F
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$isExpandedLabelVertical:Z

    if-eqz v1, :cond_2

    .line 326
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v1

    .line 330
    :goto_1
    return v1

    .line 324
    .end local v0           #labelScale:F
    :cond_0
    const/high16 v1, 0x3f80

    move v0, v1

    goto :goto_0

    .line 326
    .restart local v0       #labelScale:F
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHeight()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v3, v3, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelMargin()F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    goto :goto_1

    .line 330
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelWidth()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v3, v3, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelMargin()F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v1

    goto :goto_1
.end method

.method public getItemAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .locals 3
    .parameter "index"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v0

    return-object v0
.end method

.method public getPileAt(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .locals 1
    .parameter "index"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    return-object v0
.end method

.method public getPileIndexAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 378
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$pileIndex:I

    return v0
.end method

.method public isPileList()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x1

    .line 343
    packed-switch p1, :pswitch_data_0

    .line 366
    :cond_0
    :pswitch_0
    const/4 v4, 0x0

    .end local p4
    :goto_0
    return v4

    .line 345
    .restart local p4
    :pswitch_1
    instance-of v4, p4, Lcom/google/android/music/albumwall/ItemView;

    if-eqz v4, :cond_1

    .line 346
    check-cast p4, Lcom/google/android/music/albumwall/ItemView;

    .end local p4
    invoke-virtual {p4}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 348
    .local v2, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-static {v4, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$000(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    move v4, v5

    .line 349
    goto :goto_0

    .line 350
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .restart local p4
    :cond_1
    instance-of v4, p4, Lcom/google/android/music/albumwall/ItemLabel;

    if-eqz v4, :cond_0

    .line 351
    move-object v0, p4

    check-cast v0, Lcom/google/android/music/albumwall/ItemLabel;

    move-object v3, v0

    .line 352
    .local v3, label:Lcom/google/android/music/albumwall/ItemLabel;
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/ItemLabel;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 353
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-static {v4, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$100(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    move v4, v5

    .line 354
    goto :goto_0

    .line 358
    .end local v2           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v3           #label:Lcom/google/android/music/albumwall/ItemLabel;
    :pswitch_2
    instance-of v4, p4, Lcom/google/android/music/albumwall/ItemView;

    if-eqz v4, :cond_0

    instance-of v4, p3, Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    .line 359
    move-object v0, p4

    check-cast v0, Lcom/google/android/music/albumwall/ItemView;

    move-object v1, v0

    .line 360
    .local v1, album:Lcom/google/android/music/albumwall/ItemView;
    invoke-virtual {v1}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v2

    .line 361
    .restart local v2       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    invoke-static {v4, v2, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->access$200(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    move v4, v5

    .line 362
    goto :goto_0

    .line 343
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
    .line 337
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 338
    return-void
.end method

.method public viewAt(I)Lcom/google/android/opengl/glview/GLView;
    .locals 7
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 312
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v5

    .line 313
    .local v5, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    if-nez v5, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v1, v1, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genPlaceHolderItem(FF)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$isExpandedLabelVertical:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v2, v2, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v3, v3, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v4, v4, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelMargin()F

    move-result v4

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->this$0:Lcom/google/android/music/albumwall/AlbumWallRenderer;

    iget-object v6, v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxClosedPileCount()I

    move-result v6

    if-gt p1, v6, :cond_1

    if-nez p1, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;->val$defaultPose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genAlbum(ZFFFLcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/TexturedQuad$Pose;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method
