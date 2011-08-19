.class public Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;
.super Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior;
.source "TitleSlotBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior",
        "<",
        "Lcom/google/android/voicesearch/actioneditor/SlotView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TitleSlotBehavior"

.field private static final TITLE_TOUCH_SLOP_CHARS:I = 0x2


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/actioneditor/SlotView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior;-><init>(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 46
    return-void
.end method

.method private getSlotTitleSpan()Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v1

    const-class v2, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;

    .line 62
    array-length v0, p0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p0, v3

    goto :goto_0
.end method

.method private getTitlePopupPoint()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionStart()I

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionEnd()I

    move-result v1

    .line 51
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v0

    move v1, v0

    .line 56
    :goto_0
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-static {v2, v1, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    :cond_1
    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 112
    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_2

    .line 116
    :cond_0
    if-ltz p2, :cond_2

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge p2, v1, :cond_2

    .line 119
    if-ne v0, v2, :cond_1

    .line 120
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->requestFocus()Z

    .line 121
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelection(II)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->showTitlePopup()V

    :cond_1
    move v0, v2

    .line 132
    :goto_0
    return v0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public showTitlePopup()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->getSlotTitleSpan()Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    const-string v0, "TitleSlotBehavior"

    const-string v1, "No slot title span found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->getTitlePopupPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;-><init>(Landroid/content/Context;)V

    .line 78
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->canDelete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableDelete()V

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isInKeyboardMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableKeyboard()V

    .line 86
    :cond_2
    new-instance v2, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$1;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$1;-><init>(Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;)V

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->setListener(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;)V

    .line 105
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableList()V

    .line 106
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    goto :goto_0
.end method
