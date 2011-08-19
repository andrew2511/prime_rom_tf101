.class Lcom/splashtop/remote/MainActivity$MainAsyncTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private handshakeSucceedArray:[Lcom/splashtop/remote/bean/MacBean;

.field private randomNum:D

.field final synthetic this$0:Lcom/splashtop/remote/MainActivity;

.field private type:I


# direct methods
.method constructor <init>(Lcom/splashtop/remote/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 22
    .parameter "params"

    .prologue
    .line 564
    const/16 v18, 0x0

    aget-object v18, p1, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->type:I

    .line 565
    move-object/from16 v0, p0

    iget v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->type:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 630
    :cond_0
    :goto_0
    const/16 v18, 0x0

    :goto_1
    return-object v18

    .line 567
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$1004(Lcom/splashtop/remote/MainActivity;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->randomNum:D

    .line 569
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/bean/MacBean;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/splashtop/remote/bean/MacBean;

    .line 570
    .local v16, targetServer:Lcom/splashtop/remote/bean/MacBean;
    invoke-virtual/range {v16 .. v16}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v11

    .line 571
    .local v11, serverAddr:Ljava/lang/String;
    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 572
    .local v12, serverIP:Ljava/net/InetAddress;
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/bean/MacBean;->setMacIP(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {v16 .. v16}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v18

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    .line 575
    const-string v18, "6783"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/bean/MacBean;->setMacPort(Ljava/lang/String;)V

    .line 576
    const-string v18, "1024 x 768"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/bean/MacBean;->setMacResolution(Ljava/lang/String;)V

    .line 579
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lcom/splashtop/remote/bean/MacBean;

    move-object v13, v0

    .line 580
    .local v13, serverList:[Lcom/splashtop/remote/bean/MacBean;
    const/16 v18, 0x0

    aput-object v16, v13, v18

    .line 581
    const/16 v18, 0x4

    move-object v0, v13

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/splashtop/remote/JNILib;->nativeHandshakeServer([Lcom/splashtop/remote/bean/MacBean;I)[Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->handshakeSucceedArray:[Lcom/splashtop/remote/bean/MacBean;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    .end local v11           #serverAddr:Ljava/lang/String;
    .end local v12           #serverIP:Ljava/net/InetAddress;
    .end local v13           #serverList:[Lcom/splashtop/remote/bean/MacBean;
    .end local v16           #targetServer:Lcom/splashtop/remote/bean/MacBean;
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 584
    .local v7, ex:Ljava/net/UnknownHostException;
    const-string v18, "IRISMain"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ConnectThread::doInBackground exception:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 588
    .end local v7           #ex:Ljava/net/UnknownHostException;
    :pswitch_1
    const/4 v15, 0x0

    .line 590
    .local v15, shaPwd:[B
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/bean/MacBean;->getMacPwd()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/security/Coder;->encryptSHA([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 595
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v18

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_2

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    const-string v19, "6783"

    invoke-virtual/range {v18 .. v19}, Lcom/splashtop/remote/bean/MacBean;->setMacPort(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    const-string v19, "1024 x 768"

    invoke-virtual/range {v18 .. v19}, Lcom/splashtop/remote/bean/MacBean;->setMacResolution(Ljava/lang/String;)V

    .line 599
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/bean/MacBean;->getResolutionWidth()I

    move-result v17

    .line 600
    .local v17, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/bean/MacBean;->getResolutionHeight()I

    move-result v8

    .line 604
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v10

    .line 606
    .local v10, macaddr:Ljava/lang/String;
    :try_start_2
    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    .line 607
    .local v14, serverip:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/splashtop/remote/bean/MacBean;->setMacIP(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 611
    .end local v14           #serverip:Ljava/net/InetAddress;
    :goto_3
    const/16 v9, 0x1a7f

    .line 613
    .local v9, iPort:I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/bean/MacBean;->getMacPort()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    .line 617
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/bean/MacBean;->getMacIP()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v15

    move/from16 v2, v17

    move v3, v8

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/splashtop/remote/JNILib;->nativeConnectToServer(Ljava/lang/String;[BIII)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_1

    .line 591
    .end local v8           #height:I
    .end local v9           #iPort:I
    .end local v10           #macaddr:Ljava/lang/String;
    .end local v17           #width:I
    :catch_1
    move-exception v18

    move-object/from16 v6, v18

    .line 592
    .local v6, e:Ljava/lang/Exception;
    const-string v18, "IRISMain"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 608
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v8       #height:I
    .restart local v10       #macaddr:Ljava/lang/String;
    .restart local v17       #width:I
    :catch_2
    move-exception v18

    move-object/from16 v7, v18

    .line 609
    .restart local v7       #ex:Ljava/net/UnknownHostException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v18

    const-string v19, "0.0.0.0"

    invoke-virtual/range {v18 .. v19}, Lcom/splashtop/remote/bean/MacBean;->setMacIP(Ljava/lang/String;)V

    goto :goto_3

    .line 619
    .end local v7           #ex:Ljava/net/UnknownHostException;
    .end local v8           #height:I
    .end local v10           #macaddr:Ljava/lang/String;
    .end local v15           #shaPwd:[B
    .end local v17           #width:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/splashtop/remote/net/NetworkHelper;->getLocalIpAddressFromWifi(Landroid/content/Context;)I

    move-result v5

    .line 620
    .local v5, addr_long:I
    if-eqz v5, :cond_0

    .line 621
    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v20, 0x8

    invoke-static/range {v18 .. v20}, Lcom/splashtop/remote/JNILib;->nativeProbeServer(JI)V

    goto/16 :goto_0

    .line 614
    .end local v5           #addr_long:I
    .restart local v8       #height:I
    .restart local v9       #iPort:I
    .restart local v10       #macaddr:Ljava/lang/String;
    .restart local v15       #shaPwd:[B
    .restart local v17       #width:I
    :catch_3
    move-exception v18

    goto :goto_4

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 555
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 637
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 638
    iget v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->type:I

    packed-switch v0, :pswitch_data_0

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 640
    :pswitch_0
    iget-wide v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->randomNum:D

    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v2}, Lcom/splashtop/remote/MainActivity;->access$1000(Lcom/splashtop/remote/MainActivity;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->handshakeSucceedArray:[Lcom/splashtop/remote/bean/MacBean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->handshakeSucceedArray:[Lcom/splashtop/remote/bean/MacBean;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/splashtop/remote/bean/MacBean;->setMacOnline(Z)V

    .line 645
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v1}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/splashtop/remote/MainActivity;->connectToServer(Lcom/splashtop/remote/bean/MacBean;Z)V

    .line 653
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$700(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/ServerListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/splashtop/remote/ServerListView;->refreshView(Z)V

    goto :goto_0

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/splashtop/remote/bean/MacBean;->setMacOnline(Z)V

    .line 648
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$1100(Lcom/splashtop/remote/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$1100(Lcom/splashtop/remote/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v0, v5}, Lcom/splashtop/remote/MainActivity;->removeDialog(I)V

    .line 650
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    const v3, 0x7f07003b

    invoke-virtual {v2, v3}, Lcom/splashtop/remote/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/splashtop/remote/utils/MessageBox;->show(ILandroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 657
    :pswitch_1
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v0, v5}, Lcom/splashtop/remote/MainActivity;->removeDialog(I)V

    .line 658
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$1200(Lcom/splashtop/remote/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v2}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/splashtop/remote/MainActivity;->startDisplay(ILcom/splashtop/remote/bean/MacBean;)V

    goto/16 :goto_0

    .line 663
    :pswitch_2
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$200(Lcom/splashtop/remote/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$200(Lcom/splashtop/remote/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$1300(Lcom/splashtop/remote/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$1300(Lcom/splashtop/remote/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 665
    :cond_4
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v0, v4}, Lcom/splashtop/remote/MainActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 667
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$700(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/ServerListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/splashtop/remote/ServerListView;->finishProbe()V

    .line 668
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0, v4}, Lcom/splashtop/remote/MainActivity;->access$1402(Lcom/splashtop/remote/MainActivity;Z)Z

    goto/16 :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 555
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
