.class final Lcom/zinio/mobile/android/view/cw;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cw;->a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;

    .line 305
    const v0, 0x1090003

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 306
    return-void
.end method

.method static a(Landroid/widget/ImageView;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 347
    if-eqz p1, :cond_0

    .line 348
    const v0, 0x7f02002b

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    const v0, 0x7f02002a

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    .line 314
    if-nez p2, :cond_5

    .line 316
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cw;->a:Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/LibraryDeleteListActivity;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/zinio/mobile/android/view/cs;

    invoke-direct {v1, p0, v0}, Lcom/zinio/mobile/android/view/cs;-><init>(Lcom/zinio/mobile/android/view/cw;Landroid/view/View;)V

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v3, v1

    .line 328
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/cw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 329
    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->c:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->a:Landroid/view/View;

    const v4, 0x7f0c002c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/zinio/mobile/android/view/cs;->c:Landroid/widget/TextView;

    :cond_0
    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->d:Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->a:Landroid/view/View;

    const v4, 0x7f0c002e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/zinio/mobile/android/view/cs;->d:Landroid/widget/TextView;

    :cond_1
    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-static {v0}, Lcom/zinio/mobile/android/resources/a;->a(Lcom/zinio/mobile/android/a/a/j;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 332
    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->b:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->a:Landroid/view/View;

    const v5, 0x7f0c0028

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/zinio/mobile/android/view/cs;->b:Landroid/widget/ImageView;

    :cond_2
    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->e:Landroid/widget/TextView;

    if-nez v1, :cond_3

    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->a:Landroid/view/View;

    const v4, 0x7f0c002d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/zinio/mobile/android/view/cs;->e:Landroid/widget/TextView;

    :cond_3
    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->e:Landroid/widget/TextView;

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

    .line 338
    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->f:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->a:Landroid/view/View;

    const v4, 0x7f0c002a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/zinio/mobile/android/view/cs;->f:Landroid/widget/ImageView;

    :cond_4
    iget-object v1, v3, Lcom/zinio/mobile/android/view/cs;->f:Landroid/widget/ImageView;

    .line 339
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->e()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/zinio/mobile/android/view/cw;->a(Landroid/widget/ImageView;Z)V

    .line 341
    new-instance v1, Lcom/zinio/mobile/android/view/ch;

    invoke-direct {v1, p0, v0}, Lcom/zinio/mobile/android/view/ch;-><init>(Lcom/zinio/mobile/android/view/cw;Lcom/zinio/mobile/android/a/a/j;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    return-object v2

    .line 324
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/cs;

    move-object v2, p2

    move-object v3, v0

    goto/16 :goto_0
.end method
