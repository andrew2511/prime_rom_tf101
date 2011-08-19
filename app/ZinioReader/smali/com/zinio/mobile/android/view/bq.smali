.class final Lcom/zinio/mobile/android/view/bq;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bq;->a:Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;

    .line 254
    const v0, 0x1090003

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 255
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    .line 262
    .line 264
    if-nez p2, :cond_0

    .line 266
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bq;->a:Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->a(Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/zinio/mobile/android/view/cj;

    invoke-direct {v1, p0, v0}, Lcom/zinio/mobile/android/view/cj;-><init>(Lcom/zinio/mobile/android/view/bq;Landroid/view/View;)V

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v0

    .line 279
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/bq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/i;

    .line 281
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/cj;->a()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/cj;->b()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/i;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v3, p0, Lcom/zinio/mobile/android/view/bq;->a:Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;

    invoke-static {v3}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->b(Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/cj;->a()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 285
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/cj;->b()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 290
    :goto_1
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/cj;->c()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v2, Lcom/zinio/mobile/android/view/bv;

    invoke-direct {v2, p0, v0}, Lcom/zinio/mobile/android/view/bv;-><init>(Lcom/zinio/mobile/android/view/bq;Lcom/zinio/mobile/android/a/a/i;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    return-object v1

    .line 275
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/cj;

    move-object v1, p2

    move-object v2, v0

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/cj;->a()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 288
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/cj;->b()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method
