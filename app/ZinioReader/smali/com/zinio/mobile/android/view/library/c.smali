.class Lcom/zinio/mobile/android/view/library/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;


# direct methods
.method synthetic constructor <init>(Lcom/zinio/mobile/android/view/library/LibraryAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/view/library/c;-><init>(Lcom/zinio/mobile/android/view/library/LibraryAdapter;B)V

    return-void
.end method

.method private constructor <init>(Lcom/zinio/mobile/android/view/library/LibraryAdapter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 5
    .parameter

    .prologue
    .line 552
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    iget-boolean v0, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zinio/mobile/android/view/dialogs/s;->b:Lcom/zinio/mobile/android/view/dialogs/s;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/dialogs/o;->a(Lcom/zinio/mobile/android/view/dialogs/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->d:Z

    .line 559
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 560
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 563
    new-instance v2, Lcom/zinio/mobile/android/view/library/o;

    invoke-direct {v2, p0, p1}, Lcom/zinio/mobile/android/view/library/o;-><init>(Lcom/zinio/mobile/android/view/library/c;Lcom/zinio/mobile/android/a/a/j;)V

    .line 576
    new-instance v3, Lcom/zinio/mobile/android/view/library/p;

    invoke-direct {v3, p0}, Lcom/zinio/mobile/android/view/library/p;-><init>(Lcom/zinio/mobile/android/view/library/c;)V

    .line 602
    const v4, 0x7f080031

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 614
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-nez v0, :cond_1

    .line 609
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/library/c;->b(Lcom/zinio/mobile/android/a/a/j;)V

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a(Lcom/zinio/mobile/android/view/library/r;Lcom/zinio/mobile/android/a/a/j;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/library/c;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/library/c;->b(Lcom/zinio/mobile/android/a/a/j;)V

    return-void
.end method

.method private b(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 2
    .parameter

    .prologue
    .line 730
    new-instance v0, Lcom/zinio/mobile/android/view/library/r;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-direct {v0, v1, p1}, Lcom/zinio/mobile/android/view/library/r;-><init>(Lcom/zinio/mobile/android/view/library/LibraryAdapter;Lcom/zinio/mobile/android/a/a/j;)V

    invoke-virtual {p1, v0}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/Object;)V

    .line 731
    invoke-static {}, Lcom/zinio/mobile/android/a/b/l;->b()Lcom/zinio/mobile/android/a/b/l;

    move-result-object v0

    .line 733
    new-instance v1, Lcom/zinio/mobile/android/view/library/n;

    invoke-direct {v1, p0, v0, p1}, Lcom/zinio/mobile/android/view/library/n;-><init>(Lcom/zinio/mobile/android/view/library/c;Lcom/zinio/mobile/android/a/b/l;Lcom/zinio/mobile/android/a/a/j;)V

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/library/n;->start()V

    .line 766
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->notifyDataSetChanged()V

    .line 767
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0c0030

    const/4 v5, 0x0

    .line 617
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/library/e;

    .line 618
    if-nez v0, :cond_1

    .line 619
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/e;->a()Lcom/zinio/mobile/android/a/a/j;

    move-result-object v2

    .line 625
    if-nez v2, :cond_2

    .line 626
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_0

    .line 632
    :cond_2
    invoke-static {}, Lcom/zinio/mobile/android/App;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 633
    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v3, v3, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v1, v3}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/dialogs/e;->e()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    .line 635
    iget-object v3, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v3, v3, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v1, v3}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 636
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/a/a/j;)V

    .line 639
    :cond_3
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Lcom/zinio/mobile/android/view/LibraryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 643
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/e;->d()Landroid/widget/Button;

    move-result-object v3

    .line 649
    invoke-virtual {v3}, Landroid/widget/Button;->isShown()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/widget/Button;->isPressed()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 653
    :cond_4
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/e;->e()Landroid/widget/Button;

    move-result-object v0

    .line 654
    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/widget/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    :cond_5
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_6

    .line 662
    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    :cond_6
    instance-of v0, p1, Landroid/widget/Button;

    if-nez v0, :cond_9

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    const/4 v0, 0x1

    .line 683
    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_8
    if-nez v0, :cond_c

    .line 685
    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->j()Z

    move-result v0

    if-nez v0, :cond_a

    .line 688
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 689
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-virtual {v0, v1, v7, v5, v7}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    :cond_9
    move v0, v5

    .line 676
    goto :goto_1

    .line 696
    :cond_a
    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, v2}, Lcom/zinio/mobile/android/view/library/c;->b(Lcom/zinio/mobile/android/a/a/j;)V

    .line 697
    :goto_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->b()V

    goto/16 :goto_0

    .line 696
    :cond_b
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/a/a/j;)V

    goto :goto_2

    .line 702
    :cond_c
    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-nez v0, :cond_d

    .line 703
    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    invoke-direct {p0, v2}, Lcom/zinio/mobile/android/view/library/c;->a(Lcom/zinio/mobile/android/a/a/j;)V

    goto/16 :goto_0

    .line 710
    :cond_d
    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v0

    if-nez v0, :cond_e

    .line 711
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a(Lcom/zinio/mobile/android/a/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-direct {p0, v2}, Lcom/zinio/mobile/android/view/library/c;->a(Lcom/zinio/mobile/android/a/a/j;)V

    goto/16 :goto_0

    .line 715
    :cond_e
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/LibraryActivity;->a(Lcom/zinio/mobile/android/a/a/j;)V

    goto/16 :goto_0
.end method
