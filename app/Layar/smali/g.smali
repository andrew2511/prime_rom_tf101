.class public final Lg;
.super Landroid/webkit/WebView;


# instance fields
.field private a:Lcom/google/ads/AdActivity;

.field private b:Lcom/google/ads/AdSize;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/AdSize;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lg;->b:Lcom/google/ads/AdSize;

    invoke-virtual {p0}, Lg;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lg;->setScrollBarStyle(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lg;->a:Lcom/google/ads/AdActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg;->a:Lcom/google/ads/AdActivity;

    invoke-virtual {v0}, Lcom/google/ads/AdActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/AdActivity;)V
    .locals 0

    iput-object p1, p0, Lg;->a:Lcom/google/ads/AdActivity;

    return-void
.end method

.method public final b()Lcom/google/ads/AdActivity;
    .locals 1

    iget-object v0, p0, Lg;->a:Lcom/google/ads/AdActivity;

    return-object v0
.end method

.method protected final onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Lg;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lg;->b:Lcom/google/ads/AdSize;

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Lg;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iget-object v5, p0, Lg;->b:Lcom/google/ads/AdSize;

    invoke-virtual {v5}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iget-object v6, p0, Lg;->b:Lcom/google/ads/AdSize;

    invoke-virtual {v6}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    goto :goto_0

    :cond_3
    if-gt v5, v1, :cond_4

    if-le v4, v3, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space to show ad! Wants: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">, Has: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt;->e(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lg;->setVisibility(I)V

    invoke-virtual {p0, v7, v7}, Lg;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    goto/16 :goto_0
.end method
