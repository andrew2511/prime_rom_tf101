.class Lcom/layar/UserVerificationPromptActivity$2$1;
.super Ljava/lang/Object;
.source "UserVerificationPromptActivity.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$LogoutHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserVerificationPromptActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/UserVerificationPromptActivity$2;


# direct methods
.method constructor <init>(Lcom/layar/UserVerificationPromptActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserVerificationPromptActivity$2$1;->this$1:Lcom/layar/UserVerificationPromptActivity$2;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/LogoutResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    iget-object v1, p0, Lcom/layar/UserVerificationPromptActivity$2$1;->this$1:Lcom/layar/UserVerificationPromptActivity$2;

    invoke-static {v1}, Lcom/layar/UserVerificationPromptActivity$2;->access$0(Lcom/layar/UserVerificationPromptActivity$2;)Lcom/layar/UserVerificationPromptActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/UserVerificationPromptActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/layar/data/user/LogoutResponse;->getResponseCode()I

    move-result v0

    .line 91
    .local v0, responseCode:I
    if-nez v0, :cond_2

    .line 92
    iget-object v1, p0, Lcom/layar/UserVerificationPromptActivity$2$1;->this$1:Lcom/layar/UserVerificationPromptActivity$2;

    invoke-static {v1}, Lcom/layar/UserVerificationPromptActivity$2;->access$0(Lcom/layar/UserVerificationPromptActivity$2;)Lcom/layar/UserVerificationPromptActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/UserVerificationPromptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 93
    const v2, 0x7f090170

    .line 92
    invoke-static {v1, v2, v4}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/layar/ui/SmartToast;->show()V

    goto :goto_0

    .line 94
    :cond_2
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/layar/UserVerificationPromptActivity$2$1;->this$1:Lcom/layar/UserVerificationPromptActivity$2;

    invoke-static {v1}, Lcom/layar/UserVerificationPromptActivity$2;->access$0(Lcom/layar/UserVerificationPromptActivity$2;)Lcom/layar/UserVerificationPromptActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserVerificationPromptActivity;->access$2(Lcom/layar/UserVerificationPromptActivity;)Lcom/layar/ActivityHelper;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v3, v2, v3}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/layar/UserVerificationPromptActivity$2$1;->this$1:Lcom/layar/UserVerificationPromptActivity$2;

    invoke-static {v1}, Lcom/layar/UserVerificationPromptActivity$2;->access$0(Lcom/layar/UserVerificationPromptActivity$2;)Lcom/layar/UserVerificationPromptActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/UserVerificationPromptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    const v2, 0x7f090171

    .line 98
    invoke-static {v1, v2, v4}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/layar/ui/SmartToast;->show()V

    goto :goto_0
.end method
