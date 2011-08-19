.class public Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;
.super Ljava/lang/Object;
.source "SuggestedTextController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;,
        Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;,
        Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;,
        Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;,
        Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;,
        Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;
    }
.end annotation


# instance fields
.field private final mBufferSpanWatcher:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;

.field private final mBufferTextWatcher:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;

.field private mCurrentTextChange:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

.field private final mSuggested:Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

.field private mSuggestedText:Ljava/lang/String;

.field private final mTextOwner:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;

.field private mTextSelectionBeforeIgnoringChanges:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;

.field private final mTextWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserEntered:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;I)V
    .locals 1
    .parameter "textView"
    .parameter "color"

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$1;

    invoke-direct {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$1;-><init>(Landroid/widget/EditText;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;I)V

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;I)V
    .locals 3
    .parameter "textOwner"
    .parameter "color"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$1;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mBufferTextWatcher:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;

    .line 56
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$1;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mBufferSpanWatcher:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    .line 86
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    invoke-direct {v0, p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggested:Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    .line 87
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextOwner:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextWatchers:Ljava/util/ArrayList;

    .line 89
    invoke-direct {p0, v1, v2, v2, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    .line 90
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;Landroid/text/Editable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->handleTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mCurrentTextChange:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;)Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mCurrentTextChange:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextSelectionBeforeIgnoringChanges:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;)Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggested:Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    return-object v0
.end method

.method private assertNotIgnoringSelectionChanges()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextSelectionBeforeIgnoringChanges:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal operation while cursor movement processing suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method

.method private handleTextChanged(Landroid/text/Editable;)V
    .locals 11
    .parameter "newText"

    .prologue
    const/4 v10, -0x1

    .line 266
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mCurrentTextChange:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    invoke-virtual {v7}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;->isHandled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mCurrentTextChange:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    invoke-virtual {v7}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;->setHandled()V

    .line 268
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mCurrentTextChange:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    iget v5, v7, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;->mPos:I

    .line 269
    .local v5, pos:I
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mCurrentTextChange:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    iget v1, v7, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;->mCountBefore:I

    .line 270
    .local v1, countBefore:I
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mCurrentTextChange:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    iget v0, v7, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;->mCountAfter:I

    .line 271
    .local v0, countAfter:I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 276
    .local v2, cursorPos:I
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    add-int v8, v5, v1

    add-int v9, v5, v0

    invoke-interface {p1, v5, v9}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 280
    .local v6, userLen:I
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggested:Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v10, :cond_5

    const/4 v7, 0x1

    move v3, v7

    .line 281
    .local v3, haveSuggested:Z
    :goto_1
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 283
    if-eqz v3, :cond_7

    .line 284
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 285
    if-le v0, v1, :cond_6

    .line 287
    sub-int v4, v0, v1

    .line 288
    .local v4, len:I
    add-int v7, v5, v4

    add-int v8, v5, v4

    add-int/2addr v8, v4

    invoke-interface {p1, v7, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 308
    .end local v4           #len:I
    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    if-ne v6, v7, :cond_8

    .line 309
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggested:Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    invoke-interface {p1, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 321
    :cond_3
    :goto_3
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mCurrentTextChange:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    .line 322
    if-gtz v1, :cond_4

    if-lez v0, :cond_0

    .line 323
    :cond_4
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->notifyUserEnteredChanged()V

    goto :goto_0

    .line 280
    .end local v3           #haveSuggested:Z
    :cond_5
    const/4 v7, 0x0

    move v3, v7

    goto :goto_1

    .line 291
    .restart local v3       #haveSuggested:Z
    :cond_6
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v6, v7, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 293
    if-nez v1, :cond_2

    .line 295
    invoke-static {p1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_2

    .line 301
    :cond_7
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 304
    if-ne v2, v6, :cond_2

    .line 305
    invoke-static {p1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_2

    .line 311
    :cond_8
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggested:Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-interface {p1, v7, v6, v8, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 315
    :cond_9
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggested:Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v10, :cond_3

    .line 316
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggested:Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    invoke-interface {p1, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 317
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-interface {p1, v7, v8}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_3
.end method

.method private initialize(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .parameter "userText"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "suggested"

    .prologue
    const/4 v6, 0x0

    .line 93
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextOwner:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 95
    .local v2, text:Landroid/text/Editable;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 96
    :cond_0
    move-object v0, p1

    .line 97
    .local v0, allText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 98
    .local v1, suggestedStart:I
    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    move-object v0, p4

    .line 106
    :cond_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v2, v6, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 109
    invoke-static {v2, p2, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 110
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v3, v6, v4, p1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    .line 112
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 113
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggested:Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 118
    :goto_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mBufferSpanWatcher:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v2, v3, v6, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 119
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextOwner:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mBufferTextWatcher:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;

    invoke-interface {v3, v4}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    return-void

    .line 116
    :cond_2
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggested:Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    invoke-interface {v2, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private notifyUserEnteredChanged()V
    .locals 3

    .prologue
    .line 328
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;

    .line 329
    .local v1, watcher:Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;->onTextChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v1           #watcher:Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;
    :cond_0
    return-void
.end method


# virtual methods
.method public addUserTextChangeWatcher(Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method checkInvariant(Landroid/text/Spannable;)V
    .locals 10
    .parameter "s"

    .prologue
    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 198
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggested:Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    invoke-interface {p1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 199
    .local v3, suggestedStart:I
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggested:Lcom/google/android/googlequicksearchbox/ui/SuggestedSpan;

    invoke-interface {p1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 200
    .local v1, suggestedEnd:I
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 201
    .local v0, cursorPos:I
    if-eq v3, v6, :cond_0

    if-ne v1, v6, :cond_1

    .line 202
    :cond_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    move v3, v1

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->getUserText()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, userEntered:Ljava/lang/String;
    sub-int v2, v1, v3

    .line 211
    .local v2, suggestedLen:I
    const-string v5, "Sum of user and suggested text lengths doesn\'t match total length"

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v5, v6, v7}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 213
    const-string v5, "End of user entered text doesn\'t match start of suggested"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v3, v6}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 215
    const-string v5, "user entered text does not match start of buffer"

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v3}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v5, v6}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 218
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 219
    const-string v5, "User entered is not a prefix of suggested"

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v5, v6}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 221
    const-string v5, "Suggested text does not match buffer contents"

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v5, v6}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 224
    :cond_2
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 225
    const-string v5, "Non-zero suggention length with null suggestion"

    invoke-static {v5, v8, v2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 230
    :goto_0
    const-string v5, "Cursor within suggested part"

    if-gt v0, v3, :cond_5

    move v6, v9

    :goto_1
    invoke-static {v5, v6}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 231
    return-void

    .line 227
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Suggestion text longer than suggestion ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v2, v6, :cond_4

    move v6, v9

    :goto_2
    invoke-static {v5, v6}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move v6, v8

    goto :goto_2

    :cond_5
    move v6, v8

    .line 230
    goto :goto_1
.end method

.method public getUserText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    .line 255
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mUserEntered:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public restoreInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 6
    .parameter "state"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    .line 143
    instance-of v2, p1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;

    if-nez v2, :cond_0

    move-object v2, p1

    .line 155
    :goto_0
    return-object v2

    .line 144
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;

    move-object v1, v0

    .line 150
    .local v1, ss:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextOwner:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mBufferSpanWatcher:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;

    invoke-interface {v2, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 151
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextOwner:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mBufferTextWatcher:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferTextWatcher;

    invoke-interface {v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v2, v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mUserText:Ljava/lang/String;

    iget v3, v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mSelStart:I

    iget v4, v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mSelEnd:I

    iget-object v5, v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mSuggestedText:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->notifyUserEnteredChanged()V

    .line 155
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    goto :goto_0
.end method

.method public resumeCursorMovementHandlingAndApplyChanges()V
    .locals 9

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextOwner:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 178
    .local v1, buffer:Landroid/text/Editable;
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextSelectionBeforeIgnoringChanges:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;

    .line 179
    .local v8, oldSelection:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextSelectionBeforeIgnoringChanges:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;

    .line 180
    new-instance v7, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;

    invoke-direct {v7, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;-><init>(Ljava/lang/CharSequence;)V

    .line 181
    .local v7, newSelection:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;
    iget v0, v8, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mStart:I

    iget v2, v7, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mStart:I

    if-eq v0, v2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mBufferSpanWatcher:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;

    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    iget v3, v8, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mStart:I

    iget v4, v8, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mStart:I

    iget v5, v7, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mStart:I

    iget v6, v7, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mStart:I

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 186
    :cond_0
    iget v0, v8, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mEnd:I

    iget v2, v7, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mEnd:I

    if-eq v0, v2, :cond_1

    .line 187
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mBufferSpanWatcher:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;

    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    iget v3, v8, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mEnd:I

    iget v4, v8, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mEnd:I

    iget v5, v7, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mEnd:I

    iget v6, v7, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mEnd:I

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 191
    :cond_1
    return-void
.end method

.method public saveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 3
    .parameter "superState"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    .line 132
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;

    invoke-direct {v1, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 133
    .local v1, ss:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextOwner:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 134
    .local v0, buffer:Landroid/text/Editable;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->getUserText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mUserText:Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mSuggestedText:Ljava/lang/String;

    .line 136
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mSelStart:I

    .line 137
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$SavedState;->mSelEnd:I

    .line 138
    return-object v1
.end method

.method public setSuggestedText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    .line 239
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mSuggestedText:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mCurrentTextChange:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    invoke-direct {v1, v2, v2, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;-><init>(III)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mCurrentTextChange:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextChangeAttributes;

    .line 244
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextOwner:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 245
    .local v0, buffer:Landroid/text/Editable;
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->handleTextChanged(Landroid/text/Editable;)V

    .line 248
    .end local v0           #buffer:Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method public suspendCursorMovementHandling()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->assertNotIgnoringSelectionChanges()V

    .line 168
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextOwner:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$TextOwner;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 169
    .local v0, buffer:Landroid/text/Editable;
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;

    invoke-direct {v1, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;->mTextSelectionBeforeIgnoringChanges:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;

    .line 170
    return-void
.end method
