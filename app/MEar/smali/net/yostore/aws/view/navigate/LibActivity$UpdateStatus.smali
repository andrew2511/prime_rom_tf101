.class Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;
.super Ljava/lang/Thread;
.source "LibActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/LibActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateStatus"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/LibActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1629
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1633
    :goto_0
    sget-boolean v0, Lcom/ecareme/mear/Mear;->updatePlayerStatusFlg:Z

    if-nez v0, :cond_0

    .line 1690
    return-void

    .line 1639
    :cond_0
    :try_start_0
    sget v0, Lcom/ecareme/mear/Mear;->playingStatus:I

    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/ecareme/mear/Mear;->playingStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1640
    :cond_1
    sget-object v0, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/PlayerServiceInterface;->getStatus()I

    move-result v0

    if-lez v0, :cond_3

    .line 1641
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$21(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1642
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$21(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    sget-object v1, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/PlayerServiceInterface;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1684
    :cond_2
    :goto_1
    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1685
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1668
    :cond_3
    :try_start_2
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$22(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1669
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$21(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1670
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$UpdateStatus;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->access$21(Lnet/yostore/aws/view/navigate/LibActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1675
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1678
    :catch_2
    move-exception v0

    goto :goto_1
.end method
