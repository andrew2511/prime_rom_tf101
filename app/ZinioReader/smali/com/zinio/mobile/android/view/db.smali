.class final Lcom/zinio/mobile/android/view/db;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 82
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 53
    :sswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->a(Lcom/zinio/mobile/android/view/SplashScreenActivity;Z)Z

    .line 54
    iget-object v0, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->a(Lcom/zinio/mobile/android/view/SplashScreenActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/db;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 58
    :sswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->a(Lcom/zinio/mobile/android/view/SplashScreenActivity;Z)Z

    .line 59
    iget-object v0, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->a(Lcom/zinio/mobile/android/view/SplashScreenActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/db;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 62
    :sswitch_2
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->b(Lcom/zinio/mobile/android/view/SplashScreenActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/c/e;->b(Landroid/os/Handler;)Z

    goto :goto_0

    .line 66
    :sswitch_3
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 68
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->b(Lcom/zinio/mobile/android/view/SplashScreenActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/c/e;->b(Landroid/os/Handler;)Z

    goto :goto_0

    .line 71
    :sswitch_4
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->c()V

    .line 72
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/zinio/mobile/android/view/br;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-direct {v1, v2}, Lcom/zinio/mobile/android/view/br;-><init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;)V

    new-instance v2, Lcom/zinio/mobile/android/view/cm;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-direct {v2, v3}, Lcom/zinio/mobile/android/view/cm;-><init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 75
    :sswitch_5
    iget-object v0, p0, Lcom/zinio/mobile/android/view/db;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    sget-object v1, Lcom/zinio/mobile/android/a;->i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->h()Ljava/lang/Thread;

    goto/16 :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
        0xa -> :sswitch_3
        0x3b -> :sswitch_4
        0x3c -> :sswitch_5
    .end sparse-switch
.end method
