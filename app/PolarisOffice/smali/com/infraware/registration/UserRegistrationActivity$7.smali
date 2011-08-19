.class Lcom/infraware/registration/UserRegistrationActivity$7;
.super Ljava/lang/Object;
.source "UserRegistrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/registration/UserRegistrationActivity;->setControlAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/registration/UserRegistrationActivity;


# direct methods
.method constructor <init>(Lcom/infraware/registration/UserRegistrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/registration/UserRegistrationActivity$7;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 384
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$7;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-static {v2}, Lcom/infraware/registration/UserRegistrationActivity;->access$12(Lcom/infraware/registration/UserRegistrationActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, username:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$7;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-static {v2}, Lcom/infraware/registration/UserRegistrationActivity;->access$13(Lcom/infraware/registration/UserRegistrationActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, email:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$7;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/registration/UserRegistrationActivity;->access$14(Lcom/infraware/registration/UserRegistrationActivity;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$7;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/registration/UserRegistrationActivity;->access$15(Lcom/infraware/registration/UserRegistrationActivity;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$7;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-static {v2}, Lcom/infraware/registration/UserRegistrationActivity;->access$2(Lcom/infraware/registration/UserRegistrationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$7;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-static {v2}, Lcom/infraware/registration/UserRegistrationActivity;->access$3(Lcom/infraware/registration/UserRegistrationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$7;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-virtual {v2}, Lcom/infraware/registration/UserRegistrationActivity;->setKeypadDown()V

    .line 393
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$7;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Lcom/infraware/registration/UserRegistrationActivity;->showDialog(I)V

    .line 394
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$7;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    iget-object v2, v2, Lcom/infraware/registration/UserRegistrationActivity;->mEventHandler:Landroid/os/Handler;

    const/16 v3, 0x384

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    :cond_0
    return-void
.end method
