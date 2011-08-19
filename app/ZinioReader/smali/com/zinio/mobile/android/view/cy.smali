.class final Lcom/zinio/mobile/android/view/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:Z

.field private synthetic f:Lcom/zinio/mobile/android/view/ab;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ab;Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cy;->f:Lcom/zinio/mobile/android/view/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/cy;->e:Z

    .line 541
    iput-object p2, p0, Lcom/zinio/mobile/android/view/cy;->a:Landroid/view/View;

    .line 542
    iput p3, p0, Lcom/zinio/mobile/android/view/cy;->d:I

    .line 543
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/cy;)Landroid/widget/TextView;
    .locals 2
    .parameter

    .prologue
    .line 532
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cy;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/cy;->a:Landroid/view/View;

    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/cy;->c:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cy;->c:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method final a()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cy;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cy;->a:Landroid/view/View;

    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/cy;->b:Landroid/widget/ImageView;

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cy;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput p1, p0, Lcom/zinio/mobile/android/view/cy;->d:I

    .line 567
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-boolean p1, p0, Lcom/zinio/mobile/android/view/cy;->e:Z

    .line 575
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/zinio/mobile/android/view/cy;->d:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/cy;->e:Z

    return v0
.end method
