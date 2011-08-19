.class Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$2;
.super Ljava/lang/Object;
.source "SystemUpdateDownloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$2;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$2;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-static {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->access$002(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;Z)Z

    .line 97
    const-string v0, "SystemUpdateDownloadDialog"

    const-string v1, "OTA download postponed by user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const v0, 0x3112a

    const-string v1, "download-later"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$2;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-static {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->access$200(Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;Z)V

    .line 100
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog$2;->this$0:Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateDownloadDialog;->finish()V

    .line 101
    return-void
.end method
