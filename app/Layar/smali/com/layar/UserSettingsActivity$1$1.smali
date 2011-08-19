.class Lcom/layar/UserSettingsActivity$1$1;
.super Ljava/lang/Object;
.source "UserSettingsActivity.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$VerifyAccountHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserSettingsActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/UserSettingsActivity$1;


# direct methods
.method constructor <init>(Lcom/layar/UserSettingsActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserSettingsActivity$1$1;->this$1:Lcom/layar/UserSettingsActivity$1;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/VerifyAccountResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 134
    iget-object v1, p0, Lcom/layar/UserSettingsActivity$1$1;->this$1:Lcom/layar/UserSettingsActivity$1;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$1;->access$0(Lcom/layar/UserSettingsActivity$1;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/UserSettingsActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/layar/data/user/VerifyAccountResponse;->getResponseCode()I

    move-result v0

    .line 137
    .local v0, responseCode:I
    if-nez v0, :cond_2

    .line 138
    iget-object v1, p0, Lcom/layar/UserSettingsActivity$1$1;->this$1:Lcom/layar/UserSettingsActivity$1;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$1;->access$0(Lcom/layar/UserSettingsActivity$1;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserSettingsActivity;->access$1(Lcom/layar/UserSettingsActivity;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/layar/UserSettingsActivity$1$1;->this$1:Lcom/layar/UserSettingsActivity$1;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$1;->access$0(Lcom/layar/UserSettingsActivity$1;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/UserSettingsActivity;->access$0(Lcom/layar/UserSettingsActivity;)Lcom/layar/ActivityHelper;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v3, v2, v3}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/layar/UserSettingsActivity$1$1;->this$1:Lcom/layar/UserSettingsActivity$1;

    invoke-static {v1}, Lcom/layar/UserSettingsActivity$1;->access$0(Lcom/layar/UserSettingsActivity$1;)Lcom/layar/UserSettingsActivity;

    move-result-object v1

    .line 142
    const v2, 0x7f090165

    .line 141
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
