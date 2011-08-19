.class final Lcom/zinio/mobile/android/view/library/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/a/j;

.field private synthetic b:Lcom/zinio/mobile/android/view/library/d;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/d;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/j;->b:Lcom/zinio/mobile/android/view/library/d;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/library/j;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 447
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/j;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/j;->b:Lcom/zinio/mobile/android/view/library/d;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/j;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/library/d;->a(Lcom/zinio/mobile/android/view/library/d;Lcom/zinio/mobile/android/a/a/j;)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/j;->b:Lcom/zinio/mobile/android/view/library/d;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/j;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/library/t;->a(Lcom/zinio/mobile/android/view/library/b;Lcom/zinio/mobile/android/a/a/j;)V

    goto :goto_0
.end method
