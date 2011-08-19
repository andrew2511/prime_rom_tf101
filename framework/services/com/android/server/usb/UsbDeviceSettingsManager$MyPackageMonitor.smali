.class Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsbDeviceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbDeviceSettingsManager;)V
    .registers 2
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbDeviceSettingsManager;Lcom/android/server/usb/UsbDeviceSettingsManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbDeviceSettingsManager;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;

    #calls: Lcom/android/server/usb/UsbDeviceSettingsManager;->handlePackageUpdate(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->access$000(Lcom/android/server/usb/UsbDeviceSettingsManager;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"
    .parameter "uid"
    .parameter "components"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;

    #calls: Lcom/android/server/usb/UsbDeviceSettingsManager;->handlePackageUpdate(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->access$000(Lcom/android/server/usb/UsbDeviceSettingsManager;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbDeviceSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceSettingsManager;->clearDefaults(Ljava/lang/String;)V

    .line 362
    return-void
.end method
