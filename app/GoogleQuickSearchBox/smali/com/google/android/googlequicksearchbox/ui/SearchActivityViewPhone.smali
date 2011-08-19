.class public Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;
.super Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
.source "SearchActivityViewPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;
    }
.end annotation


# instance fields
.field private mListAdapter:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

.field private mSearchEditFrame:Landroid/view/ViewGroup;

.field private mSearchPlateFade:Landroid/view/View;

.field private mSearchPlateFadeHeight:I

.field private mSearchPlateShadow:Landroid/view/View;

.field private mSuggestionHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->updateSearchPlateShadow()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchEditFrame:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private updateSearchPlateShadow()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 139
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getFirstVisiblePosition()I

    move-result v4

    .line 140
    .local v4, topPos:I
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    move v0, v7

    .line 142
    .local v0, firstOffset:I
    :goto_0
    iget v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSuggestionHeight:I

    add-int v3, v5, v0

    .line 143
    .local v3, pixelsLeftAtBottomOfFirst:I
    iget v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateFadeHeight:I

    if-le v3, v5, :cond_2

    move v2, v6

    .line 144
    .local v2, isTopSuggestionVisible:Z
    :goto_1
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mListAdapter:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mListAdapter:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

    invoke-virtual {v5, v4}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->isItemSuggestion(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mListAdapter:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

    invoke-virtual {v5, v4}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;->isItemLastSuggestion(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    move v1, v6

    .line 149
    .local v1, isTopItemVisibleSuggestion:Z
    :goto_2
    if-eqz v1, :cond_5

    .line 151
    if-nez v4, :cond_4

    if-nez v0, :cond_4

    .line 154
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateFade:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_3
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateShadow:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :goto_4
    return-void

    .line 140
    .end local v0           #firstOffset:I
    .end local v1           #isTopItemVisibleSuggestion:Z
    .end local v2           #isTopSuggestionVisible:Z
    .end local v3           #pixelsLeftAtBottomOfFirst:I
    :cond_1
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    invoke-virtual {v5, v7}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    move v0, v5

    goto :goto_0

    .restart local v0       #firstOffset:I
    .restart local v3       #pixelsLeftAtBottomOfFirst:I
    :cond_2
    move v2, v7

    .line 143
    goto :goto_1

    .restart local v2       #isTopSuggestionVisible:Z
    :cond_3
    move v1, v7

    .line 144
    goto :goto_2

    .line 156
    .restart local v1       #isTopItemVisibleSuggestion:Z
    :cond_4
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateFade:Landroid/view/View;

    const v6, 0x7f020008

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateFade:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 162
    :cond_5
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateFade:Landroid/view/View;

    const v6, 0x7f020006

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 163
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateFade:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateShadow:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method protected createSuggestionsController(Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;
    .locals 5
    .parameter "observer"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    .line 172
    .local v0, app:Lcom/google/android/googlequicksearchbox/QsbApplication;
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;-><init>(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)V

    return-object v1
.end method

.method protected doHideTextFieldSpinner()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mQueryTextIcon:Landroid/widget/ImageView;

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mQueryTextIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 202
    return-void
.end method

.method protected doShowTextFieldSpinner()V
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 193
    .local v0, rotate:Landroid/view/animation/Animation;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 194
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mQueryTextIcon:Landroid/widget/ImageView;

    const v2, 0x7f02003e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mQueryTextIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    return-void
.end method

.method protected getSuggestionsWidth()I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected installAdapters()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;Landroid/widget/ListAdapter;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mListAdapter:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

    .line 187
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mListAdapter:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onFinishInflate()V

    .line 69
    const v0, 0x7f0f0010

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateFade:Landroid/view/View;

    .line 70
    const v0, 0x7f0f0011

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateShadow:Landroid/view/View;

    .line 72
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSuggestionHeight:I

    .line 73
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateFadeHeight:I

    .line 76
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setSeparatorFirst(Z)V

    .line 78
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 91
    const v0, 0x7f0f001f

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchEditFrame:Landroid/view/ViewGroup;

    .line 92
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$2;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$2;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setDrawableStateChangeListener(Lcom/google/android/googlequicksearchbox/ui/QueryTextView$DrawableStateChangeListener;)V

    .line 103
    return-void
.end method

.method protected onSuggestionsChanged()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onSuggestionsChanged()V

    .line 179
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->updateSearchPlateShadow()V

    .line 180
    return-void
.end method

.method public setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 2
    .parameter "suggestions"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->smoothScrollToPosition(I)V

    .line 114
    return-void
.end method

.method protected updateUi(Z)V
    .locals 3
    .parameter "queryEmpty"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 118
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateUi(Z)V

    .line 119
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->isHoneycombOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    if-eqz p1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateVsGoButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchPlateVsGoButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSearchCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
