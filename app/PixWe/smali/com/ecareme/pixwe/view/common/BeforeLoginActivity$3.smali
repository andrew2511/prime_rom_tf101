.class Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3;
.super Ljava/lang/Object;
.source "BeforeLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$loginDialog:Lcom/ecareme/pixwe/view/dialog/LoginDialog;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3;->this$0:Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;

    iput-object p2, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3;->val$loginDialog:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 94
    new-instance v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    sget-object v1, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;->ctx:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3$1;

    iget-object v4, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3;->val$loginDialog:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-direct {v3, p0, v4}, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3$1;-><init>(Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$3;Lcom/ecareme/pixwe/view/dialog/LoginDialog;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;-><init>(Landroid/content/Context;ZLcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterDialogListener;)V

    .line 118
    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->show()V

    .line 119
    return-void
.end method
