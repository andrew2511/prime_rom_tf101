.class Lcom/asus/DLNA/SendServerCMD$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/SendServerCMD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/SendServerCMD;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/SendServerCMD;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 632
    :goto_0
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$000(Lcom/asus/DLNA/SendServerCMD;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 634
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$000(Lcom/asus/DLNA/SendServerCMD;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 635
    .local v1, bOrg:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 636
    const-string v6, "Utils.SendServerCMD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bundle is null!!, mDLNAServerCMDQueue.size()= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v8}, Lcom/asus/DLNA/SendServerCMD;->access$000(Lcom/asus/DLNA/SendServerCMD;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 640
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 641
    const/4 v1, 0x0

    .line 642
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$000(Lcom/asus/DLNA/SendServerCMD;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 644
    if-nez v0, :cond_1

    .line 645
    const-string v6, "Utils.SendServerCMD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bundle is null!!, mDLNAServerCMDQueue.size()= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v8}, Lcom/asus/DLNA/SendServerCMD;->access$000(Lcom/asus/DLNA/SendServerCMD;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    :cond_1
    const-string v6, "key_event"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 650
    .local v2, iEvent:I
    const-string v6, "key_position"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 654
    .local v3, position:I
    packed-switch v2, :pswitch_data_0

    .line 728
    :goto_1
    :pswitch_0
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto/16 :goto_0

    .line 656
    :pswitch_1
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/asus/DLNA/DLNAServer;->cpServer(I)V

    goto :goto_1

    .line 659
    :pswitch_2
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/asus/DLNA/DLNAServer;->cpRenderer(I)V

    goto :goto_1

    .line 662
    :pswitch_3
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/asus/DLNA/DLNAServer;->updateFilterType(I)V

    goto :goto_1

    .line 665
    :pswitch_4
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpStopQueryingContent()V

    goto :goto_1

    .line 668
    :pswitch_5
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpReQueryAgain()V

    goto :goto_1

    .line 671
    :pswitch_6
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/asus/DLNA/DLNAServer;->cpInfo(I)V

    goto :goto_1

    .line 674
    :pswitch_7
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/asus/DLNA/DLNAServer;->cpGo(I)V

    goto :goto_1

    .line 677
    :pswitch_8
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpTop()V

    goto :goto_1

    .line 680
    :pswitch_9
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpUp()V

    goto :goto_1

    .line 683
    :pswitch_a
    const-string v6, "key_para1"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 684
    .local v4, s1:Ljava/lang/String;
    const-string v6, "key_para2"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 685
    .local v5, s2:Ljava/lang/String;
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/asus/DLNA/DLNAServer;->cpPushURI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 688
    .end local v4           #s1:Ljava/lang/String;
    .end local v5           #s2:Ljava/lang/String;
    :pswitch_b
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/asus/DLNA/DLNAServer;->cpSetUri(I)V

    goto :goto_1

    .line 691
    :pswitch_c
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/asus/DLNA/DLNAServer;->cpSetSeekBar(I)V

    goto/16 :goto_1

    .line 695
    :pswitch_d
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpUpdateSeekBar()V

    goto/16 :goto_1

    .line 698
    :pswitch_e
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpPlay()V

    goto/16 :goto_1

    .line 701
    :pswitch_f
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpPause()V

    goto/16 :goto_1

    .line 704
    :pswitch_10
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpStop()V

    goto/16 :goto_1

    .line 708
    :pswitch_11
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpRewind()V

    goto/16 :goto_1

    .line 711
    :pswitch_12
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpFF()V

    goto/16 :goto_1

    .line 715
    :pswitch_13
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpMute()V

    goto/16 :goto_1

    .line 718
    :pswitch_14
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpIsRenderMute()Z

    goto/16 :goto_1

    .line 721
    :pswitch_15
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpVolUP()V

    goto/16 :goto_1

    .line 724
    :pswitch_16
    iget-object v6, p0, Lcom/asus/DLNA/SendServerCMD$2;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-static {v6}, Lcom/asus/DLNA/SendServerCMD;->access$100(Lcom/asus/DLNA/SendServerCMD;)Lcom/asus/DLNA/DLNAServer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/DLNA/DLNAServer;->cpVolDOWN()V

    goto/16 :goto_1

    .line 732
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #bOrg:Landroid/os/Bundle;
    .end local v2           #iEvent:I
    .end local v3           #position:I
    :cond_2
    return-void

    .line 654
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
