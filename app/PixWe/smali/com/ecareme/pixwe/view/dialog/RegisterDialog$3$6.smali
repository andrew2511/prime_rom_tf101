.class Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$6;
.super Ljava/lang/Object;
.source "RegisterDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$6;->this$1:Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3$6;->this$1:Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;->access$0(Lcom/ecareme/pixwe/view/dialog/RegisterDialog$3;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$17(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-interface {v0, v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;->onRegisterStatusListener(I)V

    .line 286
    return-void
.end method
