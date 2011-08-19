.class final Lcom/zinio/mobile/android/view/bt;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/TOCArticlesActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    .line 265
    const v0, 0x1090003

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 266
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

    .line 273
    .line 275
    if-nez p2, :cond_0

    .line 277
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->b(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/zinio/mobile/android/view/aa;

    invoke-direct {v1, p0, v0}, Lcom/zinio/mobile/android/view/aa;-><init>(Lcom/zinio/mobile/android/view/bt;Landroid/view/View;)V

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v0

    .line 290
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/bt;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/i;

    .line 292
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/aa;->a()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/aa;->b()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/i;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v3, p0, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-static {v3}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/aa;->a()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 296
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/aa;->b()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 301
    :goto_1
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/aa;->c()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    new-instance v2, Lcom/zinio/mobile/android/view/r;

    invoke-direct {v2, p0, v0}, Lcom/zinio/mobile/android/view/r;-><init>(Lcom/zinio/mobile/android/view/bt;Lcom/zinio/mobile/android/a/a/i;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    return-object v1

    .line 286
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/aa;

    move-object v1, p2

    move-object v2, v0

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/aa;->a()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 299
    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/aa;->b()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method
