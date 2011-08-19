.class final Lcom/zinio/mobile/android/view/library/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/zinio/mobile/android/a/a/j;

.field private synthetic n:Lcom/zinio/mobile/android/view/library/t;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/t;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/a;->n:Lcom/zinio/mobile/android/view/library/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->m:Lcom/zinio/mobile/android/a/a/j;

    .line 670
    iput-object p2, p0, Lcom/zinio/mobile/android/view/library/a;->a:Landroid/view/View;

    .line 671
    return-void
.end method


# virtual methods
.method final a()Lcom/zinio/mobile/android/a/a/j;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->m:Lcom/zinio/mobile/android/a/a/j;

    return-object v0
.end method

.method final a(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/a;->m:Lcom/zinio/mobile/android/a/a/j;

    .line 679
    return-void
.end method

.method final b()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->a:Landroid/view/View;

    const v1, 0x7f0c002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->d:Landroid/widget/TextView;

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method final c()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->a:Landroid/view/View;

    const v1, 0x7f0c002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->e:Landroid/widget/TextView;

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method final d()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->a:Landroid/view/View;

    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->b:Landroid/widget/ImageView;

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method final e()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->a:Landroid/view/View;

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->c:Landroid/widget/ImageView;

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method final f()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->f:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->a:Landroid/view/View;

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->f:Landroid/widget/Button;

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->f:Landroid/widget/Button;

    return-object v0
.end method

.method final g()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->h:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->a:Landroid/view/View;

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->h:Landroid/widget/ProgressBar;

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method final h()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->i:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->a:Landroid/view/View;

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->i:Landroid/widget/TextView;

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method final i()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->g:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->a:Landroid/view/View;

    const v1, 0x7f0c0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->g:Landroid/widget/ProgressBar;

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method final j()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->j:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->a:Landroid/view/View;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->j:Landroid/widget/RelativeLayout;

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method final k()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->k:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->a:Landroid/view/View;

    const v1, 0x7f0c003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->k:Landroid/widget/RelativeLayout;

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method final l()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->l:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->a:Landroid/view/View;

    const v1, 0x7f0c003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->l:Landroid/widget/TextView;

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/a;->l:Landroid/widget/TextView;

    return-object v0
.end method
