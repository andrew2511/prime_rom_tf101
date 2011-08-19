.class Lcom/asus/Viewer/MovieView$10;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/Viewer/MovieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/MovieView;


# direct methods
.method constructor <init>(Lcom/asus/Viewer/MovieView;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x60

    const/4 v8, 0x0

    const/16 v5, 0xbb8

    .line 561
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$400(Lcom/asus/Viewer/MovieView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 598
    :sswitch_0
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v4}, Lcom/asus/Viewer/MovieView;->finish()V

    goto :goto_0

    .line 564
    :sswitch_1
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v4, v5}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 565
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$900(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$900(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v9, :cond_0

    .line 566
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1000(Lcom/asus/Viewer/MovieView;)I

    move-result v4

    if-lez v4, :cond_0

    .line 567
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v5, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v5}, Lcom/asus/Viewer/MovieView;->access$1000(Lcom/asus/Viewer/MovieView;)I

    move-result v5

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/asus/Viewer/MovieView;->access$1002(Lcom/asus/Viewer/MovieView;I)I

    .line 568
    iget-object v5, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$900(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v6}, Lcom/asus/Viewer/MovieView;->access$1000(Lcom/asus/Viewer/MovieView;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-static {v5, v4}, Lcom/asus/Viewer/MovieView;->access$1102(Lcom/asus/Viewer/MovieView;Landroid/net/Uri;)Landroid/net/Uri;

    .line 569
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v4, v4, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x63

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 570
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v4, v4, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1300(Lcom/asus/Viewer/MovieView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1200(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v6}, Lcom/asus/Viewer/MovieView;->access$1000(Lcom/asus/Viewer/MovieView;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1400(Lcom/asus/Viewer/MovieView;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 573
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$100(Lcom/asus/Viewer/MovieView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 574
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$100(Lcom/asus/Viewer/MovieView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 577
    :cond_2
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v4, v4, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 586
    :sswitch_2
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v4, v5}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 587
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$100(Lcom/asus/Viewer/MovieView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$800(Lcom/asus/Viewer/MovieView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    .line 591
    .local v2, pos:I
    add-int/lit16 v2, v2, -0x1388

    .line 592
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$800(Lcom/asus/Viewer/MovieView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 593
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$200(Lcom/asus/Viewer/MovieView;)I

    goto/16 :goto_0

    .line 603
    .end local v2           #pos:I
    :sswitch_3
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v4, v5}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 604
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$100(Lcom/asus/Viewer/MovieView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 607
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$800(Lcom/asus/Viewer/MovieView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 608
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$800(Lcom/asus/Viewer/MovieView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->pause()V

    .line 612
    :goto_1
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1500(Lcom/asus/Viewer/MovieView;)V

    goto/16 :goto_0

    .line 610
    :cond_3
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$800(Lcom/asus/Viewer/MovieView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->start()V

    goto :goto_1

    .line 617
    :sswitch_4
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v4, v5}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 618
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$100(Lcom/asus/Viewer/MovieView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 621
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$800(Lcom/asus/Viewer/MovieView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    .line 622
    .restart local v2       #pos:I
    add-int/lit16 v2, v2, 0x3a98

    .line 623
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$800(Lcom/asus/Viewer/MovieView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 624
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$200(Lcom/asus/Viewer/MovieView;)I

    goto/16 :goto_0

    .line 629
    .end local v2           #pos:I
    :sswitch_5
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v4, v5}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 630
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$900(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$900(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v9, :cond_0

    .line 631
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$900(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 632
    .local v3, size:I
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1000(Lcom/asus/Viewer/MovieView;)I

    move-result v4

    sub-int v5, v3, v6

    if-ge v4, v5, :cond_0

    .line 633
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v5, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v5}, Lcom/asus/Viewer/MovieView;->access$1000(Lcom/asus/Viewer/MovieView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/asus/Viewer/MovieView;->access$1002(Lcom/asus/Viewer/MovieView;I)I

    .line 634
    iget-object v5, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$900(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v6}, Lcom/asus/Viewer/MovieView;->access$1000(Lcom/asus/Viewer/MovieView;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-static {v5, v4}, Lcom/asus/Viewer/MovieView;->access$1102(Lcom/asus/Viewer/MovieView;Landroid/net/Uri;)Landroid/net/Uri;

    .line 635
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v4, v4, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x63

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v4, v4, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1300(Lcom/asus/Viewer/MovieView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1200(Lcom/asus/Viewer/MovieView;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v6}, Lcom/asus/Viewer/MovieView;->access$1000(Lcom/asus/Viewer/MovieView;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1400(Lcom/asus/Viewer/MovieView;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 639
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$100(Lcom/asus/Viewer/MovieView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 640
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$100(Lcom/asus/Viewer/MovieView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 643
    :cond_4
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v4, v4, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 652
    .end local v3           #size:I
    :sswitch_6
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v4, v5}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 653
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v4}, Lcom/asus/Viewer/MovieView;->clickOnMuteBTN()V

    goto/16 :goto_0

    .line 658
    :sswitch_7
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v4, v5}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 659
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1600(Lcom/asus/Viewer/MovieView;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto/16 :goto_0

    .line 664
    :sswitch_8
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v4, v5}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 665
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1600(Lcom/asus/Viewer/MovieView;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto/16 :goto_0

    .line 670
    :sswitch_9
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    const v5, 0x36ee80

    invoke-virtual {v4, v5}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 671
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$800(Lcom/asus/Viewer/MovieView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 672
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$800(Lcom/asus/Viewer/MovieView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->pause()V

    .line 673
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1500(Lcom/asus/Viewer/MovieView;)V

    .line 676
    :cond_5
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    new-instance v5, Lcom/asus/Viewer/MovieView$RenderListAdapter;

    iget-object v6, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v7, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v7}, Lcom/asus/Viewer/MovieView;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/asus/Viewer/MovieView$RenderListAdapter;-><init>(Lcom/asus/Viewer/MovieView;Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/asus/Viewer/MovieView;->access$1702(Lcom/asus/Viewer/MovieView;Lcom/asus/Viewer/MovieView$RenderListAdapter;)Lcom/asus/Viewer/MovieView$RenderListAdapter;

    .line 679
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 680
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f070017

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v5}, Lcom/asus/Viewer/MovieView;->access$1700(Lcom/asus/Viewer/MovieView;)Lcom/asus/Viewer/MovieView$RenderListAdapter;

    move-result-object v5

    new-instance v6, Lcom/asus/Viewer/MovieView$10$1;

    invoke-direct {v6, p0}, Lcom/asus/Viewer/MovieView$10$1;-><init>(Lcom/asus/Viewer/MovieView$10;)V

    invoke-virtual {v4, v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 691
    new-instance v4, Lcom/asus/Viewer/MovieView$10$2;

    invoke-direct {v4, p0}, Lcom/asus/Viewer/MovieView$10$2;-><init>(Lcom/asus/Viewer/MovieView$10;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 696
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/Viewer/MovieView;->access$1902(Lcom/asus/Viewer/MovieView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 697
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$1900(Lcom/asus/Viewer/MovieView;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 701
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_a
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$2000(Lcom/asus/Viewer/MovieView;)V

    goto/16 :goto_0

    .line 705
    :sswitch_b
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$500(Lcom/asus/Viewer/MovieView;)I

    move-result v4

    const/16 v5, 0x32

    if-eq v4, v5, :cond_0

    .line 706
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v4, v4, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x62

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 707
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v4, v4, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x61

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 708
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v4, v4, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x61

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 709
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$10;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v4, v4, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 562
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08000e -> :sswitch_0
        0x7f08000f -> :sswitch_3
        0x7f080011 -> :sswitch_5
        0x7f080012 -> :sswitch_6
        0x7f080013 -> :sswitch_7
        0x7f080014 -> :sswitch_8
        0x7f080015 -> :sswitch_9
        0x7f080029 -> :sswitch_a
        0x7f08002d -> :sswitch_b
        0x7f08002e -> :sswitch_1
        0x7f08002f -> :sswitch_2
        0x7f080030 -> :sswitch_4
    .end sparse-switch
.end method
