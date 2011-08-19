.class final Lcom/zinio/mobile/android/view/ce;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ce;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 534
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    .line 542
    if-nez p2, :cond_4

    .line 544
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ce;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 546
    new-instance v1, Lcom/zinio/mobile/android/view/s;

    invoke-direct {v1, p0, v0}, Lcom/zinio/mobile/android/view/s;-><init>(Lcom/zinio/mobile/android/view/ce;Landroid/view/View;)V

    .line 548
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v3, v1

    .line 556
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/ce;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 557
    iget-object v1, v3, Lcom/zinio/mobile/android/view/s;->c:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, v3, Lcom/zinio/mobile/android/view/s;->a:Landroid/view/View;

    const v4, 0x7f0c002c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/zinio/mobile/android/view/s;->c:Landroid/widget/TextView;

    :cond_0
    iget-object v1, v3, Lcom/zinio/mobile/android/view/s;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 560
    iget-object v1, v3, Lcom/zinio/mobile/android/view/s;->b:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    iget-object v1, v3, Lcom/zinio/mobile/android/view/s;->a:Landroid/view/View;

    const v5, 0x7f0c0028

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/zinio/mobile/android/view/s;->b:Landroid/widget/ImageView;

    :cond_1
    iget-object v1, v3, Lcom/zinio/mobile/android/view/s;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 562
    iget-object v1, v3, Lcom/zinio/mobile/android/view/s;->d:Landroid/widget/TextView;

    if-nez v1, :cond_2

    iget-object v1, v3, Lcom/zinio/mobile/android/view/s;->a:Landroid/view/View;

    const v4, 0x7f0c002d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/zinio/mobile/android/view/s;->d:Landroid/widget/TextView;

    :cond_2
    iget-object v1, v3, Lcom/zinio/mobile/android/view/s;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->f()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->g()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Lcom/zinio/mobile/android/resources/a/b;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v1, v3, Lcom/zinio/mobile/android/view/s;->e:Landroid/widget/ImageView;

    if-nez v1, :cond_3

    iget-object v1, v3, Lcom/zinio/mobile/android/view/s;->a:Landroid/view/View;

    const v4, 0x7f0c002a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/zinio/mobile/android/view/s;->e:Landroid/widget/ImageView;

    :cond_3
    iget-object v1, v3, Lcom/zinio/mobile/android/view/s;->e:Landroid/widget/ImageView;

    new-instance v3, Lcom/zinio/mobile/android/view/ci;

    invoke-direct {v3, p0, v0}, Lcom/zinio/mobile/android/view/ci;-><init>(Lcom/zinio/mobile/android/view/ce;Lcom/zinio/mobile/android/a/a/j;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    return-object v2

    .line 552
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/s;

    move-object v2, p2

    move-object v3, v0

    goto/16 :goto_0
.end method
