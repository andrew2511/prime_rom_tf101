.class Lcom/ecareme/pixwe/media/HudLayer$33;
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
    iput-object p1, p0, Lcom/ecareme/pixwe/media/HudLayer$33;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 545
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    .line 546
    .local v0, apicfg:Lnet/yostore/aws/api/ApiConfig;
    iget-object v6, p0, Lcom/ecareme/pixwe/media/HudLayer$33;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v6}, Lcom/ecareme/pixwe/media/HudLayer;->access$3(Lcom/ecareme/pixwe/media/HudLayer;)Lcom/ecareme/pixwe/media/RenderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/RenderView;->getRootLayer()Lcom/ecareme/pixwe/media/RootLayer;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/GridLayer;

    .line 547
    .local v1, gridLayer:Lcom/ecareme/pixwe/media/GridLayer;
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v2

    .line 548
    .local v2, mediaBucket:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ecareme/pixwe/media/MediaBucket;

    iget-object v6, v6, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v8, v6, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/ecareme/pixwe/PixWe;->getShareUrl(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, shareUri:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 550
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 551
    .local v3, screenshotUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 552
    .local v4, sendIntent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v6, "text/plain"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    iget-object v6, p0, Lcom/ecareme/pixwe/media/HudLayer$33;->this$0:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-static {v6}, Lcom/ecareme/pixwe/media/HudLayer;->access$0(Lcom/ecareme/pixwe/media/HudLayer;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 556
    .end local v3           #screenshotUri:Landroid/net/Uri;
    .end local v4           #sendIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
