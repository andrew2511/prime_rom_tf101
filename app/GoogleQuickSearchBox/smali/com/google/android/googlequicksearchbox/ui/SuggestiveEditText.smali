.class public Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;
.super Lcom/google/android/googlequicksearchbox/ui/QueryTextView;
.source "SuggestiveEditText.java"


# instance fields
.field private mController:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->construct(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->construct(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->construct(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private construct(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 55
    .local v0, color:I
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-direct {v1, p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;-><init>(Landroid/widget/EditText;I)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->mController:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    .line 56
    return-void
.end method


# virtual methods
.method public addQueryTextWatcher(Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->mController:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->addUserTextChangeWatcher(Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;)V

    .line 107
    return-void
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->mController:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->getUserText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->mController:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->suspendCursorMovementHandling()V

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->mController:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->resumeCursorMovementHandlingAndApplyChanges()V

    .line 84
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->mController:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->restoreInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 74
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 61
    .local v0, superState:Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/widget/TextView$SavedState;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Landroid/widget/TextView$SavedState;

    .end local v0           #superState:Landroid/os/Parcelable;
    invoke-virtual {v0}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    .line 65
    .restart local v0       #superState:Landroid/os/Parcelable;
    :cond_0
    if-nez v0, :cond_1

    .line 66
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->mController:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->saveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public setSuggestedText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->mController:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->setSuggestedText(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3
    .parameter "text"
    .parameter "type"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestiveEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 94
    .local v0, buffer:Landroid/text/Editable;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 97
    :cond_0
    if-nez v0, :cond_1

    .line 98
    invoke-super {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method
