.class final Lcom/zinio/mobile/android/view/library/u;
.super Lcom/zinio/mobile/android/view/library/d;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/zinio/mobile/android/view/library/t;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/library/t;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/u;->b:Lcom/zinio/mobile/android/view/library/t;

    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/library/d;-><init>(Lcom/zinio/mobile/android/view/library/t;)V

    .line 606
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/library/a;

    .line 612
    if-nez v0, :cond_0

    .line 613
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 647
    :goto_0
    return-void

    .line 617
    :cond_0
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/a;->a()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    .line 619
    if-nez v0, :cond_1

    .line 620
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_0

    .line 624
    :cond_1
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v1

    .line 625
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v2

    .line 626
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-virtual {v1, v2, v0}, Lcom/zinio/mobile/android/a/b/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 632
    if-eqz v3, :cond_2

    .line 633
    invoke-virtual {v1, v2, v0}, Lcom/zinio/mobile/android/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/u;->b:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/LibraryActivity;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zinio/mobile/android/view/library/k;

    invoke-direct {v1, p0, p1}, Lcom/zinio/mobile/android/view/library/k;-><init>(Lcom/zinio/mobile/android/view/library/u;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 645
    :cond_2
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/library/d;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
