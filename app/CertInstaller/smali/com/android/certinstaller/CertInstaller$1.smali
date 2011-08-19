.class Lcom/android/certinstaller/CertInstaller$1;
.super Ljava/lang/Object;
.source "CertInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertInstaller;->extractPkcs12InBackground(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/certinstaller/CertInstaller;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertInstaller;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller$1;->this$0:Lcom/android/certinstaller/CertInstaller;

    iput-object p2, p0, Lcom/android/certinstaller/CertInstaller$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$1;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-static {v1}, Lcom/android/certinstaller/CertInstaller;->access$200(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CredentialHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$1;->val$password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/certinstaller/CredentialHelper;->extractPkcs12(Ljava/lang/String;)Z

    move-result v0

    .line 260
    .local v0, success:Z
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$1;->this$0:Lcom/android/certinstaller/CertInstaller;

    new-instance v2, Lcom/android/certinstaller/CertInstaller$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/certinstaller/CertInstaller$1$1;-><init>(Lcom/android/certinstaller/CertInstaller$1;Z)V

    invoke-virtual {v1, v2}, Lcom/android/certinstaller/CertInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method
