.class Lcom/android/phone/BluetoothHandsfree$2;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 1321
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1322
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    invoke-static {v0, p2}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 1323
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v0

    .line 1324
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1325
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothHeadset;->setAudioState(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 1326
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->access$4602(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1328
    :cond_0
    monitor-exit v0

    .line 1332
    :cond_1
    :goto_0
    return-void

    .line 1328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1329
    .restart local p2
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    invoke-static {v0, p2}, Lcom/android/phone/BluetoothHandsfree;->access$4802(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 1334
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1335
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$2;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$4802(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0
.end method
