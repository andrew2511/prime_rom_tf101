.class final Lcom/zinio/mobile/android/view/library/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/zinio/mobile/android/view/ClippedImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Lcom/zinio/mobile/android/a/a/j;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/view/View;

.field private synthetic h:Lcom/zinio/mobile/android/view/library/LibraryAdapter;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/LibraryAdapter;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/e;->h:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->e:Lcom/zinio/mobile/android/a/a/j;

    .line 824
    const v0, 0x7f0c0035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->d:Landroid/widget/Button;

    .line 825
    const v0, 0x7f0c0031

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/ClippedImageView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->a:Lcom/zinio/mobile/android/view/ClippedImageView;

    .line 826
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->a:Lcom/zinio/mobile/android/view/ClippedImageView;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ClippedImageView;->a()V

    .line 827
    const v0, 0x7f0c002c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->b:Landroid/widget/TextView;

    .line 828
    const v0, 0x7f0c0033

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->c:Landroid/widget/Button;

    .line 830
    const v0, 0x7f0c0036

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->f:Landroid/widget/ProgressBar;

    .line 831
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 832
    iput-object p2, p0, Lcom/zinio/mobile/android/view/library/e;->g:Landroid/view/View;

    .line 833
    return-void
.end method


# virtual methods
.method final a()Lcom/zinio/mobile/android/a/a/j;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->e:Lcom/zinio/mobile/android/a/a/j;

    return-object v0
.end method

.method final a(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 840
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/e;->e:Lcom/zinio/mobile/android/a/a/j;

    .line 841
    return-void
.end method

.method final b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method final c()Lcom/zinio/mobile/android/view/ClippedImageView;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->a:Lcom/zinio/mobile/android/view/ClippedImageView;

    return-object v0
.end method

.method final d()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->c:Landroid/widget/Button;

    return-object v0
.end method

.method final e()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->d:Landroid/widget/Button;

    return-object v0
.end method

.method final f()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/e;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method
