.class Lcom/android/certinstaller/CertFileList$RemoveableMonitor$5;
.super Landroid/os/FileObserver;
.source "CertFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertFileList$RemoveableMonitor;-><init>(Lcom/android/certinstaller/CertFileList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/certinstaller/CertFileList$RemoveableMonitor;

.field final synthetic val$this$0:Lcom/android/certinstaller/CertFileList;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$5;->this$1:Lcom/android/certinstaller/CertFileList$RemoveableMonitor;

    iput-object p3, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$5;->val$this$0:Lcom/android/certinstaller/CertFileList;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .parameter "evt"
    .parameter "path"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$5;->this$1:Lcom/android/certinstaller/CertFileList$RemoveableMonitor;

    invoke-static {v0, p1, p2}, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->access$000(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;ILjava/lang/String;)V

    .line 196
    return-void
.end method
