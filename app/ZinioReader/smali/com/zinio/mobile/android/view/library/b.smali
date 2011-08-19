.class final Lcom/zinio/mobile/android/view/library/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/b;


# instance fields
.field final synthetic a:Lcom/zinio/mobile/android/view/library/t;

.field private final b:Lcom/zinio/mobile/android/a/a/j;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/t;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/b;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Lcom/zinio/mobile/android/view/library/b;->b:Lcom/zinio/mobile/android/a/a/j;

    .line 365
    return-void
.end method


# virtual methods
.method public final e_()V
    .locals 5

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/b/l;->h()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/b;->b:Lcom/zinio/mobile/android/a/a/j;

    if-ne v1, v2, :cond_2

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/b;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/b;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/b;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/library/t;->a(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/b;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/b;->b:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, p0, v1}, Lcom/zinio/mobile/android/view/library/t;->a(Lcom/zinio/mobile/android/view/library/b;Lcom/zinio/mobile/android/a/a/j;)V

    .line 374
    const/16 v0, 0x3e8

    .line 377
    :cond_2
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/b;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/t;->b:Landroid/os/Handler;

    new-instance v2, Lcom/zinio/mobile/android/view/library/w;

    invoke-direct {v2, p0}, Lcom/zinio/mobile/android/view/library/w;-><init>(Lcom/zinio/mobile/android/view/library/b;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    return-void
.end method
