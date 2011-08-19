.class public abstract Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;
.super Landroid/widget/RelativeLayout;
.source "BaseSuggestionView.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SuggestionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$1;,
        Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$LongClickListener;,
        Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$ClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

.field protected mIcon1:Landroid/widget/ImageView;

.field protected mIcon2:Landroid/widget/ImageView;

.field private mIndex:I

.field protected mText1:Landroid/widget/TextView;

.field protected mText2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public bindAdapter(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;I)V
    .locals 0
    .parameter "adapter"
    .parameter "index"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    .line 82
    iput p2, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    .line 83
    return-void
.end method

.method public bindAsSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 2
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    const/4 v1, 0x0

    .line 70
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$ClickListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$ClickListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->isFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->setLongClickable(Z)V

    .line 73
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$LongClickListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$LongClickListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->setLongClickable(Z)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method protected getGrouping()Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getGrouping()Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    return v0
.end method

.method public getListItem()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getText1()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected isFromHistory(Lcom/google/android/googlequicksearchbox/Suggestion;)Z
    .locals 1
    .parameter "suggestion"

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 58
    const v0, 0x7f0f0007

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText1:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0f0005

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText2:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0f0003

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIcon1:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0f0004

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIcon2:Landroid/widget/ImageView;

    .line 62
    return-void
.end method

.method protected onRemoveFromHistoryClicked()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->onSuggestionRemoveFromHistoryClicked(J)V

    .line 140
    :cond_0
    return-void
.end method

.method protected onSuggestionClicked()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->onSuggestionClicked(J)V

    .line 134
    :cond_0
    return-void
.end method

.method protected onSuggestionQueryRefineClicked()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mIndex:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->onSuggestionQueryRefineClicked(J)V

    .line 146
    :cond_0
    return-void
.end method

.method public setFadedOut(Z)V
    .locals 1
    .parameter "fadedOut"

    .prologue
    .line 66
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->setEnabled(Z)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setText1(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method protected setText2(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->mText2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
