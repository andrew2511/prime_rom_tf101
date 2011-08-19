.class public Lcom/google/android/finsky/layout/PromoStripManager;
.super Ljava/lang/Object;
.source "PromoStripManager.java"


# instance fields
.field private final mHolder:Landroid/view/View;

.field private final mPromo:Lcom/google/android/finsky/layout/PromoStrip;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "promoStripView"
    .parameter "resources"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/PromoStrip;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PromoStripManager;->mPromo:Lcom/google/android/finsky/layout/PromoStrip;

    .line 24
    iput-object p1, p0, Lcom/google/android/finsky/layout/PromoStripManager;->mHolder:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStripManager;->mHolder:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public showWhenReady()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStripManager;->mHolder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStripManager;->mPromo:Lcom/google/android/finsky/layout/PromoStrip;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/PromoStrip;->allImagesExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStripManager;->mHolder:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->fadeInView(Landroid/view/View;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStripManager;->mHolder:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
