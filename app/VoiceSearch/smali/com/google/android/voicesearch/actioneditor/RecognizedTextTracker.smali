.class public Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;
.super Ljava/lang/Object;
.source "RecognizedTextTracker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mDisable:Z

.field private final mLogIdentifier:Ljava/lang/String;

.field private final mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private final mSlotView:Lcom/google/android/voicesearch/actioneditor/SlotView;

.field private mSuspend:Z

.field private final mVoiceAction:Lcom/google/android/voicesearch/actions/VoiceAction;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mSlotView:Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 46
    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mVoiceAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 47
    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogIdentifier:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mDisable:Z

    .line 49
    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p4, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mSlotView:Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 55
    iput-object p2, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mVoiceAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 56
    iput-object p3, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogIdentifier:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mDisable:Z

    .line 58
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 59
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mDisable:Z

    .line 67
    return-void
.end method

.method public logDelete()V
    .locals 3

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mDisable:Z

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->disable()V

    .line 112
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mVoiceAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->textModifiedByDeletion(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logSuggestionSelection()V
    .locals 4

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mDisable:Z

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mVoiceAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogIdentifier:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mSlotView:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->textModifiedBySuggestions(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logVoiceInput()V
    .locals 3

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mDisable:Z

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->disable()V

    .line 100
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mVoiceAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->textModifiedByVoice(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mSuspend:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mDisable:Z

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->disable()V

    .line 129
    if-ge p4, p3, :cond_2

    .line 131
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mVoiceAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->textModifiedByDeletion(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mVoiceAction:Lcom/google/android/voicesearch/actions/VoiceAction;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mLogIdentifier:Ljava/lang/String;

    add-int v3, p2, p4

    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->textModifiedByTyping(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSuspend(Z)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->mSuspend:Z

    .line 77
    return-void
.end method
