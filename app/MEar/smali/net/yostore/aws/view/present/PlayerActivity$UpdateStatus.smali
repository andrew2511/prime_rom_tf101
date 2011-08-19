.class Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;
.super Ljava/lang/Thread;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/present/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateStatus"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/PlayerActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/PlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1372
    iput-object p1, p0, Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1375
    :goto_0
    sget-boolean v2, Lcom/ecareme/mear/Mear;->updatePlayerStatusFlg:Z

    if-nez v2, :cond_0

    .line 1431
    return-void

    .line 1381
    :cond_0
    :try_start_0
    sget v2, Lcom/ecareme/mear/Mear;->playingStatus:I

    sget-object v3, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v3}, Lnet/yostore/aws/service/PlayerServiceInterface;->getStatus()I

    move-result v3

    if-ne v2, v3, :cond_1

    sget v2, Lcom/ecareme/mear/Mear;->playingStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1382
    :cond_1
    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->getStatus()I

    move-result v2

    if-lez v2, :cond_3

    .line 1383
    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$9(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    sget-object v3, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v3}, Lnet/yostore/aws/service/PlayerServiceInterface;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1384
    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$9(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    sget-object v3, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v3}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    :cond_2
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1426
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1427
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1410
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$10(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1411
    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$9(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1412
    iget-object v2, p0, Lnet/yostore/aws/view/present/PlayerActivity$UpdateStatus;->this$0:Lnet/yostore/aws/view/present/PlayerActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/present/PlayerActivity;->access$9(Lnet/yostore/aws/view/present/PlayerActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1417
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 1419
    .local v1, e1:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1420
    .end local v1           #e1:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 1421
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
