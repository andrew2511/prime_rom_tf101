.class Lcom/android/phone/CellBroadcastSms$MyHandler;
.super Landroid/os/Handler;
.source "CellBroadcastSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CellBroadcastSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastSms;


# direct methods
.method private constructor <init>(Lcom/android/phone/CellBroadcastSms;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CellBroadcastSms;Lcom/android/phone/CellBroadcastSms$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSms$MyHandler;-><init>(Lcom/android/phone/CellBroadcastSms;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 535
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 565
    const-string v2, "CellBroadcastSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error! Unhandled message in CellBroadcastSms.java. Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return-void

    .line 538
    :pswitch_0
    const-string v2, "CellBroadcastSms"

    const-string v3, "Cell Broadcast SMS enabled/disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 541
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 544
    .local v1, result:[I
    aget v2, v1, v4

    if-nez v2, :cond_0

    .line 545
    const/16 v2, 0x1f

    aput v2, v1, v4

    .line 547
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    invoke-static {v2}, Lcom/android/phone/CellBroadcastSms;->access$700(Lcom/android/phone/CellBroadcastSms;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 548
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    invoke-static {v2}, Lcom/android/phone/CellBroadcastSms;->access$900(Lcom/android/phone/CellBroadcastSms;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    invoke-static {v3}, Lcom/android/phone/CellBroadcastSms;->access$800(Lcom/android/phone/CellBroadcastSms;)Lcom/android/phone/CellBroadcastSms$MyHandler;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 550
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    invoke-static {v2}, Lcom/android/phone/CellBroadcastSms;->access$900(Lcom/android/phone/CellBroadcastSms;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cdma_cell_broadcast_sms"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 553
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    invoke-static {v2, v4}, Lcom/android/phone/CellBroadcastSms;->access$1000(Lcom/android/phone/CellBroadcastSms;Z)V

    .line 556
    :cond_0
    invoke-static {v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$1100([I)V

    .line 557
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$1200()[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/CellBroadcastSms;->access$1300(Lcom/android/phone/CellBroadcastSms;[I)V

    goto :goto_0

    .line 562
    .end local v1           #result:[I
    :pswitch_2
    const-string v2, "CellBroadcastSms"

    const-string v3, "Set Cell Broadcast SMS values."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
