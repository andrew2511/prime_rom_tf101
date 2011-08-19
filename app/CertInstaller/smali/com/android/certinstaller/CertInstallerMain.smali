.class public Lcom/android/certinstaller/CertInstallerMain;
.super Lcom/android/certinstaller/CertFile;
.source "CertInstallerMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/certinstaller/CertFile;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/certinstaller/CertFile;->onCreate(Landroid/os/Bundle;)V

    .line 35
    if-eqz p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/certinstaller/CertInstallerMain$1;

    invoke-direct {v1, p0}, Lcom/android/certinstaller/CertInstallerMain$1;-><init>(Lcom/android/certinstaller/CertInstallerMain;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onError(I)V
    .locals 0
    .parameter "errorId"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->finish()V

    .line 87
    return-void
.end method

.method protected onInstallationDone(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->finish()V

    .line 82
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 51
    :goto_0
    const-string v2, "android.credentials.INSTALL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->isSdCardPresent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    const v0, 0x7f04001f

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->finish()V

    .line 77
    :goto_2
    return-void

    .line 49
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->getAllCertFiles()Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    const/high16 v0, 0x7f04

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 63
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 64
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertInstallerMain;->installFromFile(Ljava/io/File;)V

    goto :goto_2

    .line 67
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/certinstaller/CertFileList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertInstallerMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 71
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/certinstaller/CertInstaller;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/certinstaller/CertInstallerMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
