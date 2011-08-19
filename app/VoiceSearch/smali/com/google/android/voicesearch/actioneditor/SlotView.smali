.class public abstract Lcom/google/android/voicesearch/actioneditor/SlotView;
.super Landroid/widget/EditText;
.source "SlotView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;,
        Lcom/google/android/voicesearch/actioneditor/SlotView$SlotBehavior;
    }
.end annotation


# static fields
.field private static final MENU_ITEM_WITH_TEXT:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Slot"


# instance fields
.field private mBehaviors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView$SlotBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private mCanDelete:Z

.field protected mCheckIsTextEditor:Z

.field private mInvalidSlotTitleSpan:Landroid/text/style/TextAppearanceSpan;

.field private mKeyboardStateTracker:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

.field protected mRecognizedTextTracker:Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

.field private mShowKeyboard:Z

.field private mSlotContainer:Lcom/google/android/voicesearch/actioneditor/SlotContainer;

.field private mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

.field private mTitle:Ljava/lang/String;

.field private mTitleSlotBehavior:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;

.field private mTitleSpan:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;

.field private mWillShowPopup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const v3, 0x102002a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x1020021

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x1020023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x1020020

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x102001f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x1020029

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x1020028

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/voicesearch/actioneditor/SlotView;->MENU_ITEM_WITH_TEXT:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mListeners:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mBehaviors:Ljava/util/List;

    .line 84
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mCanDelete:Z

    .line 85
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mWillShowPopup:Z

    .line 90
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mShowKeyboard:Z

    .line 92
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mRecognizedTextTracker:Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    .line 102
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mCheckIsTextEditor:Z

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/SlotView;)Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitleSpan:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/actioneditor/SlotView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/actioneditor/SlotView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/text/style/TextAppearanceSpan;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mInvalidSlotTitleSpan:Landroid/text/style/TextAppearanceSpan;

    return-object v0
.end method

.method private getOffset(II)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 269
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getTotalPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    .line 270
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getTotalPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    .line 272
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getScrollX()I

    move-result v2

    add-int/2addr v0, v2

    .line 273
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    .line 275
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 277
    if-gez v1, :cond_0

    move v0, v4

    .line 294
    :goto_0
    return v0

    .line 281
    :cond_0
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_2

    .line 282
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getLineHeight()I

    move-result v2

    add-int/2addr v0, v2

    if-ge v1, v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v4

    .line 288
    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 294
    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    goto :goto_0
.end method

.method private initTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090764

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/SlotSpec;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    .line 190
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;-><init>(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitleSlotBehavior:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;

    .line 191
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitleSlotBehavior:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->addSlotBehavior(Lcom/google/android/voicesearch/actioneditor/SlotView$SlotBehavior;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitleSpan:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;

    .line 195
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b000f

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mInvalidSlotTitleSpan:Landroid/text/style/TextAppearanceSpan;

    .line 197
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitleSpan:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior$SlotTitleSpan;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 199
    return-void
.end method

.method private initWatcher()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/SlotView$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/SlotView$1;-><init>(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    return-void
.end method

.method private safeCharAt(Ljava/lang/CharSequence;I)C
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 389
    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 390
    :cond_0
    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private tryShowKeyboard()Z
    .locals 2

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 510
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected addSlotBehavior(Lcom/google/android/voicesearch/actioneditor/SlotView$SlotBehavior;)V
    .locals 1
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mBehaviors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method public addValueListener(Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;)V
    .locals 1
    .parameter

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    return-void
.end method

.method public beginEditing()V
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelected(Z)V

    .line 564
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelection(I)V

    .line 568
    :cond_0
    invoke-virtual {p0, p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->showKeyboard(Landroid/view/View;)V

    .line 569
    return-void
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mCanDelete:Z

    return v0
.end method

.method public deleteSlot()V
    .locals 4

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 463
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSlotContainer:Lcom/google/android/voicesearch/actioneditor/SlotContainer;

    invoke-interface {v0, p0}, Lcom/google/android/voicesearch/actioneditor/SlotContainer;->deleteSlot(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 464
    return-void
.end method

.method public endEditing()V
    .locals 0

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->hideKeyboard()V

    .line 576
    return-void
.end method

.method protected enterKeyboardMode()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->dismissCurrentPopup()V

    .line 480
    return-void
.end method

.method protected exitKeyboardMode()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->dismissCurrentPopup()V

    .line 484
    return-void
.end method

.method public getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    return-object v0
.end method

.method public getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mRecognizedTextTracker:Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    return-object v0
.end method

.method public getSlotContainer()Lcom/google/android/voicesearch/actioneditor/SlotContainer;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSlotContainer:Lcom/google/android/voicesearch/actioneditor/SlotContainer;

    return-object v0
.end method

.method public getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    return-object v0
.end method

.method public abstract getSlotValue()Lcom/google/android/voicesearch/actions/SlotValue;
.end method

.method protected getSpans(Landroid/view/MotionEvent;Ljava/lang/Class;)Ljava/util/List;
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 310
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v2

    invoke-interface {v1, v8, v2, p2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 312
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 313
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 314
    new-instance v5, Landroid/graphics/Region;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Region;-><init>(IIII)V

    .line 315
    new-instance v6, Landroid/graphics/Region;

    invoke-direct {v6}, Landroid/graphics/Region;-><init>()V

    .line 317
    array-length v7, v2

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v2, v8

    .line 318
    invoke-interface {v1, v9}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 319
    invoke-interface {v1, v9}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 320
    invoke-virtual {v0, v10, v11, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 321
    invoke-virtual {v6, v4, v5}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getCompoundPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getCompoundPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    .line 326
    invoke-virtual {v6, v10, v11}, Landroid/graphics/Region;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 327
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 331
    :cond_1
    return-object v3
.end method

.method protected getStringValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hideKeyboard()V
    .locals 3

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 523
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 524
    return-void
.end method

.method public init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "Slot"

    const-string v1, "Slots cannot be inited more than once."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    .line 142
    iput-object p2, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mKeyboardStateTracker:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

    .line 143
    iput-object p3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSlotContainer:Lcom/google/android/voicesearch/actioneditor/SlotContainer;

    .line 145
    iput-object p4, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 146
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->initTitle()V

    .line 148
    invoke-virtual {p4}, Lcom/google/android/voicesearch/actions/SlotSpec;->getMaxLength()I

    move-result v0

    .line 149
    if-lez v0, :cond_1

    .line 150
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    invoke-direct {v3, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 151
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setFilters([Landroid/text/InputFilter;)V

    .line 157
    :cond_1
    invoke-virtual {p0, p5}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)V

    .line 158
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->initWatcher()V

    .line 160
    invoke-virtual {p0, p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0, p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public initRecognizedTraker(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mRecognizedTextTracker:Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    .line 168
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mRecognizedTextTracker:Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->disable()V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public abstract inputSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)Z
.end method

.method protected inputString(Ljava/lang/CharSequence;[I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionStart()I

    move-result v1

    if-gez v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelection(I)V

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionStart()I

    move-result v1

    .line 410
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionEnd()I

    move-result v2

    .line 414
    sub-int v3, v1, v9

    invoke-direct {p0, v0, v3}, Lcom/google/android/voicesearch/actioneditor/SlotView;->safeCharAt(Ljava/lang/CharSequence;I)C

    move-result v3

    .line 415
    invoke-direct {p0, v0, v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->safeCharAt(Ljava/lang/CharSequence;I)C

    move-result v4

    .line 416
    invoke-direct {p0, p1, v8}, Lcom/google/android/voicesearch/actioneditor/SlotView;->safeCharAt(Ljava/lang/CharSequence;I)C

    move-result v5

    .line 417
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-direct {p0, p1, v6}, Lcom/google/android/voicesearch/actioneditor/SlotView;->safeCharAt(Ljava/lang/CharSequence;I)C

    .line 418
    iget-object v6, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_6

    move v6, v9

    .line 421
    :goto_0
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 423
    if-nez v6, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    const-string v3, " "

    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 428
    :cond_1
    invoke-virtual {v7, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 430
    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 432
    const-string v3, " "

    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 436
    :cond_2
    sub-int v3, v2, v1

    .line 437
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v3, v4, v3

    .line 438
    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/actions/SlotSpec;->getMaxLength()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/actions/SlotSpec;->getMaxLength()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 441
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09075e

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 445
    :cond_3
    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 446
    if-eqz p2, :cond_5

    .line 447
    aput v1, p2, v8

    .line 448
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 449
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/SlotSpec;->getMaxLength()I

    move-result v3

    if-lez v3, :cond_4

    .line 450
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mSpec:Lcom/google/android/voicesearch/actions/SlotSpec;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/actions/SlotSpec;->getMaxLength()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 452
    :cond_4
    aput v2, p2, v9

    .line 456
    :cond_5
    invoke-interface {v0, v1, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 457
    return-void

    :cond_6
    move v6, v8

    .line 418
    goto/16 :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHardKeyboardVisible()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mKeyboardStateTracker:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->isHardKeyboardVisible()Z

    move-result v0

    return v0
.end method

.method public isInKeyboardMode()Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mKeyboardStateTracker:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->isInKeyboardMode()Z

    move-result v0

    return v0
.end method

.method public isSoftKeyboardVisible()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mKeyboardStateTracker:Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;->isSoftKeyboardVisible()Z

    move-result v0

    return v0
.end method

.method public isSupportingVoiceInput()Z
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x1

    return v0
.end method

.method public onActivation()V
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mWillShowPopup:Z

    .line 596
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mCheckIsTextEditor:Z

    return v0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 2
    .parameter

    .prologue
    .line 687
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 690
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    sget-object v0, Lcom/google/android/voicesearch/actioneditor/SlotView;->MENU_ITEM_WITH_TEXT:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 692
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0

    .line 695
    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .parameter

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mCheckIsTextEditor:Z

    .line 244
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 245
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mCheckIsTextEditor:Z

    .line 246
    return-object v0
.end method

.method public onKeyboardChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->setSuspend(Z)V

    .line 496
    if-eqz p1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->enterKeyboardMode()V

    .line 501
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->setSuspend(Z)V

    .line 502
    return-void

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->exitKeyboardMode()V

    goto :goto_0
.end method

.method protected onParentScrolled()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mWillShowPopup:Z

    if-eqz v0, :cond_0

    .line 586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mWillShowPopup:Z

    .line 587
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitleSlotBehavior:Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/TitleSlotBehavior;->showTitlePopup()V

    .line 589
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->onPreDraw()Z

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    .line 540
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->requestLayout()V

    .line 541
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelection(II)V

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelection(I)V

    goto :goto_0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 3
    .parameter

    .prologue
    const v2, 0x1020020

    .line 657
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/voicesearch/actioneditor/SlotView;->MENU_ITEM_WITH_TEXT:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 677
    :goto_0
    return v0

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionEnd()I

    move-result v1

    if-ne v0, v1, :cond_3

    const v0, 0x1020021

    if-eq p1, v0, :cond_1

    if-ne p1, v2, :cond_3

    .line 668
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 670
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 672
    if-ne p1, v2, :cond_2

    .line 673
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->resetStringValue()V

    .line 675
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 677
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getOffset(II)I

    move-result v0

    .line 345
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mBehaviors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actioneditor/SlotView$SlotBehavior;

    .line 346
    invoke-interface {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView$SlotBehavior;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-interface {p0, p2, v0}, Lcom/google/android/voicesearch/actioneditor/SlotView$SlotBehavior;->onTouch(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 348
    if-eqz v2, :cond_0

    .line 349
    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isInKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isHardKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setPressed(Z)V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionStart()I

    move-result v0

    .line 367
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSelectionEnd()I

    move-result v1

    .line 368
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 369
    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelection(II)V

    move v0, v2

    .line 372
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onValueChanged()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 528
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 529
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mShowKeyboard:Z

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mShowKeyboard:Z

    .line 531
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->tryShowKeyboard()Z

    .line 533
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 545
    if-eqz p1, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->endEditing()V

    .line 552
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowVisibilityChanged(I)V

    .line 553
    return-void
.end method

.method protected resetStringValue()V
    .locals 3

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 386
    return-void
.end method

.method public setCanDelete(Z)V
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-boolean p1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mCanDelete:Z

    .line 636
    return-void
.end method

.method public abstract setSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)V
.end method

.method protected setStringValue(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->length()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 378
    return-void
.end method

.method public showInvalid()V
    .locals 5

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mInvalidSlotTitleSpan:Landroid/text/style/TextAppearanceSpan;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 581
    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->tryShowKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotView;->mShowKeyboard:Z

    .line 516
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 518
    :cond_0
    return-void
.end method
