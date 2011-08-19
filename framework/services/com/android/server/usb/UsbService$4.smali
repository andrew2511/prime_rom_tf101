.class Lcom/android/server/usb/UsbService$4;
.super Landroid/os/Handler;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;)V
    .registers 2
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private addEnabledFunctionsLocked(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 549
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$1000(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 550
    iget-object v1, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mEnabledFunctions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$1000(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "enabled"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget-object v1, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$1100(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 553
    iget-object v1, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDisabledFunctions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$1100(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "disabled"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 555
    :cond_42
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 559
    iget-object v5, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/usb/UsbService;->access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 560
    :try_start_9
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_130

    .line 611
    .end local p0
    :cond_e
    :goto_e
    monitor-exit v5

    .line 612
    :goto_f
    return-void

    .line 562
    .restart local p0
    :pswitch_10
    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLastConnected:I
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$1200(Lcom/android/server/usb/UsbService;)I

    move-result v7

    if-ne v6, v7, :cond_2c

    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$500(Lcom/android/server/usb/UsbService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLastConfiguration:I
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$1300(Lcom/android/server/usb/UsbService;)I

    move-result v7

    if-eq v6, v7, :cond_e

    .line 563
    :cond_2c
    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v6

    if-nez v6, :cond_b1

    .line 564
    const-string v6, "accessory"

    invoke-static {v6}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 567
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "exited USB accessory mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v6, "accessory"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/hardware/usb/UsbManager;->setFunctionEnabled(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_57

    .line 570
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "could not disable accessory function"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_57
    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$1400(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 573
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_62
    if-ge v3, v0, :cond_94

    .line 574
    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDefaultFunctions:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$1400(Lcom/android/server/usb/UsbService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 575
    .local v2, function:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v2, v6}, Landroid/hardware/usb/UsbManager;->setFunctionEnabled(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_91

    .line 576
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not reenable function "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 580
    .end local v2           #function:Ljava/lang/String;
    :cond_94
    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$700(Lcom/android/server/usb/UsbService;)Landroid/hardware/usb/UsbAccessory;

    move-result-object v6

    if-eqz v6, :cond_b1

    .line 581
    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$800(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceSettingsManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$700(Lcom/android/server/usb/UsbService;)Landroid/hardware/usb/UsbAccessory;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/usb/UsbDeviceSettingsManager;->accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V

    .line 582
    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;
    invoke-static {v6, v7}, Lcom/android/server/usb/UsbService;->access$702(Lcom/android/server/usb/UsbService;Landroid/hardware/usb/UsbAccessory;)Landroid/hardware/usb/UsbAccessory;

    .line 587
    .end local v0           #count:I
    .end local v3           #i:I
    :cond_b1
    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$1500(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 588
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v6, "device_provisioned"

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_d3

    .line 590
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Device not provisioned, skipping USB broadcast"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    monitor-exit v5

    goto/16 :goto_f

    .line 611
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local p0
    :catchall_d0
    move-exception v6

    monitor-exit v5
    :try_end_d2
    .catchall {:try_start_9 .. :try_end_d2} :catchall_d0

    throw v6

    .line 594
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local p0
    :cond_d3
    :try_start_d3
    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v7, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v7

    #setter for: Lcom/android/server/usb/UsbService;->mLastConnected:I
    invoke-static {v6, v7}, Lcom/android/server/usb/UsbService;->access$1202(Lcom/android/server/usb/UsbService;I)I

    .line 595
    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v7, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$500(Lcom/android/server/usb/UsbService;)I

    move-result v7

    #setter for: Lcom/android/server/usb/UsbService;->mLastConfiguration:I
    invoke-static {v6, v7}, Lcom/android/server/usb/UsbService;->access$1302(Lcom/android/server/usb/UsbService;I)I

    .line 598
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v4, intent:Landroid/content/Intent;
    const/high16 v6, 0x2000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 600
    const-string v6, "connected"

    iget-object v7, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v7

    if-eqz v7, :cond_11c

    move v7, v10

    :goto_100
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 601
    const-string v6, "configuration"

    iget-object v7, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$500(Lcom/android/server/usb/UsbService;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 602
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbService$4;->addEnabledFunctionsLocked(Landroid/content/Intent;)V

    .line 603
    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$1500(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_e

    :cond_11c
    move v7, v9

    .line 600
    goto :goto_100

    .line 608
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_11e
    iget-object v6, p0, Lcom/android/server/usb/UsbService$4;->this$0:Lcom/android/server/usb/UsbService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v10, :cond_12e

    move v7, v10

    :goto_129
    #calls: Lcom/android/server/usb/UsbService;->functionEnabledLocked(Ljava/lang/String;Z)V
    invoke-static {v6, p0, v7}, Lcom/android/server/usb/UsbService;->access$1600(Lcom/android/server/usb/UsbService;Ljava/lang/String;Z)V
    :try_end_12c
    .catchall {:try_start_d3 .. :try_end_12c} :catchall_d0

    goto/16 :goto_e

    :cond_12e
    move v7, v9

    goto :goto_129

    .line 560
    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11e
        :pswitch_11e
    .end packed-switch
.end method
