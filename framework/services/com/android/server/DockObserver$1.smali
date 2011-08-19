.class Lcom/android/server/DockObserver$1;
.super Landroid/os/Handler;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 153
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_14a

    .line 230
    :goto_9
    return-void

    .line 155
    :pswitch_a
    monitor-enter p0

    .line 156
    :try_start_b
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dock state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 160
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v7, "device_provisioned"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_68

    .line 162
    invoke-static {}, Lcom/android/server/DockObserver;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Device not provisioned, skipping dock broadcast"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$400(Lcom/android/server/DockObserver;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x2710

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 167
    monitor-exit p0

    goto :goto_9

    .line 227
    .end local v1           #cr:Landroid/content/ContentResolver;
    :catchall_65
    move-exception v7

    monitor-exit p0
    :try_end_67
    .catchall {:try_start_b .. :try_end_67} :catchall_65

    throw v7

    .line 170
    .restart local v1       #cr:Landroid/content/ContentResolver;
    :cond_68
    :try_start_68
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    const-string v7, "android.intent.extra.DOCK_STATE"

    iget-object v8, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v8}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v7, "android.intent.extra.DOCK_NAME"

    iget-object v8, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-static {}, Landroid/server/BluetoothService;->readDockBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_9d

    .line 180
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    :cond_9d
    const-string v7, "dock_sounds_enabled"

    const/4 v8, 0x1

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_fd

    .line 188
    const/4 v6, 0x0

    .line 189
    .local v6, whichSound:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v7

    if-nez v7, :cond_124

    .line 190
    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)I

    move-result v7

    if-eq v7, v10, :cond_c7

    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)I

    move-result v7

    if-eq v7, v12, :cond_c7

    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)I

    move-result v7

    if-ne v7, v13, :cond_119

    .line 193
    :cond_c7
    const-string v6, "desk_undock_sound"

    .line 207
    :cond_c9
    :goto_c9
    if-eqz v6, :cond_fd

    .line 208
    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, soundPath:Ljava/lang/String;
    if-eqz v4, :cond_fd

    .line 210
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 211
    .local v5, soundUri:Landroid/net/Uri;
    if-eqz v5, :cond_fd

    .line 212
    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 213
    .local v3, sfx:Landroid/media/Ringtone;
    if-eqz v3, :cond_fd

    .line 214
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 215
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    .line 223
    .end local v3           #sfx:Landroid/media/Ringtone;
    .end local v4           #soundPath:Ljava/lang/String;
    .end local v5           #soundUri:Landroid/net/Uri;
    .end local v6           #whichSound:Ljava/lang/String;
    :cond_fd
    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.asus.dock.action.VERSION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 226
    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 227
    monitor-exit p0

    goto/16 :goto_9

    .line 194
    .restart local v6       #whichSound:Ljava/lang/String;
    :cond_119
    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)I

    move-result v7

    if-ne v7, v11, :cond_c9

    .line 195
    const-string v6, "car_undock_sound"

    goto :goto_c9

    .line 198
    :cond_124
    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v7

    if-eq v7, v10, :cond_13c

    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v7

    if-eq v7, v12, :cond_13c

    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v7

    if-ne v7, v13, :cond_13f

    .line 201
    :cond_13c
    const-string v6, "desk_dock_sound"

    goto :goto_c9

    .line 202
    :cond_13f
    iget-object v7, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    #getter for: Lcom/android/server/DockObserver;->mDockState:I
    invoke-static {v7}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)I

    move-result v7

    if-ne v7, v11, :cond_c9

    .line 203
    const-string v6, "car_dock_sound"
    :try_end_149
    .catchall {:try_start_68 .. :try_end_149} :catchall_65

    goto :goto_c9

    .line 153
    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method
