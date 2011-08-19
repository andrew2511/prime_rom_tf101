.class Lcom/android/certinstaller/CertFileList$RemoveableMonitor$9;
.super Ljava/lang/Object;
.source "CertFileList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->commonHandler(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/certinstaller/CertFileList$RemoveableMonitor;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertFileList$RemoveableMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$9;->this$1:Lcom/android/certinstaller/CertFileList$RemoveableMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor$9;->this$1:Lcom/android/certinstaller/CertFileList$RemoveableMonitor;

    iget-object v0, v0, Lcom/android/certinstaller/CertFileList$RemoveableMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    invoke-static {v0}, Lcom/android/certinstaller/CertFileList;->access$100(Lcom/android/certinstaller/CertFileList;)V

    .line 232
    return-void
.end method
