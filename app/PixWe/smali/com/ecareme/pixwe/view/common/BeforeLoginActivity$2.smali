.class Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$2;
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
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$2;->this$0:Lcom/ecareme/pixwe/view/common/BeforeLoginActivity;

    iput-object p2, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$2;->val$loginDialog:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/BeforeLoginActivity$2;->val$loginDialog:Lcom/ecareme/pixwe/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/view/dialog/LoginDialog;->show()V

    .line 90
    return-void
.end method
