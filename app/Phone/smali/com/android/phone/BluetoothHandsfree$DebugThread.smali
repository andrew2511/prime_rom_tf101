.class Lcom/android/phone/BluetoothHandsfree$DebugThread;
.super Ljava/lang/Thread;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 2764
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2764
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$DebugThread;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 2803
    const/16 v20, 0x1

    .line 2804
    .local v20, oldService:Z
    const/16 v19, 0x0

    .line 2805
    .local v19, oldRoam:Z
    const/16 v18, 0x0

    .line 2807
    .local v18, oldAudio:Z
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$7100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2808
    const-string v5, "debug.bt.hfp.battery"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 2809
    .local v13, batteryLevel:I
    if-ltz v13, :cond_1

    const/4 v5, 0x5

    if-gt v13, v5, :cond_1

    .line 2810
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 2811
    .local v17, intent:Landroid/content/Intent;
    const-string v5, "level"

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2812
    const-string v5, "scale"

    const/4 v6, 0x5

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    .line 2816
    .end local v17           #intent:Landroid/content/Intent;
    :cond_1
    const/16 v22, 0x0

    .line 2817
    .local v22, serviceStateChanged:Z
    const-string v5, "debug.bt.hfp.service"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v0, v5

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 2818
    if-nez v20, :cond_9

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 2819
    :goto_1
    const/16 v22, 0x1

    .line 2821
    :cond_2
    const-string v5, "debug.bt.hfp.roam"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v0, v5

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 2822
    if-nez v19, :cond_a

    const/4 v5, 0x1

    move/from16 v19, v5

    .line 2823
    :goto_2
    const/16 v22, 0x1

    .line 2825
    :cond_3
    if-eqz v22, :cond_4

    .line 2826
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2827
    .local v12, b:Landroid/os/Bundle;
    const-string v5, "state"

    if-eqz v20, :cond_b

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v12, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2828
    const-string v5, "roaming"

    move-object v0, v12

    move-object v1, v5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v12}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V

    .line 2832
    .end local v12           #b:Landroid/os/Bundle;
    :cond_4
    const-string v5, "debug.bt.hfp.audio"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 2833
    if-nez v18, :cond_c

    const/4 v5, 0x1

    move/from16 v18, v5

    .line 2834
    :goto_4
    if-eqz v18, :cond_d

    .line 2835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 2841
    :cond_5
    :goto_5
    const-string v5, "debug.bt.hfp.signal"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2842
    .local v4, signalLevel:I
    if-ltz v4, :cond_6

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_6

    .line 2843
    new-instance v3, Landroid/telephony/SignalStrength;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-direct/range {v3 .. v11}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    .line 2845
    .local v3, signalStrength:Landroid/telephony/SignalStrength;
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 2846
    .restart local v17       #intent:Landroid/content/Intent;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 2847
    .local v14, data:Landroid/os/Bundle;
    invoke-virtual {v3, v14}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 2848
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    .line 2852
    .end local v3           #signalStrength:Landroid/telephony/SignalStrength;
    .end local v14           #data:Landroid/os/Bundle;
    .end local v17           #intent:Landroid/content/Intent;
    :cond_6
    const-string v5, "debug.bt.hfp.clcc"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$6300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$3100(Ljava/lang/String;)V

    .line 2856
    :cond_7
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2861
    const-string v5, "debug.bt.unsol.inband"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 2863
    .local v16, inBandRing:I
    if-eqz v16, :cond_8

    const/4 v5, 0x1

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_0

    .line 2864
    :cond_8
    new-instance v21, Landroid/bluetooth/AtCommandResult;

    const/4 v5, 0x2

    move-object/from16 v0, v21

    move v1, v5

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2866
    .local v21, result:Landroid/bluetooth/AtCommandResult;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+BSIR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-virtual/range {v21 .. v21}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2818
    .end local v4           #signalLevel:I
    .end local v16           #inBandRing:I
    .end local v21           #result:Landroid/bluetooth/AtCommandResult;
    :cond_9
    const/4 v5, 0x0

    move/from16 v20, v5

    goto/16 :goto_1

    .line 2822
    :cond_a
    const/4 v5, 0x0

    move/from16 v19, v5

    goto/16 :goto_2

    .line 2827
    .restart local v12       #b:Landroid/os/Bundle;
    :cond_b
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 2833
    .end local v12           #b:Landroid/os/Bundle;
    :cond_c
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_4

    .line 2837
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    goto/16 :goto_5

    .line 2857
    .restart local v4       #signalLevel:I
    :catch_0
    move-exception v15

    .line 2870
    .end local v4           #signalLevel:I
    .end local v13           #batteryLevel:I
    .end local v22           #serviceStateChanged:Z
    :cond_e
    return-void
.end method
