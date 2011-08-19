.class Lcom/ecareme/pixwe/media/HudLayer$53;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/HudLayer;->buildMoreOptions()V
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$53;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1193
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$53;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 1194
    .local v0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-static {v0}, Lcom/ecareme/pixwe/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v2

    .line 1195
    .local v2, item:Lcom/ecareme/pixwe/media/MediaItem;
    if-nez v2, :cond_0

    .line 1203
    .end local p0
    :goto_0
    return-void

    .line 1198
    .restart local p0
    :cond_0
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$53;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridLayer;->deselectAll()V

    .line 1199
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$53;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/ecareme/pixwe/media/CropImage;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1201
    iget-object v3, v2, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1202
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$53;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
