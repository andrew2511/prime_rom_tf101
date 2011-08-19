.class final Lcom/zinio/mobile/android/view/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/ShopActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ShopActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ba;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ba;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/ShopActivity;->g(Lcom/zinio/mobile/android/view/ShopActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/ba;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ShopActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ba;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ShopActivity;->c()V

    .line 460
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ba;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/zinio/mobile/android/view/bx;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/bx;-><init>(Lcom/zinio/mobile/android/view/ba;)V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ba;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 471
    :cond_0
    return-void
.end method
