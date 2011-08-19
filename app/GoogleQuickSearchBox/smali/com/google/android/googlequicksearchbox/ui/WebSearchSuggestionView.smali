.class public Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;
.super Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;
.source "WebSearchSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$Factory;
    }
.end annotation


# instance fields
.field private mIconAndText1:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private getSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    move-result-object v0

    return-object v0
.end method

.method private setIsHistorySuggestion(Z)V
    .locals 2
    .parameter "isHistory"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon1:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon1:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindAsSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 1
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->bindAsSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->formatSuggestion(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->setIsHistorySuggestion(Z)V

    .line 69
    return-void
.end method

.method protected formatSuggestion(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "text"
    .parameter "userQuery"

    .prologue
    .line 72
    instance-of v0, p1, Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->getSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/googlequicksearchbox/SuggestionFormatter;->formatSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 77
    :cond_0
    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->onFinishInflate()V

    .line 49
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon2:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0f002c

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    .line 55
    return-void
.end method

.method public setFadedOut(Z)V
    .locals 4
    .parameter "fadedOut"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->setFadedOut(Z)V

    .line 60
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    if-nez p1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon2:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 62
    return-void

    :cond_0
    move v1, v2

    .line 60
    goto :goto_0

    :cond_1
    move v1, v2

    .line 61
    goto :goto_1
.end method

.method public setLongClickable(Z)V
    .locals 1
    .parameter "longClickable"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 95
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 122
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 114
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 100
    return-void
.end method
