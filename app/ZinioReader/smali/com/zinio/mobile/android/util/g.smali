.class final Lcom/zinio/mobile/android/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/util/e;


# direct methods
.method synthetic constructor <init>(Lcom/zinio/mobile/android/util/e;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/util/g;-><init>(Lcom/zinio/mobile/android/util/e;B)V

    return-void
.end method

.method private constructor <init>(Lcom/zinio/mobile/android/util/e;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/zinio/mobile/android/util/g;->a:Lcom/zinio/mobile/android/util/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 224
    :try_start_0
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->d()V

    .line 225
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->b()V

    .line 226
    iget-object v0, p0, Lcom/zinio/mobile/android/util/g;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->d(Lcom/zinio/mobile/android/util/e;)V

    .line 227
    iget-object v0, p0, Lcom/zinio/mobile/android/util/g;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    iget-object v0, p0, Lcom/zinio/mobile/android/util/g;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v0}, Lcom/zinio/mobile/android/util/e;->b(Lcom/zinio/mobile/android/util/e;)Lcom/zinio/mobile/android/view/dialogs/e;

    move-result-object v0

    new-instance v1, Lcom/zinio/mobile/android/util/m;

    iget-object v2, p0, Lcom/zinio/mobile/android/util/g;->a:Lcom/zinio/mobile/android/util/e;

    invoke-direct {v1, v2}, Lcom/zinio/mobile/android/util/m;-><init>(Lcom/zinio/mobile/android/util/e;)V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/util/g;->a:Lcom/zinio/mobile/android/util/e;

    invoke-static {v1}, Lcom/zinio/mobile/android/util/e;->a(Lcom/zinio/mobile/android/util/e;)Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0
.end method
