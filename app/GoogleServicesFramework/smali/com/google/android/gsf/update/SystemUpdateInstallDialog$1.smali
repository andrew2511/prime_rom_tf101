.class Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;
.super Ljava/lang/Object;
.source "SystemUpdateInstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateInstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$002(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)Z

    .line 72
    const-string v0, "SystemUpdateInstallDialog"

    const-string v1, "OTA update accepted by user!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const v0, 0x3112a

    const-string v1, "install-now"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$100(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    .line 75
    return-void
.end method
