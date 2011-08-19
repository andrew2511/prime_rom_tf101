.class public Lcom/google/android/voicesearch/actioneditor/ContactSlot;
.super Lcom/google/android/voicesearch/actioneditor/SlotView;
.source "ContactSlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/ContactSlot$ContactAppearanceSpan;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactSlot"

.field private static final TOKENIZE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private firstAppearance:Z

.field private mAddressType:I

.field private mAngleBracketHider:Landroid/text/method/TransformationMethod;

.field private mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

.field private mContactSlotBehavior:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

.field private mNeedsRelayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "([^,]*)([,]|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->TOKENIZE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/SlotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->firstAppearance:Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mNeedsRelayout:Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->scrollToVisible()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)Lcom/google/android/voicesearch/actioneditor/ContactSpan;
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getCurrentContact()Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    move-result-object v0

    return-object v0
.end method

.method public static createContactSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actioneditor/ContactSlot;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    .line 86
    const v0, 0x7f030003

    invoke-virtual {p0, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    .line 88
    invoke-virtual {p5}, Lcom/google/android/voicesearch/actions/SlotSpec;->getType()I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setAddressType(I)V

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)V

    .line 92
    return-object v0

    :cond_0
    move v1, v3

    .line 88
    goto :goto_0
.end method

.method private getCurrentAutoCompletePart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getCurrentContact()Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    move-result-object v0

    .line 381
    if-nez v0, :cond_0

    .line 382
    const-string v0, ""

    .line 384
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->getContact()Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentContact()Lcom/google/android/voicesearch/actioneditor/ContactSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionEnd()I

    move-result v0

    .line 361
    if-gez v0, :cond_0

    move-object v0, v3

    .line 372
    :goto_0
    return-object v0

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 366
    const-class v2, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-interface {v1, v0, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    .line 367
    array-length v0, p0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 368
    goto :goto_0

    .line 371
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0
.end method

.method private inputContact(Lcom/google/android/voicesearch/actions/Contact;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 621
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 622
    if-nez v0, :cond_0

    move v0, v4

    .line 651
    :goto_0
    return v0

    .line 626
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->resolveAlternatesFromContact(Lcom/google/android/voicesearch/actions/Contact;)Lcom/google/android/voicesearch/actions/ContactAlternates;

    move-result-object v0

    .line 627
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->resolveContact(Lcom/google/android/voicesearch/actions/Contact;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v1

    .line 629
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/Contact;->toAddressString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 633
    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 640
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 641
    const-string v1, ", "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 642
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 643
    const-string v1, ", "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 645
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->inputString(Ljava/lang/CharSequence;[I)V

    .line 647
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshHighlights()V

    .line 648
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 651
    goto :goto_0
.end method

.method private refreshAutoCompletePopup()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getCurrentAutoCompletePart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->setCompletionConstraint(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->scrollToVisible()V

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAutoCompletePopupPosition()V

    .line 354
    :cond_1
    return-void
.end method

.method private refreshAutoCompletePopupPosition()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionEnd()I

    move-result v0

    .line 341
    invoke-static {p0, v0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->moveCompleting(Landroid/graphics/Point;)V

    .line 344
    :cond_0
    return-void
.end method

.method private refreshContactSpans()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 248
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->removeAllContactSpans()V

    .line 249
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 252
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    sget-object v3, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->TOKENIZE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 255
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    .line 258
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    .line 260
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 261
    new-instance v6, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-direct {v6, v3}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;-><init>(Ljava/lang/String;)V

    .line 262
    add-int v3, v1, v4

    add-int v4, v1, v5

    const/16 v5, 0x21

    invoke-interface {v0, v6, v3, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 266
    :cond_1
    return-void
.end method

.method private refreshHighlights()V
    .locals 13

    .prologue
    const/16 v12, 0x21

    const/4 v3, 0x0

    .line 269
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->removeAllHighlights()V

    .line 270
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshContactSpans()V

    .line 271
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 273
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v0

    const-class v2, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-interface {v1, v3, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    .line 274
    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 275
    invoke-interface {v1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 276
    invoke-interface {v1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    .line 277
    invoke-virtual {v4}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->getNameStart()I

    move-result v6

    .line 278
    invoke-virtual {v4}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->getNameEnd()I

    move-result v7

    .line 279
    invoke-virtual {v4}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->getAddressStart()I

    move-result v8

    .line 280
    invoke-virtual {v4}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->getAddressEnd()I

    move-result v4

    .line 283
    sub-int v9, v7, v6

    if-lez v9, :cond_0

    .line 284
    new-instance v9, Lcom/google/android/voicesearch/actioneditor/ContactSlot$ContactAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0b000d

    invoke-direct {v9, v10, v11}, Lcom/google/android/voicesearch/actioneditor/ContactSlot$ContactAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 286
    add-int/2addr v6, v5

    add-int/2addr v7, v5

    invoke-interface {v1, v9, v6, v7, v12}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 290
    :cond_0
    sub-int v6, v4, v8

    if-lez v6, :cond_1

    .line 291
    new-instance v6, Lcom/google/android/voicesearch/actioneditor/ContactSlot$ContactAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f0b000c

    invoke-direct {v6, v7, v9}, Lcom/google/android/voicesearch/actioneditor/ContactSlot$ContactAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 293
    add-int v7, v5, v8

    add-int/2addr v4, v5

    invoke-interface {v1, v6, v7, v4, v12}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 274
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_2
    return-void
.end method

.method private refreshLineEllipsis()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 300
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->removeAllEllipsisSpans()V

    .line 302
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->isInKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionStart()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 313
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v0

    const-class v2, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-interface {v1, v3, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    .line 314
    array-length v2, v0

    if-ne v2, v6, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->removeAllHighlights()V

    .line 320
    aget-object v0, v0, v3

    .line 321
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->getContact()Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v2

    .line 322
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 323
    if-eqz v3, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v4, v3

    sub-int/2addr v3, v6

    .line 329
    new-instance v4, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/Contact;I)V

    .line 330
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    const/16 v3, 0x21

    invoke-interface {v1, v4, v2, v0, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private removeAllContactSpans()V
    .locals 1

    .prologue
    .line 240
    const-class v0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->removeAllSpansOfType(Ljava/lang/Class;)V

    .line 241
    return-void
.end method

.method private removeAllEllipsisSpans()V
    .locals 1

    .prologue
    .line 244
    const-class v0, Lcom/google/android/voicesearch/actioneditor/OneLineContactSpan;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->removeAllSpansOfType(Ljava/lang/Class;)V

    .line 245
    return-void
.end method

.method private removeAllHighlights()V
    .locals 1

    .prologue
    .line 236
    const-class v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$ContactAppearanceSpan;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->removeAllSpansOfType(Ljava/lang/Class;)V

    .line 237
    return-void
.end method

.method private removeAllSpansOfType(Ljava/lang/Class;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v1

    invoke-interface {v0, v3, v1, p1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 230
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 231
    invoke-interface {v0, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method private resolveAlternatesFromContact(Lcom/google/android/voicesearch/actions/Contact;)Lcom/google/android/voicesearch/actions/ContactAlternates;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 599
    instance-of v0, p1, Lcom/google/android/voicesearch/actions/CorrectionContact;

    if-eqz v0, :cond_3

    .line 600
    check-cast p1, Lcom/google/android/voicesearch/actions/CorrectionContact;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/CorrectionContact;->getAlternates()Lcom/google/android/voicesearch/actions/ContactAlternates;

    move-result-object v0

    .line 603
    :goto_0
    if-nez v0, :cond_0

    move-object v0, v1

    .line 617
    :goto_1
    return-object v0

    .line 607
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 608
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/ContactAlternates;->getContacts()Ljava/util/List;

    move-result-object v0

    .line 610
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/Contact;

    .line 611
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->resolveContact(Lcom/google/android/voicesearch/actions/Contact;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 617
    :cond_2
    new-instance v0, Lcom/google/android/voicesearch/actions/ContactAlternates;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/actions/ContactAlternates;-><init>(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private resolveContact(Lcom/google/android/voicesearch/actions/Contact;)Lcom/google/android/voicesearch/actions/Contact;
    .locals 3
    .parameter

    .prologue
    .line 565
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 566
    if-nez v0, :cond_0

    move-object v0, p1

    .line 590
    :goto_0
    return-object v0

    .line 570
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->hasAddress()Z

    move-result v1

    if-nez v1, :cond_3

    .line 573
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAddressType:I

    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->getContactAlternates(Landroid/content/Context;Ljava/lang/String;I)[Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v0

    .line 576
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getAddressType()I

    move-result v1

    .line 577
    if-nez v1, :cond_1

    .line 578
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->sortForType([Lcom/google/android/voicesearch/actions/Contact;I)V

    .line 581
    :cond_1
    array-length v2, v0

    if-lez v2, :cond_2

    .line 582
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->contactMissingAddress(I)V

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method private scrollToVisible()V
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSlotContainer()Lcom/google/android/voicesearch/actioneditor/SlotContainer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/voicesearch/actioneditor/SlotContainer;->scrollToSlot(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 336
    return-void
.end method

.method private setAngleBracketsEnabled(Z)V
    .locals 3
    .parameter

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionStart()I

    move-result v0

    .line 522
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionEnd()I

    move-result v1

    .line 524
    if-eqz p1, :cond_1

    .line 525
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAngleBracketHider:Landroid/text/method/TransformationMethod;

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 530
    :goto_0
    if-ltz v0, :cond_0

    .line 531
    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setSelection(II)V

    .line 533
    :cond_0
    return-void

    .line 527
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private startAutoCompleting()V
    .locals 4

    .prologue
    .line 388
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v2

    iget v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAddressType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actioneditor/PopupManager;I)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    .line 391
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;-><init>(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->setShowListener(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;)V

    .line 401
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;-><init>(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->setListener(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;)V

    .line 445
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionEnd()I

    move-result v0

    .line 446
    invoke-static {p0, v0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v0

    .line 448
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->setupPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;)V

    .line 449
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->beginCompleting(Landroid/graphics/Point;)V

    .line 450
    return-void
.end method

.method private stopAutoCompleting()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->endCompleting()V

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    .line 457
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteSlot()V
    .locals 1

    .prologue
    .line 461
    invoke-super {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->deleteSlot()V

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->firstAppearance:Z

    .line 463
    return-void
.end method

.method protected enterKeyboardMode()V
    .locals 1

    .prologue
    .line 537
    invoke-super {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->enterKeyboardMode()V

    .line 539
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setAngleBracketsEnabled(Z)V

    .line 540
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshLineEllipsis()V

    .line 541
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->formatContactsList()V

    .line 543
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->startAutoCompleting()V

    .line 544
    return-void
.end method

.method protected exitKeyboardMode()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 548
    invoke-super {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->exitKeyboardMode()V

    .line 550
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setAngleBracketsEnabled(Z)V

    .line 551
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshLineEllipsis()V

    .line 552
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->formatContactsList()V

    .line 553
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 557
    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mNeedsRelayout:Z

    .line 558
    return-void
.end method

.method public formatContactsList()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 176
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshContactSpans()V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 179
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v0

    const-class v2, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-interface {v1, v9, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    .line 181
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v3, v9

    .line 183
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 184
    aget-object v4, v0, v3

    .line 185
    array-length v5, v0

    sub-int/2addr v5, v10

    if-ge v3, v5, :cond_3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v0, v5

    .line 186
    :goto_1
    invoke-interface {v1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 187
    invoke-interface {v1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 189
    invoke-virtual {p0, v6, v4}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getAlternates(II)Lcom/google/android/voicesearch/actions/ContactAlternates;

    move-result-object v7

    .line 191
    invoke-interface {v1, v6, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 193
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 194
    if-eqz v7, :cond_0

    .line 195
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v8, 0x21

    invoke-virtual {v2, v7, v4, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 199
    :cond_0
    if-eqz v5, :cond_5

    .line 200
    invoke-interface {v1, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v1, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    move v4, v10

    .line 207
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->isInKeyboardMode()Z

    move-result v5

    if-nez v5, :cond_1

    array-length v5, v0

    const/4 v6, 0x2

    if-gt v5, v6, :cond_1

    if-nez v4, :cond_2

    .line 213
    :cond_1
    const-string v4, ", "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 183
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_3
    aget-object v5, v0, v3

    goto :goto_1

    :cond_4
    move v4, v9

    .line 203
    goto :goto_2

    :cond_5
    move v4, v10

    .line 205
    goto :goto_2

    .line 218
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setSelection(I)V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->setSuspend(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v3

    const-string v4, ""

    invoke-interface {v0, v1, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 221
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v1

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 222
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getRecognizedTextTracker()Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/voicesearch/actioneditor/RecognizedTextTracker;->setSuspend(Z)V

    .line 223
    return-void
.end method

.method public getAddressType()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAddressType:I

    return v0
.end method

.method public getAlternates(II)Lcom/google/android/voicesearch/actions/ContactAlternates;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 163
    const-class v1, Lcom/google/android/voicesearch/actions/ContactAlternates;

    invoke-interface {v0, p1, p2, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/voicesearch/actions/ContactAlternates;

    .line 165
    array-length v0, p0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0
.end method

.method public getSlotValue()Lcom/google/android/voicesearch/actions/SlotValue;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 659
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 660
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 661
    array-length v2, v0

    move v3, v8

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 662
    new-instance v5, Lcom/google/android/voicesearch/actions/Contact;

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 665
    :cond_0
    new-instance v0, Lcom/google/android/voicesearch/actions/ContactsValue;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/actions/ContactsValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-super/range {p0 .. p5}, Lcom/google/android/voicesearch/actioneditor/SlotView;->init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/KeyboardStateTracker;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)V

    .line 100
    const/high16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setRawInputType(I)V

    .line 102
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;-><init>(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mContactSlotBehavior:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    .line 103
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mContactSlotBehavior:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->addSlotBehavior(Lcom/google/android/voicesearch/actioneditor/SlotView$SlotBehavior;)V

    .line 105
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot$1;-><init>(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAngleBracketHider:Landroid/text/method/TransformationMethod;

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->setAngleBracketsEnabled(Z)V

    .line 121
    return-void
.end method

.method public inputSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 670
    instance-of v0, p1, Lcom/google/android/voicesearch/actions/TextValue;

    if-eqz v0, :cond_0

    .line 671
    check-cast p1, Lcom/google/android/voicesearch/actions/TextValue;

    .line 672
    new-instance v0, Lcom/google/android/voicesearch/actions/Contact;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->inputContact(Lcom/google/android/voicesearch/actions/Contact;)Z

    move-result v0

    .line 687
    :goto_0
    return v0

    .line 673
    :cond_0
    instance-of v0, p1, Lcom/google/android/voicesearch/actions/ContactsValue;

    if-eqz v0, :cond_2

    .line 674
    check-cast p1, Lcom/google/android/voicesearch/actions/ContactsValue;

    move v0, v4

    move v1, v4

    .line 676
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/ContactsValue;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 677
    invoke-virtual {p1, v0}, Lcom/google/android/voicesearch/actions/ContactsValue;->get(I)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v2

    .line 678
    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->inputContact(Lcom/google/android/voicesearch/actions/Contact;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->formatContactsList()V

    move v0, v1

    .line 682
    goto :goto_0

    .line 684
    :cond_2
    const-string v0, "ContactSlot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inputted SlotValue of unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 687
    goto :goto_0
.end method

.method public onActivation()V
    .locals 1

    .prologue
    .line 467
    invoke-super {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onActivation()V

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->firstAppearance:Z

    .line 469
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mContactSlotBehavior:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionStart()I

    move-result v0

    .line 126
    const/4 v1, 0x0

    .line 127
    if-ltz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    const-class v3, Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    invoke-interface {v2, v0, v0, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    .line 129
    array-length v2, v0

    if-lez v2, :cond_1

    .line 130
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mContactSlotBehavior:Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/actioneditor/ContactSlotBehavior;->startCorrection(Lcom/google/android/voicesearch/actioneditor/ContactSpan;)V

    .line 135
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->stopAutoCompleting()V

    .line 499
    return-void
.end method

.method public onKeyboardChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 509
    invoke-super {p0, p1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onKeyboardChanged(Z)V

    .line 511
    if-nez p1, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->stopAutoCompleting()V

    .line 516
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAutoCompletePopup()V

    goto :goto_0
.end method

.method protected onParentScrolled()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAutoCompletePopupPosition()V

    .line 159
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 473
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mNeedsRelayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->firstAppearance:Z

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 477
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->requestLayout()V

    .line 479
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mNeedsRelayout:Z

    .line 482
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->firstAppearance:Z

    if-eqz v0, :cond_3

    .line 485
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->isInKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->startAutoCompleting()V

    .line 489
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->firstAppearance:Z

    .line 492
    :cond_3
    invoke-super {p0}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onPreDraw()Z

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
    .line 503
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onScrollChanged(IIII)V

    .line 504
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAutoCompletePopup()V

    .line 505
    return-void
.end method

.method protected onValueChanged()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    .line 153
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAutoCompletePopup()V

    .line 154
    return-void
.end method

.method public refreshAppearance()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshHighlights()V

    .line 147
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshLineEllipsis()V

    .line 148
    return-void
.end method

.method public setAddressType(I)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAddressType:I

    .line 139
    return-void
.end method

.method public setSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)V
    .locals 4
    .parameter

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->length()I

    move-result v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 693
    if-eqz p1, :cond_0

    .line 694
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->inputSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)Z

    .line 696
    :cond_0
    return-void
.end method
