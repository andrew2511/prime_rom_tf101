.class Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;
.super Ljava/lang/Object;
.source "DetailsRelatedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailsItemViewHolder"
.end annotation


# instance fields
.field public item:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

.field public final ratingCount:Landroid/widget/TextView;

.field public final ratingStars:Landroid/widget/RatingBar;

.field public final thumbnail:Landroid/widget/ImageView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const v0, 0x7f090020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->title:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f090034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f090035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->ratingStars:Landroid/widget/RatingBar;

    .line 61
    const v0, 0x7f090036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsRelatedViewBinder$DetailsItemViewHolder;->ratingCount:Landroid/widget/TextView;

    .line 62
    return-void
.end method
