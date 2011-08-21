.class Landroid/net/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/HierarchicalState;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 1916
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 8
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1920
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_80

    .line 1997
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! unhandled message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    .end local p0
    :goto_1f
    :sswitch_1f
    return v5

    .line 1922
    .restart local p0
    :sswitch_20
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_2b

    move v2, v5

    :goto_27
    #setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$402(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1f

    :cond_2b
    move v2, v3

    goto :goto_27

    .line 1932
    :sswitch_2d
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_1f

    .line 1935
    :sswitch_3a
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_45

    move v2, v5

    :goto_41
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$002(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1f

    :cond_45
    move v2, v3

    goto :goto_41

    .line 1938
    :sswitch_47
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_52

    move v2, v5

    :goto_4e
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$602(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1f

    :cond_52
    move v2, v3

    goto :goto_4e

    .line 1941
    :sswitch_54
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0}, Landroid/net/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1f

    .line 1944
    .restart local p0
    :sswitch_5c
    invoke-static {}, Landroid/net/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1945
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_1f

    .line 1993
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :sswitch_6c
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const/16 v2, 0xb

    new-instance v3, Landroid/net/wifi/WpsResult;

    sget-object v4, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct {v3, v4}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_1f

    .line 1920
    nop

    :sswitch_data_80
    .sparse-switch
        0x10001 -> :sswitch_1f
        0x10002 -> :sswitch_1f
        0x1000b -> :sswitch_1f
        0x1000c -> :sswitch_1f
        0x1000d -> :sswitch_1f
        0x1000e -> :sswitch_1f
        0x10015 -> :sswitch_1f
        0x10016 -> :sswitch_1f
        0x10017 -> :sswitch_54
        0x10018 -> :sswitch_5c
        0x10019 -> :sswitch_20
        0x1001f -> :sswitch_1f
        0x10020 -> :sswitch_1f
        0x10021 -> :sswitch_1f
        0x10022 -> :sswitch_1f
        0x10024 -> :sswitch_1f
        0x10025 -> :sswitch_1f
        0x10026 -> :sswitch_1f
        0x10027 -> :sswitch_1f
        0x10028 -> :sswitch_1f
        0x10029 -> :sswitch_1f
        0x1002a -> :sswitch_1f
        0x1002b -> :sswitch_1f
        0x10033 -> :sswitch_2d
        0x10034 -> :sswitch_2d
        0x10035 -> :sswitch_2d
        0x10036 -> :sswitch_2d
        0x10037 -> :sswitch_1f
        0x10038 -> :sswitch_2d
        0x10039 -> :sswitch_1f
        0x1003a -> :sswitch_1f
        0x1003b -> :sswitch_2d
        0x10047 -> :sswitch_1f
        0x10048 -> :sswitch_1f
        0x10049 -> :sswitch_1f
        0x1004a -> :sswitch_1f
        0x1004b -> :sswitch_1f
        0x1004c -> :sswitch_1f
        0x1004d -> :sswitch_1f
        0x10050 -> :sswitch_1f
        0x10051 -> :sswitch_1f
        0x10052 -> :sswitch_3a
        0x10053 -> :sswitch_1f
        0x10056 -> :sswitch_1f
        0x10057 -> :sswitch_1f
        0x10058 -> :sswitch_1f
        0x10059 -> :sswitch_6c
        0x1005a -> :sswitch_1f
        0x1005b -> :sswitch_47
        0x1005c -> :sswitch_1f
        0x20004 -> :sswitch_1f
        0x20005 -> :sswitch_1f
    .end sparse-switch
.end method
