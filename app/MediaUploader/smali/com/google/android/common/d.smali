.class final Lcom/google/android/common/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/e;

    move-result-object v0

    if-nez v0, :cond_1

    .line 587
    :cond_0
    return-void

    .line 558
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->g(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/g;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->g(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/g;

    move-result-object v1

    aget-object v1, v1, v0

    .line 560
    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->i(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/common/j;->a(Lcom/google/android/common/g;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 561
    invoke-interface {v1}, Lcom/google/android/common/g;->c()Landroid/content/Intent;

    move-result-object v1

    .line 562
    if-eqz v1, :cond_3

    .line 563
    iget-object v1, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/common/e;->a()Lcom/google/android/common/g;

    move-result-object v1

    .line 569
    if-eqz v1, :cond_3

    .line 570
    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v2}, Lcom/google/android/common/SwipeySwitcher;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_2

    .line 577
    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->g(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/g;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/common/g;->a()V

    .line 578
    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v2, v0}, Lcom/google/android/common/SwipeySwitcher;->removeViewAt(I)V

    .line 582
    :cond_2
    iget-object v2, p0, Lcom/google/android/common/d;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2, v1, v0}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/g;I)V

    .line 558
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
