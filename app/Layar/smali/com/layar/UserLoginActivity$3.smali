.class Lcom/layar/UserLoginActivity$3;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserLoginActivity;->loginListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserLoginActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserLoginActivity$3;->this$0:Lcom/layar/UserLoginActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserLoginActivity$3;)Lcom/layar/UserLoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/layar/UserLoginActivity$3;->this$0:Lcom/layar/UserLoginActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/layar/UserLoginActivity$3;->this$0:Lcom/layar/UserLoginActivity;

    invoke-static {v0}, Lcom/layar/UserLoginActivity;->access$1(Lcom/layar/UserLoginActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/layar/UserLoginActivity$3;->this$0:Lcom/layar/UserLoginActivity;

    invoke-static {v0}, Lcom/layar/UserLoginActivity;->access$2(Lcom/layar/UserLoginActivity;)Lcom/layar/data/user/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/UserLoginActivity$3;->this$0:Lcom/layar/UserLoginActivity;

    invoke-static {v1}, Lcom/layar/UserLoginActivity;->access$3(Lcom/layar/UserLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/layar/UserLoginActivity$3;->this$0:Lcom/layar/UserLoginActivity;

    invoke-static {v2}, Lcom/layar/UserLoginActivity;->access$4(Lcom/layar/UserLoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/layar/UserLoginActivity$3$1;

    invoke-direct {v3, p0}, Lcom/layar/UserLoginActivity$3$1;-><init>(Lcom/layar/UserLoginActivity$3;)V

    .line 160
    const/4 v4, 0x1

    .line 131
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layar/data/user/UserManager;->login(Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/user/UserManager$LoginHandler;Z)V

    .line 161
    return-void
.end method
