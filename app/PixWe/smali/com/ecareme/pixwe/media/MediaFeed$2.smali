.class Lcom/ecareme/pixwe/media/MediaFeed$2;
.super Ljava/lang/Object;
.source "MediaFeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/MediaFeed;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/MediaFeed;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/MediaFeed;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 442
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/MediaFeed;->access$4(Lcom/ecareme/pixwe/media/MediaFeed;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 445
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/MediaFeed;->access$2(Lcom/ecareme/pixwe/media/MediaFeed;)Lcom/ecareme/pixwe/media/DataSource;

    move-result-object v0

    .line 448
    .local v0, dataSource:Lcom/ecareme/pixwe/media/DataSource;
    if-eqz v0, :cond_2

    .line 449
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/MediaFeed;->access$5(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 451
    :cond_2
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v2, v5}, Lcom/ecareme/pixwe/media/MediaFeed;->access$6(Lcom/ecareme/pixwe/media/MediaFeed;Z)V

    .line 452
    :goto_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/MediaFeed;->access$4(Lcom/ecareme/pixwe/media/MediaFeed;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/ImageManager;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 469
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/MediaFeed;->access$8(Lcom/ecareme/pixwe/media/MediaFeed;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 470
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/MediaFeed;->access$4(Lcom/ecareme/pixwe/media/MediaFeed;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/ecareme/pixwe/media/MediaFeed;->access$7(Lcom/ecareme/pixwe/media/MediaFeed;Ljava/lang/String;I)V

    .line 471
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v2, v5}, Lcom/ecareme/pixwe/media/MediaFeed;->access$6(Lcom/ecareme/pixwe/media/MediaFeed;Z)V

    .line 472
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/MediaFeed;->access$5(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 474
    :cond_3
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v2, v5}, Lcom/ecareme/pixwe/media/MediaFeed;->access$9(Lcom/ecareme/pixwe/media/MediaFeed;Z)V

    goto :goto_0

    .line 454
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v2, v6}, Lcom/ecareme/pixwe/media/MediaFeed;->access$6(Lcom/ecareme/pixwe/media/MediaFeed;Z)V

    .line 458
    :try_start_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/MediaFeed;->access$4(Lcom/ecareme/pixwe/media/MediaFeed;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v3}, Lcom/ecareme/pixwe/media/MediaFeed;->access$4(Lcom/ecareme/pixwe/media/MediaFeed;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/ecareme/pixwe/media/MediaFeed;->access$7(Lcom/ecareme/pixwe/media/MediaFeed;Ljava/lang/String;I)V

    .line 461
    if-eqz v0, :cond_5

    .line 462
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaFeed$2;->this$0:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-static {v2}, Lcom/ecareme/pixwe/media/MediaFeed;->access$5(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 464
    :cond_5
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 465
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 466
    .local v1, e:Ljava/lang/InterruptedException;
    goto/16 :goto_0
.end method
