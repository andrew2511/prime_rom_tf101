.class Lcom/zinio/mobile/android/view/library/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zinio/mobile/android/view/library/t;


# direct methods
.method synthetic constructor <init>(Lcom/zinio/mobile/android/view/library/t;)V
    .locals 1
    .parameter

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/view/library/d;-><init>(Lcom/zinio/mobile/android/view/library/t;B)V

    return-void
.end method

.method private constructor <init>(Lcom/zinio/mobile/android/view/library/t;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 431
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    iget-boolean v0, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zinio/mobile/android/view/dialogs/s;->b:Lcom/zinio/mobile/android/view/dialogs/s;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/dialogs/o;->a(Lcom/zinio/mobile/android/view/dialogs/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    iput-boolean v2, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->d:Z

    .line 438
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 439
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    new-instance v2, Lcom/zinio/mobile/android/view/library/j;

    invoke-direct {v2, p0, p1}, Lcom/zinio/mobile/android/view/library/j;-><init>(Lcom/zinio/mobile/android/view/library/d;Lcom/zinio/mobile/android/a/a/j;)V

    .line 455
    new-instance v3, Lcom/zinio/mobile/android/view/library/i;

    invoke-direct {v3, p0}, Lcom/zinio/mobile/android/view/library/i;-><init>(Lcom/zinio/mobile/android/view/library/d;)V

    .line 465
    const v4, 0x7f080031

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 477
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 431
    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-nez v0, :cond_2

    .line 472
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/library/d;->b(Lcom/zinio/mobile/android/a/a/j;)V

    goto :goto_1

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/zinio/mobile/android/view/library/t;->a(Lcom/zinio/mobile/android/view/library/b;Lcom/zinio/mobile/android/a/a/j;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/library/d;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/library/d;->b(Lcom/zinio/mobile/android/a/a/j;)V

    return-void
.end method

.method private b(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 2
    .parameter

    .prologue
    .line 558
    new-instance v0, Lcom/zinio/mobile/android/view/library/b;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-direct {v0, v1, p1}, Lcom/zinio/mobile/android/view/library/b;-><init>(Lcom/zinio/mobile/android/view/library/t;Lcom/zinio/mobile/android/a/a/j;)V

    invoke-virtual {p1, v0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    .line 559
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    .line 561
    new-instance v1, Lcom/zinio/mobile/android/view/library/h;

    invoke-direct {v1, p0, v0, p1}, Lcom/zinio/mobile/android/view/library/h;-><init>(Lcom/zinio/mobile/android/view/library/d;Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/a/j;)V

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/library/h;->start()V

    .line 595
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/t;->notifyDataSetChanged()V

    .line 596
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 481
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/library/a;

    .line 482
    if-nez v0, :cond_1

    .line 483
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/a;->a()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    .line 489
    if-nez v1, :cond_2

    .line 490
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_0

    .line 495
    :cond_2
    invoke-static {}, Lcom/zinio/mobile/android/App;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->e()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 498
    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 499
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/a/a/j;)V

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/LibraryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 512
    instance-of v2, p1, Landroid/widget/Button;

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    const/4 v2, 0x1

    .line 519
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_5
    if-nez v2, :cond_9

    .line 520
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->j()Z

    move-result v0

    if-nez v0, :cond_7

    .line 521
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 522
    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto :goto_0

    .line 512
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 526
    :cond_7
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, v1}, Lcom/zinio/mobile/android/view/library/d;->b(Lcom/zinio/mobile/android/a/a/j;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/a/a/j;)V

    goto/16 :goto_0

    .line 531
    :cond_9
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-nez v0, :cond_a

    .line 532
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-direct {p0, v1}, Lcom/zinio/mobile/android/view/library/d;->a(Lcom/zinio/mobile/android/a/a/j;)V

    goto/16 :goto_0

    .line 539
    :cond_a
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v0

    if-nez v0, :cond_b

    .line 540
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/library/t;->a(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0, v1}, Lcom/zinio/mobile/android/view/library/d;->a(Lcom/zinio/mobile/android/a/a/j;)V

    goto/16 :goto_0

    .line 544
    :cond_b
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/d;->a:Lcom/zinio/mobile/android/view/library/t;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/a/a/j;)V

    goto/16 :goto_0
.end method
