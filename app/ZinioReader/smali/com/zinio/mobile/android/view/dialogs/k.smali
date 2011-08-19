.class final Lcom/zinio/mobile/android/view/dialogs/k;
.super Lcom/zinio/mobile/android/view/dialogs/a;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/dialogs/e;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/dialogs/e;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/k;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {p0}, Lcom/zinio/mobile/android/view/dialogs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 365
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/zinio/mobile/android/a;->c:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 366
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 368
    return-void
.end method
