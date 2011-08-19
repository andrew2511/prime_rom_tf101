.class Lcom/android/certinstaller/CertFileList$RemoveableMonitor;
.super Ljava/lang/Object;
.source "CertFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/certinstaller/CertFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveableMonitor"
.end annotation


# instance fields
.field mEPAD_MicroSD_DownloadMonitor:Landroid/os/FileObserver;

.field mEPAD_MicroSD_Monitor:Landroid/os/FileObserver;

.field mEPAD_SDREADER_DownloadMonitor:Landroid/os/FileObserver;

.field mEPAD_SDREADER_Monitor:Landroid/os/FileObserver;

.field mEPAD_UsbDisk1_DownloadMonitor:Landroid/os/FileObserver;

.field mEPAD_UsbDisk1_Monitor:Landroid/os/FileObserver;

.field mEPAD_UsbDisk2_DownloadMonitor:Landroid/os/FileObserver;

.field mEPAD_UsbDisk2_Monitor:Landroid/os/FileObserver;

.field final synthetic this$0:Lcom/android/certinstaller/CertFileList;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertFileList;)V
    .locals 10
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/io/File;

    sget-object v8, Landroid/os/Environment;->MOUNT_POINT_MICROSD:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, EPAD_MicroSD:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    sget-object v8, Landroid/os/Environment;->MOUNT_POINT_USBDISK1:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v4, EPAD_UsbDisk1:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    sget-object v8, Landroid/os/Environment;->MOUNT_POINT_USBDISK2:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v6, EPAD_UsbDisk2:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    sget-object v8, Landroid/os/Environment;->MOUNT_POINT_SDREADER:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, EPAD_SDREADER:Ljava/io/File;
    new-instance v8, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$1;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, p1}, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$1;-><init>(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V

    iput-object v8, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_MicroSD_Monitor:Landroid/os/FileObserver;

    .line 169
    new-instance v1, Ljava/io/File;

    const-string v8, "download"

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v1, EPAD_MicroSD_download:Ljava/io/File;
    new-instance v8, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$2;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, p1}, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$2;-><init>(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V

    iput-object v8, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_MicroSD_DownloadMonitor:Landroid/os/FileObserver;

    .line 177
    new-instance v8, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$3;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, p1}, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$3;-><init>(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V

    iput-object v8, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_UsbDisk1_Monitor:Landroid/os/FileObserver;

    .line 184
    new-instance v5, Ljava/io/File;

    const-string v8, "download"

    invoke-direct {v5, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v5, EPAD_UsbDisk1_download:Ljava/io/File;
    new-instance v8, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$4;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, p1}, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$4;-><init>(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V

    iput-object v8, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_UsbDisk1_DownloadMonitor:Landroid/os/FileObserver;

    .line 192
    new-instance v8, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$5;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, p1}, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$5;-><init>(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V

    iput-object v8, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_UsbDisk2_Monitor:Landroid/os/FileObserver;

    .line 199
    new-instance v7, Ljava/io/File;

    const-string v8, "download"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .local v7, EPAD_UsbDisk2_download:Ljava/io/File;
    new-instance v8, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$6;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, p1}, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$6;-><init>(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V

    iput-object v8, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_UsbDisk2_DownloadMonitor:Landroid/os/FileObserver;

    .line 207
    new-instance v8, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$7;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, p1}, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$7;-><init>(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V

    iput-object v8, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_SDREADER_Monitor:Landroid/os/FileObserver;

    .line 214
    new-instance v3, Ljava/io/File;

    const-string v8, "download"

    invoke-direct {v3, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    .local v3, EPAD_SDREADER_download:Ljava/io/File;
    new-instance v8, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$8;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, p1}, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$8;-><init>(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V

    iput-object v8, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_SDREADER_DownloadMonitor:Landroid/os/FileObserver;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->commonHandler(ILjava/lang/String;)V

    return-void
.end method

.method private commonHandler(ILjava/lang/String;)V
    .locals 2
    .parameter "evt"
    .parameter "path"

    .prologue
    .line 225
    sparse-switch p1, :sswitch_data_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 228
    :sswitch_0
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    invoke-virtual {v0, p2}, Lcom/android/certinstaller/CertFileList;->isFileAcceptable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    new-instance v1, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$9;

    invoke-direct {v1, p0}, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$9;-><init>(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/CertFileList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 225
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method startWatching()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_MicroSD_Monitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 241
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_MicroSD_DownloadMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 242
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_UsbDisk1_Monitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 243
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_UsbDisk1_DownloadMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 244
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_UsbDisk2_Monitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 245
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_UsbDisk2_DownloadMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 246
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_SDREADER_Monitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 247
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_SDREADER_DownloadMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 248
    return-void
.end method

.method stopWatching()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_MicroSD_Monitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 252
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_MicroSD_DownloadMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 253
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_UsbDisk1_Monitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 254
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_UsbDisk1_DownloadMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 255
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_UsbDisk2_Monitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 256
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_UsbDisk2_DownloadMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 257
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_SDREADER_Monitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 258
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->mEPAD_SDREADER_DownloadMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 259
    return-void
.end method
