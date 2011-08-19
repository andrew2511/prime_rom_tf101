.class public Lcom/google/android/voicesearch/actioneditor/TextSlot;
.super Lcom/google/android/voicesearch/actioneditor/SlotView;
.source "TextSlot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextSlot"

.field private static final TOKENIZE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mSelectionBehavior:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "(^|\\s+)(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;->TOKENIZE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/SlotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private addHighlightsForSpan(Lcom/google/android/voicesearch/actions/CorrectionTextValue;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    .line 176
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 178
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 179
    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 181
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    sget-object v3, Lcom/google/android/voicesearch/actioneditor/TextSlot;->TOKENIZE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 184
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 186
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    .line 187
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    .line 189
    add-int v6, v1, v4

    invoke-virtual {p0, v6}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->isIndexAtStartOfSentence(I)Z

    move-result v6

    .line 190
    invoke-virtual {p1, v2, v4, v5, v6}, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->getAlternates(Ljava/lang/CharSequence;IIZ)Ljava/util/List;

    move-result-object v6

    .line 191
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 192
    new-instance v6, Lcom/google/android/voicesearch/actioneditor/HighlightSpan;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/voicesearch/actioneditor/HighlightSpan;-><init>(Landroid/content/Context;)V

    .line 193
    add-int/2addr v4, v1

    add-int/2addr v5, v1

    const/16 v7, 0x21

    invoke-interface {v0, v6, v4, v5, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 197
    :cond_1
    return-void
.end method

.method public static createTextSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;Z)Lcom/google/android/voicesearch/actioneditor/TextSlot;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    .line 72
    const v0, 0x7f030013

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 74
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;Z)V

    .line 77
    return-object v0
.end method

.method private getPhraseSpans()[Lcom/google/android/voicesearch/actions/CorrectionTextValue;
    .locals 4

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 170
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->length()I

    move-result v2

    const-class v3, Lcom/google/android/voicesearch/actions/CorrectionTextValue;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/voicesearch/actions/CorrectionTextValue;

    .line 172
    return-object p0
.end method

.method private refreshHighlights()V
    .locals 4

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->removeAllHighlights()V

    .line 202
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getPhraseSpans()[Lcom/google/android/voicesearch/actions/CorrectionTextValue;

    move-result-object v0

    .line 203
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 204
    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->addHighlightsForSpan(Lcom/google/android/voicesearch/actions/CorrectionTextValue;)V

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method private removeAllHighlights()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->length()I

    move-result v1

    const-class v2, Lcom/google/android/voicesearch/actioneditor/HighlightSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/voicesearch/actioneditor/HighlightSpan;

    .line 163
    array-length v1, p0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 164
    invoke-interface {v0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public capitalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    move-object v0, p1

    .line 124
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public deleteBetween(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 132
    const-string v1, ""

    invoke-interface {v0, p1, p2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 135
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    move v1, v3

    .line 136
    :goto_0
    if-eqz v1, :cond_0

    .line 137
    invoke-interface {v0, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    move v1, v3

    .line 138
    :goto_1
    sub-int v2, p1, v3

    invoke-interface {v0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_3

    move v2, v3

    .line 139
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 140
    add-int/lit8 v1, p1, 0x1

    const-string v2, ""

    invoke-interface {v0, p1, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 143
    :cond_0
    return-void

    :cond_1
    move v1, v4

    .line 135
    goto :goto_0

    :cond_2
    move v1, v4

    .line 137
    goto :goto_1

    :cond_3
    move v2, v4

    .line 138
    goto :goto_2
.end method

.method protected enterKeyboardMode()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->enterKeyboardMode()V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->isInCorrectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->removeAllHighlights()V

    .line 215
    :cond_0
    return-void
.end method

.method protected exitKeyboardMode()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->exitKeyboardMode()V

    .line 221
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->refreshHighlights()V

    .line 222
    return-void
.end method

.method public bridge synthetic getSlotValue()Lcom/google/android/voicesearch/actions/SlotValue;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSlotValue()Lcom/google/android/voicesearch/actions/TextValue;

    move-result-object v0

    return-object v0
.end method

.method public getSlotValue()Lcom/google/android/voicesearch/actions/TextValue;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Lcom/google/android/voicesearch/actions/TextValue;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/actions/TextValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)V

    .line 84
    if-eqz p6, :cond_0

    .line 85
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 88
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :cond_0
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;-><init>(Lcom/google/android/voicesearch/actioneditor/TextSlot;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;->mSelectionBehavior:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    .line 92
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;->mSelectionBehavior:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->addSlotBehavior(Lcom/google/android/voicesearch/actioneditor/SlotView$SlotBehavior;)V

    .line 93
    return-void
.end method

.method public inputSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    if-nez p1, :cond_0

    .line 240
    const-string v0, "TextSlot"

    const-string v1, "Tried to input null value"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 265
    :goto_0
    return v0

    .line 245
    :cond_0
    instance-of v0, p1, Lcom/google/android/voicesearch/actions/CorrectionTextValue;

    if-eqz v0, :cond_2

    .line 246
    check-cast p1, Lcom/google/android/voicesearch/actions/CorrectionTextValue;

    .line 248
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/CorrectionTextValue;->getText()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->isSelectionAtStartOfSentence()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->capitalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 254
    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->inputString(Ljava/lang/CharSequence;[I)V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 257
    aget v2, v1, v3

    aget v1, v1, v4

    const/16 v3, 0x21

    invoke-interface {v0, p1, v2, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 259
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->refreshHighlights()V

    move v0, v4

    .line 260
    goto :goto_0

    .line 262
    :cond_2
    const-string v0, "TextSlot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inputed SlotValue of unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 265
    goto :goto_0
.end method

.method public isInCorrectionMode()Z
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->isInKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->isHardKeyboardVisible()Z

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

.method public isIndexAtStartOfSentence(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    move v0, v3

    .line 150
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    const/16 v2, 0x4000

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public isSelectionAtStartOfSentence()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->isIndexAtStartOfSentence(I)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;->mSelectionBehavior:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;->mSelectionBehavior:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->selectWordsAtCursor()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TextSlot;->mSelectionBehavior:Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionSlotBehavior;->startCorrection()V

    .line 102
    :cond_1
    return-void
.end method

.method protected onValueChanged()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->isInCorrectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->refreshHighlights()V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->dismissCurrentPopup()V

    .line 115
    return-void
.end method

.method public setSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)V
    .locals 4
    .parameter

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->length()I

    move-result v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 232
    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->inputSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)Z

    .line 235
    :cond_0
    return-void
.end method
