.class Lcom/android/server/usb/UsbService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 203
    iput-object p1, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/usb/UsbService;->access$100(Lcom/android/server/usb/UsbService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 207
    :try_start_7
    iget-object v1, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$700(Lcom/android/server/usb/UsbService;)Landroid/hardware/usb/UsbAccessory;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 208
    iget-object v1, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceSettingsManager;
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$800(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    #getter for: Lcom/android/server/usb/UsbService;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;
    invoke-static {v2}, Lcom/android/server/usb/UsbService;->access$700(Lcom/android/server/usb/UsbService;)Landroid/hardware/usb/UsbAccessory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 210
    :cond_1e
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method
