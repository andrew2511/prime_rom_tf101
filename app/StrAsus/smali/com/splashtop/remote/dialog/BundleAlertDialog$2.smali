.class Lcom/splashtop/remote/dialog/BundleAlertDialog$2;
.super Ljava/lang/Object;
.source "BundleAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/dialog/BundleAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/dialog/BundleAlertDialog;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/dialog/BundleAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog$2;->this$0:Lcom/splashtop/remote/dialog/BundleAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 85
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog$2;->this$0:Lcom/splashtop/remote/dialog/BundleAlertDialog;

    invoke-static {v0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->access$100(Lcom/splashtop/remote/dialog/BundleAlertDialog;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v0

    iget-object v1, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog$2;->this$0:Lcom/splashtop/remote/dialog/BundleAlertDialog;

    invoke-static {v1}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->access$000(Lcom/splashtop/remote/dialog/BundleAlertDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/bean/MacBean;->setMacPwd(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog$2;->this$0:Lcom/splashtop/remote/dialog/BundleAlertDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 88
    iget-object v0, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog$2;->this$0:Lcom/splashtop/remote/dialog/BundleAlertDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/splashtop/remote/MainActivity;

    iget-object v1, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog$2;->this$0:Lcom/splashtop/remote/dialog/BundleAlertDialog;

    invoke-static {v1}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->access$200(Lcom/splashtop/remote/dialog/BundleAlertDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/MainActivity;->setSaveIntoDB(Z)V

    .line 89
    iget-object v0, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog$2;->this$0:Lcom/splashtop/remote/dialog/BundleAlertDialog;

    invoke-virtual {v0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/splashtop/remote/MainActivity;

    iget-object v1, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog$2;->this$0:Lcom/splashtop/remote/dialog/BundleAlertDialog;

    invoke-static {v1}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->access$100(Lcom/splashtop/remote/dialog/BundleAlertDialog;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/splashtop/remote/MainActivity;->connectToServer(Lcom/splashtop/remote/bean/MacBean;Z)V

    .line 91
    :cond_0
    return v2
.end method
