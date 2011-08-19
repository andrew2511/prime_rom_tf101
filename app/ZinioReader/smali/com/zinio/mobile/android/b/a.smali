.class final Lcom/zinio/mobile/android/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/zinio/mobile/android/b/a;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/zinio/mobile/android/b/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/b/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 332
    iget-object v1, p0, Lcom/zinio/mobile/android/b/a;->a:Landroid/app/Activity;

    instance-of v1, v1, Lcom/zinio/mobile/android/view/SplashScreenActivity;

    if-eqz v1, :cond_0

    .line 333
    iget v1, p0, Lcom/zinio/mobile/android/b/a;->b:I

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->b(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object p0, p0, Lcom/zinio/mobile/android/b/a;->a:Landroid/app/Activity;

    check-cast p0, Lcom/zinio/mobile/android/view/cf;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_0
    iget v1, p0, Lcom/zinio/mobile/android/b/a;->b:I

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object p0, p0, Lcom/zinio/mobile/android/b/a;->a:Landroid/app/Activity;

    check-cast p0, Lcom/zinio/mobile/android/view/cf;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0
.end method
