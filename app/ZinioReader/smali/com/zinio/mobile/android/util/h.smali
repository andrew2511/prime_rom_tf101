.class final Lcom/zinio/mobile/android/util/h;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/util/e;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/util/e;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0800a1

    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 199
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 205
    :cond_0
    :goto_0
    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_1
    return-void

    .line 142
    :sswitch_1
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->a()V

    .line 143
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/c/e;->a(Landroid/os/Handler;)V

    goto :goto_0

    .line 146
    :sswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    iget-boolean v0, v0, Lcom/zinio/mobile/android/util/e;->a:Z

    if-nez v0, :cond_0

    .line 148
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->b(Lcom/zinio/mobile/android/util/e;)Lcom/zinio/mobile/android/view/dialogs/e;

    move-result-object v0

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->b(Lcom/zinio/mobile/android/util/e;)Lcom/zinio/mobile/android/view/dialogs/e;

    move-result-object v0

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 160
    :sswitch_3
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    iget-boolean v0, v0, Lcom/zinio/mobile/android/util/e;->a:Z

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->b(Lcom/zinio/mobile/android/util/e;)Lcom/zinio/mobile/android/view/dialogs/e;

    move-result-object v0

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 170
    :sswitch_4
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    iget-boolean v0, v0, Lcom/zinio/mobile/android/util/e;->a:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->b(Lcom/zinio/mobile/android/util/e;)Lcom/zinio/mobile/android/view/dialogs/e;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v1}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Landroid/app/Activity;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 179
    :sswitch_5
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->b(Lcom/zinio/mobile/android/util/e;)Lcom/zinio/mobile/android/view/dialogs/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 182
    :sswitch_6
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->c()V

    .line 183
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->b(Lcom/zinio/mobile/android/util/e;)Lcom/zinio/mobile/android/view/dialogs/e;

    move-result-object v0

    new-instance v1, Lcom/zinio/mobile/android/util/g;

    iget-object v2, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-direct {v1, v2}, Lcom/zinio/mobile/android/util/g;-><init>(Lcom/zinio/mobile/android/util/e;)V

    new-instance v2, Lcom/zinio/mobile/android/util/m;

    iget-object v3, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-direct {v2, v3}, Lcom/zinio/mobile/android/util/m;-><init>(Lcom/zinio/mobile/android/util/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 186
    :sswitch_7
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 187
    iget-object v2, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v2}, Lcom/zinio/mobile/android/util/e;->c(Lcom/zinio/mobile/android/util/e;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 188
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    iget-boolean v0, v0, Lcom/zinio/mobile/android/util/e;->a:Z

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->h()Ljava/lang/Thread;

    .line 192
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->b(Lcom/zinio/mobile/android/util/e;)Lcom/zinio/mobile/android/view/dialogs/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/zinio/mobile/android/util/h;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->d(Lcom/zinio/mobile/android/util/e;)V

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto/16 :goto_1

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_0
        0xa -> :sswitch_5
        0x3b -> :sswitch_6
        0x3c -> :sswitch_7
    .end sparse-switch
.end method
