.class final Lcom/zinio/mobile/android/view/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private synthetic e:Lcom/zinio/mobile/android/view/bq;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/bq;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cj;->e:Lcom/zinio/mobile/android/view/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Lcom/zinio/mobile/android/view/cj;->a:Landroid/view/View;

    .line 314
    return-void
.end method


# virtual methods
.method final a()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cj;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cj;->a:Landroid/view/View;

    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/cj;->b:Landroid/widget/TextView;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cj;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method final b()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cj;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cj;->a:Landroid/view/View;

    const v1, 0x7f0c008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/cj;->c:Landroid/widget/TextView;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cj;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method final c()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cj;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cj;->a:Landroid/view/View;

    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/cj;->d:Landroid/widget/TextView;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cj;->d:Landroid/widget/TextView;

    return-object v0
.end method
