.class Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;
.super Ljava/lang/Object;
.source "SystemUpdateInstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->onCreate(Landroid/os/Bundle;)V
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
    .line 127
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$002(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)Z

    .line 130
    const v0, 0x3112a

    const-string v1, "more-info"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    const-class v3, Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startActivity(Landroid/content/Intent;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$300(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)V

    .line 134
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    .line 135
    return-void
.end method
