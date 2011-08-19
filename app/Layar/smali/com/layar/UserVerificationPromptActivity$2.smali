.class Lcom/layar/UserVerificationPromptActivity$2;
.super Ljava/lang/Object;
.source "UserVerificationPromptActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserVerificationPromptActivity;->loginListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserVerificationPromptActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserVerificationPromptActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserVerificationPromptActivity$2;->this$0:Lcom/layar/UserVerificationPromptActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserVerificationPromptActivity$2;)Lcom/layar/UserVerificationPromptActivity;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/layar/UserVerificationPromptActivity$2;->this$0:Lcom/layar/UserVerificationPromptActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/layar/UserVerificationPromptActivity$2;->this$0:Lcom/layar/UserVerificationPromptActivity;

    invoke-static {v1}, Lcom/layar/UserVerificationPromptActivity;->access$0(Lcom/layar/UserVerificationPromptActivity;)Lcom/layar/data/user/UserManager;

    move-result-object v1

    new-instance v2, Lcom/layar/UserVerificationPromptActivity$2$1;

    invoke-direct {v2, p0}, Lcom/layar/UserVerificationPromptActivity$2$1;-><init>(Lcom/layar/UserVerificationPromptActivity$2;)V

    invoke-virtual {v1, v2}, Lcom/layar/data/user/UserManager;->logout(Lcom/layar/data/user/UserManager$LogoutHandler;)V

    .line 104
    new-instance v0, Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/layar/UserVerificationPromptActivity$2;->this$0:Lcom/layar/UserVerificationPromptActivity;

    const-class v2, Lcom/layar/UserLoginActivity;

    .line 104
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, loginIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/layar/UserVerificationPromptActivity$2;->this$0:Lcom/layar/UserVerificationPromptActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/layar/UserVerificationPromptActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    return-void
.end method
