.class final Lcom/zinio/mobile/android/view/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/SplashScreenActivity;


# direct methods
.method synthetic constructor <init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/view/br;-><init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/zinio/mobile/android/view/br;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->d()V

    .line 97
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->b()V

    .line 98
    iget-object v0, p0, Lcom/zinio/mobile/android/view/br;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->b(Lcom/zinio/mobile/android/view/SplashScreenActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/br;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->b(Lcom/zinio/mobile/android/view/SplashScreenActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/br;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/zinio/mobile/android/view/cm;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/br;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-direct {v1, v2}, Lcom/zinio/mobile/android/view/cm;-><init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/br;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0
.end method
