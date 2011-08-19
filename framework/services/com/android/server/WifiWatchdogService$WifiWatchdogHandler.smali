.class Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiWatchdogHandler"
.end annotation


# static fields
.field static final ACTION_BACKGROUND_CHECK_AP:I = 0x3

.field static final ACTION_CHECK_AP:I = 0x1

.field static final ACTION_IDLE:I = 0x2

.field static final MESSAGE_DISABLE_WATCHDOG:I = 0x66

.field static final MESSAGE_DISCONNECTED:I = 0x68

.field static final MESSAGE_NETWORK_CHANGED:I = 0x67

.field static final MESSAGE_RESET:I = 0x69

.field static final MESSAGE_SLEEP:I = 0x65


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiWatchdogService;


# direct methods
.method private constructor <init>(Lcom/android/server/WifiWatchdogService;)V
    .registers 2
    .parameter

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1086
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;-><init>(Lcom/android/server/WifiWatchdogService;)V

    return-void
.end method

.method private removeAllActions()V
    .registers 2

    .prologue
    .line 1161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeMessages(I)V

    .line 1162
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeMessages(I)V

    .line 1163
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeMessages(I)V

    .line 1164
    return-void
.end method


# virtual methods
.method backgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 5
    .parameter "ap"

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->isBackgroundCheckEnabled()Z
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$800(Lcom/android/server/WifiWatchdogService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1128
    :goto_8
    return-void

    .line 1125
    :cond_9
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1126
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->getBackgroundCheckDelayMs()I
    invoke-static {v1}, Lcom/android/server/WifiWatchdogService;->access$900(Lcom/android/server/WifiWatchdogService;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8
.end method

.method checkAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .registers 3
    .parameter "ap"

    .prologue
    .line 1118
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1119
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1120
    return-void
.end method

.method disableWatchdog()V
    .registers 2

    .prologue
    .line 1141
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1142
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1143
    return-void
.end method

.method dispatchDisconnected()V
    .registers 2

    .prologue
    .line 1151
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1152
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1153
    return-void
.end method

.method dispatchNetworkChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1146
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1147
    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1148
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1168
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_46

    .line 1194
    .end local p0
    :goto_5
    return-void

    .line 1170
    .restart local p0
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Lcom/android/server/WifiWatchdogService;->handleNetworkChanged(Ljava/lang/String;)V
    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$1000(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V

    goto :goto_5

    .line 1173
    .restart local p0
    :sswitch_10
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/server/WifiWatchdogService$AccessPoint;

    #calls: Lcom/android/server/WifiWatchdogService;->handleCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$1100(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_5

    .line 1176
    .restart local p0
    :sswitch_1a
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/server/WifiWatchdogService$AccessPoint;

    #calls: Lcom/android/server/WifiWatchdogService;->handleBackgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$1200(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_5

    .line 1179
    .restart local p0
    :sswitch_24
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Lcom/android/server/WifiWatchdogService;->handleSleep(Ljava/lang/String;)V
    invoke-static {v0, p0}, Lcom/android/server/WifiWatchdogService;->access$1300(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V

    goto :goto_5

    .line 1182
    .restart local p0
    :sswitch_2e
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->handleIdle()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1400(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_5

    .line 1185
    :sswitch_34
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->handleIdle()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1400(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_5

    .line 1188
    :sswitch_3a
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->handleDisconnected()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1500(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_5

    .line 1191
    :sswitch_40
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->this$0:Lcom/android/server/WifiWatchdogService;

    #calls: Lcom/android/server/WifiWatchdogService;->handleReset()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->access$1600(Lcom/android/server/WifiWatchdogService;)V

    goto :goto_5

    .line 1168
    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_1a
        0x65 -> :sswitch_24
        0x66 -> :sswitch_34
        0x67 -> :sswitch_6
        0x68 -> :sswitch_3a
        0x69 -> :sswitch_40
    .end sparse-switch
.end method

.method idle()V
    .registers 2

    .prologue
    .line 1131
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1132
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1133
    return-void
.end method

.method reset()V
    .registers 2

    .prologue
    .line 1156
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1157
    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1158
    return-void
.end method

.method sleep(Ljava/lang/String;)V
    .registers 3
    .parameter "ssid"

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V

    .line 1137
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1138
    return-void
.end method
