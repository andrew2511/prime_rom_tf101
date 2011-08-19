.class Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;
.super Ljava/lang/Object;
.source "SystemUpdateInstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->resumeCountdown()V
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
    .line 165
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 167
    const-string v0, "SystemUpdateInstallDialog"

    const-string v1, "OTA update install cancelled by user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$400(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$200(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)V

    .line 170
    return-void
.end method
