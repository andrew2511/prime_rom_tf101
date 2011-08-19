.class Lcom/ecareme/pixwe/media/HudLayer$52;
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$52;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1173
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$52;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 1174
    .local v0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-static {v0}, Lcom/ecareme/pixwe/media/MediaBucketList;->getFirstItemSelection(Ljava/util/ArrayList;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v2

    .line 1175
    .local v2, item:Lcom/ecareme/pixwe/media/MediaItem;
    if-nez v2, :cond_0

    .line 1190
    .end local p0
    :goto_0
    return-void

    .line 1178
    .restart local p0
    :cond_0
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$52;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$1(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/GridLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridLayer;->deselectAll()V

    .line 1179
    iget-object v3, v2, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 1180
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$52;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/ecareme/pixwe/media/Photographs;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1182
    iget-object v3, v2, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1183
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1184
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$52;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1186
    .end local v1           #intent:Landroid/content/Intent;
    .restart local p0
    :cond_1
    iget-object v3, v2, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v2, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ecareme/pixwe/media/Util;->createSetAsIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1187
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1188
    iget-object v3, p0, Lcom/ecareme/pixwe/media/HudLayer$52;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    iget-object v4, p0, Lcom/ecareme/pixwe/media/HudLayer$52;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v4}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060011

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
