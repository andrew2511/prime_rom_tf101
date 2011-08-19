.class Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$1;
.super Ljava/lang/Object;
.source "BeforeLoginActivity.java"

# interfaces
.implements Lcom/ecareme/pixwe/view/dialog/LoginDialog$LoginDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onLoginStatusListener(I)V
    .locals 1
    .parameter "loginStatus"

    .prologue
    .line 70
    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    .line 71
    sget-object v0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->goHome(Landroid/content/Context;)V

    .line 75
    :cond_0
    return-void
.end method
