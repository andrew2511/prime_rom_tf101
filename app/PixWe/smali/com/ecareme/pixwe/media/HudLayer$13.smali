.class Lcom/ecareme/pixwe/media/HudLayer$13;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/HudLayer;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/HudLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$13;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 343
    iget-object v7, p0, Lcom/ecareme/pixwe/media/HudLayer$13;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/HudLayer;->getAlpha()F

    move-result v7

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    .line 345
    iget-object v7, p0, Lcom/ecareme/pixwe/media/HudLayer$13;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v7}, Lcom/ecareme/pixwe/media/HudLayer;->access$3(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/RenderView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/RenderView;->getRootLayer()Lcom/ecareme/pixwe/media/RootLayer;

    move-result-object v4

    check-cast v4, Lcom/ecareme/pixwe/media/GridLayer;

    .line 346
    .local v4, gridLayer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v6

    .line 347
    .local v6, mediaBucket:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ecareme/pixwe/media/MediaBucket;

    iget-object v7, v7, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    sput-object v7, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 348
    sget-object v7, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-object v2, v7, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .line 349
    .local v2, albumName:Ljava/lang/String;
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, albumUri:Ljava/lang/String;
    sget-object v7, Lcom/ecareme/pixwe/media/HudLayer;->selectedSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v0, v7, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    .line 351
    .local v0, albumId:J
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/ecareme/pixwe/media/HudLayer$13;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v7}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/ecareme/pixwe/view/navigate/SelectUploadAlbumActivity;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "albumName"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v7, "albumUri"

    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v7, "albumId"

    invoke-virtual {v5, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 356
    iget-object v7, p0, Lcom/ecareme/pixwe/media/HudLayer$13;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v7}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    const/16 v8, 0xa

    invoke-virtual {v7, v5, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 357
    iget-object v7, p0, Lcom/ecareme/pixwe/media/HudLayer$13;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/HudLayer;->closeSelectionMenu()V

    .line 358
    iget-object v7, p0, Lcom/ecareme/pixwe/media/HudLayer$13;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 359
    iget-object v7, p0, Lcom/ecareme/pixwe/media/HudLayer$13;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v7, v9}, Lcom/ecareme/pixwe/media/HudLayer;->access$4(Lcom/ecareme/pixwe/media/HudLayer;I)V

    .line 362
    .end local v0           #albumId:J
    .end local v2           #albumName:Ljava/lang/String;
    .end local v3           #albumUri:Ljava/lang/String;
    .end local v4           #gridLayer:Lcom/ecareme/pixwe/media/GridLayer;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #mediaBucket:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :cond_0
    return-void
.end method
