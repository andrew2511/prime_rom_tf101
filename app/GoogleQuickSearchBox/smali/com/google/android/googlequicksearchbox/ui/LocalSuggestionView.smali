.class Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;
.super Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;
.source "LocalSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView$Factory;
    }
.end annotation


# instance fields
.field private mRatingBar:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public bindAsSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 3
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    const/16 v2, 0x8

    .line 60
    invoke-super {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->bindAsSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->isBusinessListing(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/google/genie/GenieSuggestionFactory;->getBusinessRating(Lcom/google/android/googlequicksearchbox/Suggestion;)F

    move-result v0

    .line 64
    .local v0, rating:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->mRatingBar:Landroid/widget/RatingBar;

    const/high16 v2, 0x3f00

    div-float v2, v0, v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setProgress(I)V

    .line 66
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->mRatingBar:Landroid/widget/RatingBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 73
    .end local v0           #rating:F
    :goto_0
    return-void

    .line 68
    .restart local v0       #rating:F
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0

    .line 71
    .end local v0           #rating:F
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->onFinishInflate()V

    .line 54
    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->mRatingBar:Landroid/widget/RatingBar;

    .line 55
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView;->mRatingBar:Landroid/widget/RatingBar;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 56
    return-void
.end method
