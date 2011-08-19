.class Lcom/android/server/usb/UsbService$1;
.super Landroid/os/UEventObserver;
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
    .line 156
    iput-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 16
    .parameter "event"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 159
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 160
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USB UEVENT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2b
    iget-object v8, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/usb/UsbService;->access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 164
    :try_start_32
    const-string v9, "SWITCH_NAME"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, name:Ljava/lang/String;
    const-string v9, "SWITCH_STATE"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_ae

    move-result-object v6

    .line 166
    .local v6, state:Ljava/lang/String;
    if-eqz v5, :cond_b3

    if-eqz v6, :cond_b3

    .line 168
    :try_start_42
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 169
    .local v3, intState:I
    const-string v9, "usb_connected"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 170
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #setter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v9, v3}, Lcom/android/server/usb/UsbService;->access$202(Lcom/android/server/usb/UsbService;I)I

    .line 172
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mSystemReady:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 174
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v10, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v10}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v10

    if-nez v10, :cond_6b

    move v10, v11

    :goto_66
    #calls: Lcom/android/server/usb/UsbService;->update(Z)V
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbService;->access$400(Lcom/android/server/usb/UsbService;Z)V
    :try_end_69
    .catchall {:try_start_42 .. :try_end_69} :catchall_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_69} :catch_91

    .line 199
    .end local v3           #intState:I
    :cond_69
    :goto_69
    :try_start_69
    monitor-exit v8
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_ae

    .line 200
    return-void

    .restart local v3       #intState:I
    :cond_6b
    move v10, v12

    .line 174
    goto :goto_66

    .line 176
    :cond_6d
    :try_start_6d
    const-string v9, "usb_configuration"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 177
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #setter for: Lcom/android/server/usb/UsbService;->mConfiguration:I
    invoke-static {v9, v3}, Lcom/android/server/usb/UsbService;->access$502(Lcom/android/server/usb/UsbService;I)I

    .line 179
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mSystemReady:Z
    invoke-static {v9}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 180
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v10, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mConnected:I
    invoke-static {v10}, Lcom/android/server/usb/UsbService;->access$200(Lcom/android/server/usb/UsbService;)I

    move-result v10

    if-nez v10, :cond_b1

    move v10, v11

    :goto_8d
    #calls: Lcom/android/server/usb/UsbService;->update(Z)V
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbService;->access$400(Lcom/android/server/usb/UsbService;Z)V
    :try_end_90
    .catchall {:try_start_6d .. :try_end_90} :catchall_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_90} :catch_91

    goto :goto_69

    .line 183
    .end local v3           #intState:I
    :catch_91
    move-exception v9

    move-object v0, v9

    .line 184
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_93
    invoke-static {}, Lcom/android/server/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not parse switch state from event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 199
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #state:Ljava/lang/String;
    :catchall_ae
    move-exception v9

    monitor-exit v8
    :try_end_b0
    .catchall {:try_start_93 .. :try_end_b0} :catchall_ae

    throw v9

    .restart local v3       #intState:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #state:Ljava/lang/String;
    :cond_b1
    move v10, v12

    .line 180
    goto :goto_8d

    .line 187
    .end local v3           #intState:I
    :cond_b3
    :try_start_b3
    const-string v9, "FUNCTION"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, function:Ljava/lang/String;
    const-string v9, "ENABLED"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, enabledStr:Ljava/lang/String;
    if-eqz v2, :cond_69

    if-eqz v1, :cond_69

    .line 192
    const-string v9, "1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e2

    move v7, v11

    .line 194
    .local v7, what:I
    :goto_cc
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/usb/UsbService;->access$600(Lcom/android/server/usb/UsbService;)Landroid/os/Handler;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 195
    .local v4, msg:Landroid/os/Message;
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    iget-object v9, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/usb/UsbService;->access$600(Lcom/android/server/usb/UsbService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e1
    .catchall {:try_start_b3 .. :try_end_e1} :catchall_ae

    goto :goto_69

    .end local v4           #msg:Landroid/os/Message;
    .end local v7           #what:I
    :cond_e2
    move v7, v13

    .line 192
    goto :goto_cc
.end method
