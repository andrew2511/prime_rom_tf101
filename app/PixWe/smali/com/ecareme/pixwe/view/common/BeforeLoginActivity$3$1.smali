.class Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3$1;
.super Ljava/lang/Object;
.source "BeforeLoginActivity.java"

# interfaces
.implements Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3;

.field private final synthetic val$loginDialog:Lcom/ecareme/pixwe/view/dialog/LoginDialog;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3;Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3$1;->this$1:Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3;

    iput-object p2, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3$1;->val$loginDialog:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onRegisterStatusListener(I)V
    .locals 1
    .parameter "registerStatus"

    .prologue
    .line 100
    const/16 v0, 0x50

    if-ne p1, v0, :cond_1

    .line 101
    sget-object v0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->goHome(Landroid/content/Context;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3$1;->val$loginDialog:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->show()V

    goto :goto_0
.end method
