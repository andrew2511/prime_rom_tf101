.class public Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;
.super Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
.source "SearchActivityViewTablet.java"


# instance fields
.field protected mSummonsPane:Landroid/view/View;

.field protected mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method private updateClearQueryButton(Z)V
    .locals 2
    .parameter "queryEmpty"

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSearchCloseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSearchCloseButton:Landroid/widget/ImageButton;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateSummonsPaneState()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsPane:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsPane:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsPane:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearAdapters()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->clearAdapters()V

    .line 120
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    return-void
.end method

.method public considerHidingInputMethod()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method protected doHideTextFieldSpinner()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mQueryTextIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    const v0, 0x7f0f0021

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    return-void
.end method

.method protected doShowTextFieldSpinner()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mQueryTextIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    const v0, 0x7f0f0021

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    return-void
.end method

.method protected getSuggestionsWidth()I
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public installAdapters()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onFinishInflate()V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->isVoiceSearchAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    const-string v2, "nm"

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 69
    :goto_0
    const v1, 0x7f0f0015

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsPane:Landroid/view/View;

    .line 71
    const v1, 0x7f0f0016

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    .line 72
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    new-instance v2, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;

    invoke-direct {v2, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 73
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSuggestionsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 74
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setFocusable(Z)V

    .line 76
    const v1, 0x7f0f0012

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, dismissBg:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_0
    return-void

    .line 66
    .end local v0           #dismissBg:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onStart()V

    .line 91
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->updateSummonsPaneState()V

    .line 92
    return-void
.end method

.method protected onSummonsChanged()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->updateSummonsPaneState()V

    .line 97
    return-void
.end method

.method public setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 2
    .parameter "suggestions"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->smoothScrollToPosition(I)V

    .line 132
    return-void
.end method

.method protected updateUi(Z)V
    .locals 0
    .parameter "queryEmpty"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateUi(Z)V

    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->updateClearQueryButton(Z)V

    .line 143
    return-void
.end method
