.class Lcom/android/certinstaller/CertInstaller$1$1;
.super Ljava/lang/Object;
.source "CertInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertInstaller$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/certinstaller/CertInstaller$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertInstaller$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller$1$1;->this$1:Lcom/android/certinstaller/CertInstaller$1;

    iput-boolean p2, p0, Lcom/android/certinstaller/CertInstaller$1$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 262
    new-instance v0, Lcom/android/certinstaller/CertInstaller$OnExtractionDoneAction;

    iget-boolean v1, p0, Lcom/android/certinstaller/CertInstaller$1$1;->val$success:Z

    invoke-direct {v0, v1}, Lcom/android/certinstaller/CertInstaller$OnExtractionDoneAction;-><init>(Z)V

    .line 263
    .local v0, action:Lcom/android/certinstaller/CertInstaller$MyAction;
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$1$1;->this$1:Lcom/android/certinstaller/CertInstaller$1;

    iget-object v1, v1, Lcom/android/certinstaller/CertInstaller$1;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-static {v1}, Lcom/android/certinstaller/CertInstaller;->access$300(Lcom/android/certinstaller/CertInstaller;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$1$1;->this$1:Lcom/android/certinstaller/CertInstaller$1;

    iget-object v1, v1, Lcom/android/certinstaller/CertInstaller$1;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-static {v1, v0}, Lcom/android/certinstaller/CertInstaller;->access$402(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$MyAction;)Lcom/android/certinstaller/CertInstaller$MyAction;

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$1$1;->this$1:Lcom/android/certinstaller/CertInstaller$1;

    iget-object v1, v1, Lcom/android/certinstaller/CertInstaller$1;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-interface {v0, v1}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto :goto_0
.end method
