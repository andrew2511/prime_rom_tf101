.class Lcom/ecareme/pixwe/view/dialog/RegisterDialog$2;
.super Ljava/lang/Object;
.source "RegisterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$2;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$2;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$17(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;->onCancelClick()V

    .line 108
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$2;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    iget-object v0, v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 109
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$2;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$15(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$2;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$13(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$2;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->dismiss()V

    .line 113
    return-void
.end method
