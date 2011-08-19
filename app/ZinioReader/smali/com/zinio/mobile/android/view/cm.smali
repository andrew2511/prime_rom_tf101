.class final Lcom/zinio/mobile/android/view/cm;
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
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/view/cm;-><init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cm;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cm;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->b(Lcom/zinio/mobile/android/view/SplashScreenActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/cm;->a:Lcom/zinio/mobile/android/view/SplashScreenActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->b(Lcom/zinio/mobile/android/view/SplashScreenActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    return-void
.end method
