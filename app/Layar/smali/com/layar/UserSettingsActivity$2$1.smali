.class Lcom/layar/UserSettingsActivity$2$1;
.super Ljava/lang/Object;
.source "UserSettingsActivity.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$LogoutHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserSettingsActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/UserSettingsActivity$2;


# direct methods
.method constructor <init>(Lcom/layar/UserSettingsActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserSettingsActivity$2$1;->this$1:Lcom/layar/UserSettingsActivity$2;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/LogoutResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 159
    iget-object v1, p0, Lcom/layar/UserSettingsActivity$2$1;->this$1:Lcom/layar/UserSettingsActivity$2;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$2;->access$0(Lcom/layar/UserSettingsActivity$2;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/UserSettingsActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/layar/UserSettingsActivity$2$1;->this$1:Lcom/layar/UserSettingsActivity$2;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$2;->access$0(Lcom/layar/UserSettingsActivity$2;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserSettingsActivity;->access$2(Lcom/layar/UserSettingsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 162
    invoke-virtual {p1}, Lcom/layar/data/user/LogoutResponse;->getResponseCode()I

    move-result v0

    .line 163
    .local v0, responseCode:I
    if-nez v0, :cond_2

    .line 164
    iget-object v1, p0, Lcom/layar/UserSettingsActivity$2$1;->this$1:Lcom/layar/UserSettingsActivity$2;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$2;->access$0(Lcom/layar/UserSettingsActivity$2;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/UserSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 165
    const v2, 0x7f090170

    .line 164
    invoke-static {v1, v2, v3}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/layar/ui/SmartToast;->show()V

    .line 166
    iget-object v1, p0, Lcom/layar/UserSettingsActivity$2$1;->this$1:Lcom/layar/UserSettingsActivity$2;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$2;->access$0(Lcom/layar/UserSettingsActivity$2;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserSettingsActivity;->access$3(Lcom/layar/UserSettingsActivity;)V

    .line 167
    iget-object v1, p0, Lcom/layar/UserSettingsActivity$2$1;->this$1:Lcom/layar/UserSettingsActivity$2;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$2;->access$0(Lcom/layar/UserSettingsActivity$2;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/UserSettingsActivity;->finish()V

    goto :goto_0

    .line 168
    :cond_2
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/layar/UserSettingsActivity$2$1;->this$1:Lcom/layar/UserSettingsActivity$2;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$2;->access$0(Lcom/layar/UserSettingsActivity$2;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserSettingsActivity;->access$3(Lcom/layar/UserSettingsActivity;)V

    goto :goto_0

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/layar/UserSettingsActivity$2$1;->this$1:Lcom/layar/UserSettingsActivity$2;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$2;->access$0(Lcom/layar/UserSettingsActivity$2;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserSettingsActivity;->access$0(Lcom/layar/UserSettingsActivity;)Lcom/layar/ActivityHelper;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v4, v2, v4}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/layar/UserSettingsActivity$2$1;->this$1:Lcom/layar/UserSettingsActivity$2;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$2;->access$0(Lcom/layar/UserSettingsActivity$2;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/UserSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 173
    const v2, 0x7f090171

    .line 172
    invoke-static {v1, v2, v3}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/layar/ui/SmartToast;->show()V

    goto :goto_0
.end method
