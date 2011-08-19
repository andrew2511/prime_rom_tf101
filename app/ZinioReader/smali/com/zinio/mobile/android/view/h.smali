.class final Lcom/zinio/mobile/android/view/h;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 180
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 186
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    return-void

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080043

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    iget-object v0, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->finish()V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zinio/mobile/android/b/a/f;

    .line 161
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUTH_FAILURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 165
    iget-object v0, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->c(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 167
    :cond_0
    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-direct {v1, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Lcom/zinio/mobile/android/b/c;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 172
    :pswitch_3
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->d()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 177
    :pswitch_4
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/h;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto/16 :goto_1

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
