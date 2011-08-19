.class Lcom/ecareme/pixwe/view/dialog/LoginDialog$2;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/dialog/LoginDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$2;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$2;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$9(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginDialogListener;->onCancelClick()V

    .line 92
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$2;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$7(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$2;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->access$5(Lcom/ecareme/pixwe/view/dialog/LoginDialog;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/LoginDialog$2;->this$0:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->dismiss()V

    .line 96
    return-void
.end method
