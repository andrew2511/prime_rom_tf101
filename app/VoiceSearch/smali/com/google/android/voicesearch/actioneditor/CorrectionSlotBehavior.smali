.class public Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;
.super Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior;
.source "CorrectionSlotBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior",
        "<",
        "Lcom/google/android/voicesearch/actioneditor/TextSlot;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/actioneditor/TextSlot;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/BaseSlotBehavior;-><init>(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;IIII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->intersectSelections(IIII)I

    move-result v0

    return v0
.end method

.method private getBestCorrectionSpans(II)[Lcom/google/android/voicesearch/actions/CorrectionTextValue;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 117
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionStart()I

    move-result v2

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionEnd()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const-class v3, Lcom/google/android/voicesearch/actions/CorrectionTextValue;

    invoke-interface {v1, v2, v0, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/voicesearch/actions/CorrectionTextValue;

    .line 121
    new-instance v2, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$1;-><init>(Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;Landroid/text/Editable;II)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 145
    return-object v0
.end method

.method private getSelectionPoint()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionStart()I

    move-result v1

    .line 87
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionEnd()I

    move-result v0

    .line 89
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    invoke-static {v2, v1, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private intersectSelections(IIII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    if-gt p3, p1, :cond_1

    .line 97
    if-lt p4, p2, :cond_0

    .line 98
    sub-int v0, p2, p1

    .line 105
    :goto_0
    return v0

    .line 100
    :cond_0
    sub-int v0, p4, p1

    goto :goto_0

    .line 102
    :cond_1
    if-lt p4, p2, :cond_2

    .line 103
    sub-int v0, p2, p3

    goto :goto_0

    .line 105
    :cond_2
    sub-int v0, p4, p3

    goto :goto_0
.end method

.method private refreshSelection(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->isInCorrectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object p0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {p0, p2}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->setSelection(I)V

    .line 80
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->length()I

    move-result v0

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_1

    if-gez p2, :cond_2

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    iget-object p0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->setSelection(I)V

    goto :goto_0

    .line 59
    :cond_2
    if-ge p2, p1, :cond_5

    move v0, p1

    move v2, p2

    .line 65
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v2, 0x1

    if-gt v0, v3, :cond_3

    .line 67
    iget-object p0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->setSelection(I)V

    goto :goto_0

    .line 70
    :cond_3
    const/4 v3, 0x0

    const-string v4, " "

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 73
    const-string v3, " "

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 74
    if-gez v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->length()I

    move-result v0

    .line 78
    :cond_4
    iget-object p0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->setSelection(II)V

    goto :goto_0

    :cond_5
    move v0, p2

    move v2, p1

    goto :goto_1
.end method


# virtual methods
.method public getAlternates()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionStart()I

    move-result v1

    .line 155
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionEnd()I

    move-result v2

    .line 157
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 158
    invoke-direct {p0, v1, v2}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->getBestCorrectionSpans(II)[Lcom/google/android/voicesearch/actions/CorrectionTextValue;

    move-result-object v3

    .line 160
    array-length v4, v3

    if-nez v4, :cond_0

    .line 161
    new-array v0, v5, [Ljava/lang/String;

    .line 179
    :goto_0
    return-object v0

    .line 164
    :cond_0
    aget-object v3, v3, v5

    .line 166
    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 167
    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 168
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 169
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 172
    invoke-interface {v0, v4, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    sub-int/2addr v1, v4

    .line 174
    sub-int/2addr v2, v4

    .line 177
    iget-object p0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->isSelectionAtStartOfSentence()Z

    move-result v4

    .line 178
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->getAlternates(Ljava/lang/CharSequence;IIZ)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 236
    if-nez v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->requestFocus()Z

    .line 239
    iput p2, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSelectionStart:I

    .line 240
    iput p2, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSelectionEnd:I

    .line 242
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSelectionStart:I

    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSelectionEnd:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->refreshSelection(II)V

    .line 265
    :cond_0
    :goto_0
    return v4

    .line 243
    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 244
    iput p2, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSelectionEnd:I

    .line 245
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionEnd()I

    move-result v1

    .line 246
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSelectionStart:I

    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSelectionEnd:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->refreshSelection(II)V

    .line 247
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionEnd()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 248
    iget-object p0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->cancelLongPress()V

    goto :goto_0

    .line 250
    :cond_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionStart()I

    move-result v2

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->length()I

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->isInCorrectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    :cond_3
    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0, v4}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->setSelected(Z)V

    .line 257
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSelectionStart:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSelectionStart:I

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSelectionStart:I

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->setSelection(I)V

    goto :goto_0

    .line 262
    :cond_4
    iput v3, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSelectionStart:I

    .line 263
    iput v3, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSelectionEnd:I

    goto :goto_0
.end method

.method public selectWordsAtCursor()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionStart()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionEnd()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->refreshSelection(II)V

    .line 184
    return-void
.end method

.method public showCorrectionPopup(Landroid/graphics/Point;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->createAlternatesPopup(Landroid/content/Context;[Ljava/lang/CharSequence;ZI)Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    move-result-object v1

    .line 197
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionStart()I

    move-result v2

    .line 198
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionEnd()I

    move-result v3

    .line 200
    if-ne v2, v3, :cond_0

    .line 201
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableDelete()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->isInKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableKeyboard()V

    .line 208
    :cond_1
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;

    invoke-direct {v0, p0, v2, v3, p2}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior$2;-><init>(Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;II[Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->setListener(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;)V

    .line 230
    iget-object p0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->mSlot:Lcom/google/android/voicesearch/actioneditor/SlotView;

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    .line 231
    return-void
.end method

.method public startCorrection()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->getAlternates()[Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->getSelectionPoint()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->showCorrectionPopup(Landroid/graphics/Point;[Ljava/lang/String;)V

    .line 192
    return-void
.end method
