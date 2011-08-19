.class final Lcom/zinio/mobile/android/view/p;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0800a1

    const/4 v2, 0x0

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 114
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/RegisterActivity;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    return-void

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 72
    iget-object v1, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/RegisterActivity;->a(Lcom/zinio/mobile/android/view/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 73
    iget-object v0, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->h()Ljava/lang/Thread;

    .line 78
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->b(Lcom/zinio/mobile/android/view/RegisterActivity;)Lcom/zinio/mobile/android/view/dialogs/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->j:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->finish()V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zinio/mobile/android/b/a/e;

    .line 87
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/e;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOGIN_EXISTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->b(Lcom/zinio/mobile/android/view/RegisterActivity;)Lcom/zinio/mobile/android/view/dialogs/e;

    move-result-object v0

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->b(Lcom/zinio/mobile/android/view/RegisterActivity;)Lcom/zinio/mobile/android/view/dialogs/e;

    move-result-object v0

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 98
    :pswitch_3
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->d()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 104
    :pswitch_4
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/p;->a:Lcom/zinio/mobile/android/view/RegisterActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 118
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto/16 :goto_1

    .line 69
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
