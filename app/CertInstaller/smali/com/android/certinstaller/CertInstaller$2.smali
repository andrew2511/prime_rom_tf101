.class Lcom/android/certinstaller/CertInstaller$2;
.super Ljava/lang/Object;
.source "CertInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertInstaller;->createPkcs12PasswordDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/certinstaller/CertInstaller;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertInstaller;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller$2;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$2;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-static {v1}, Lcom/android/certinstaller/CertInstaller;->access$500(Lcom/android/certinstaller/CertInstaller;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$2;->this$0:Lcom/android/certinstaller/CertInstaller;

    const v2, 0x7f040017

    invoke-static {v1, v2}, Lcom/android/certinstaller/CertInstaller;->access$600(Lcom/android/certinstaller/CertInstaller;I)V

    .line 313
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$2;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-static {v1}, Lcom/android/certinstaller/CertInstaller;->access$700(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/ViewHelper;

    move-result-object v1

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Lcom/android/certinstaller/ViewHelper;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$2;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-static {v1}, Lcom/android/certinstaller/CertInstaller;->access$700(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/ViewHelper;

    move-result-object v1

    const v2, 0x7f040012

    invoke-virtual {v1, v2}, Lcom/android/certinstaller/ViewHelper;->showError(I)V

    .line 308
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$2;->this$0:Lcom/android/certinstaller/CertInstaller;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$2;->this$0:Lcom/android/certinstaller/CertInstaller;

    new-instance v2, Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;

    invoke-direct {v2, v0}, Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/certinstaller/CertInstaller;->access$402(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$MyAction;)Lcom/android/certinstaller/CertInstaller$MyAction;

    .line 311
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$2;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-static {v1}, Lcom/android/certinstaller/CertInstaller;->access$400(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CertInstaller$MyAction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$2;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-interface {v1, v2}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto :goto_0
.end method
