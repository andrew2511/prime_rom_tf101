.class public Lcom/nuance/xt9/input/AlphaHandWritingInputView;
.super Lcom/nuance/xt9/input/HandWritingInputView;
.source "AlphaHandWritingInputView.java"


# static fields
.field static final MSG_DELAY_RECOGNIZER:I = 0x1

.field private static final WRITING_MODE_SYMBOLS_AND_DIGITS:I = 0x1

.field private static final WRITING_MODE_TEXT:I


# instance fields
.field private final MSG_HANDLE_CHAR:I

.field private final MSG_HANDLE_INSTANT_GESTURE_CHAR:I

.field private final MSG_HANDLE_SUGGESTION_CANDIDATES:I

.field private final MSG_HANDLE_TEXT:I

.field private mCurrentCategory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/WriteAlphaCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentWritingMode:I

.field private mCurrentWritingPad:Lcom/nuance/xt9/input/AlphaHandWritingView;

.field mDelayRecognizeHandler:Landroid/os/Handler;

.field private mEmailKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field mHandler:Landroid/os/Handler;

.field private mImKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

.field private mNormalKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mRecognitionCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

.field private mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

.field private mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defaultStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/HandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 627
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->MSG_HANDLE_SUGGESTION_CANDIDATES:I

    .line 628
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->MSG_HANDLE_CHAR:I

    .line 629
    const/4 v0, 0x4

    iput v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->MSG_HANDLE_TEXT:I

    .line 630
    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->MSG_HANDLE_INSTANT_GESTURE_CHAR:I

    .line 632
    new-instance v0, Lcom/nuance/xt9/input/AlphaHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView$1;-><init>(Lcom/nuance/xt9/input/AlphaHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    .line 664
    new-instance v0, Lcom/nuance/xt9/input/AlphaHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView$2;-><init>(Lcom/nuance/xt9/input/AlphaHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method private SetKeyboardForTextEntry(Lcom/nuance/xt9/input/InputFieldInfo;)V
    .locals 3
    .parameter "inputFieldInfo"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isDateTimeField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isNumberField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setNormalKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V

    .line 129
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlphaSettings;->setDigitsAndSymbolsCategoryOnly()V

    .line 130
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlphaSettings;->getCurrentCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    .line 131
    iput v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    .line 175
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setNormalKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V

    .line 137
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlphaSettings;->addPhoneNumberCategoryOnly()V

    .line 138
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlphaSettings;->getCurrentCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    .line 139
    iput v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setEmailKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V

    .line 145
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlphaSettings;->addEmailCategoryOnly()V

    .line 146
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlphaSettings;->getCurrentCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    .line 147
    iput v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setUrlKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V

    .line 153
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlphaSettings;->addUrlCategoryOnly()V

    .line 154
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlphaSettings;->getCurrentCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    .line 155
    iput v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    goto :goto_0

    .line 159
    :cond_4
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->isShortMessageField()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setImKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V

    .line 161
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaSettings;->addTextCategory(Lcom/nuance/xt9/input/InputMethods$Language;)V

    .line 162
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlphaSettings;->getCurrentCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    .line 163
    iput v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    goto :goto_0

    .line 168
    :cond_5
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setNormalKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V

    .line 169
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaSettings;->addTextCategory(Lcom/nuance/xt9/input/InputMethods$Language;)V

    .line 170
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlphaSettings;->getCurrentCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    .line 171
    iput v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    goto/16 :goto_0
.end method

.method private acceptCurrentDefaultWord()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->acceptCurrentInline()V

    .line 449
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 450
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->changeCandidateViewContainerLayout()V

    .line 452
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v0, v2}, Lcom/nuance/xt9/input/WriteAlpha;->noteSelectedCandidate(I)V

    .line 455
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->endArcsAddingSequence()V

    .line 456
    const/4 v0, 0x1

    .line 460
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/AlphaHandWritingInputView;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/AlphaHandWritingInputView;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/AlphaHandWritingInputView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/xt9/input/AlphaHandWritingInputView;CLjava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->handleInstantGestureChar(CLjava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/xt9/input/AlphaHandWritingInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method private cancelCurrentDefaultWord()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->clearCurrentInline()V

    .line 430
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 431
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->changeCandidateViewContainerLayout()V

    .line 433
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->noteSelectedCandidate(I)V

    .line 436
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->endArcsAddingSequence()V

    .line 438
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private changeCandidateViewContainerLayout()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/CandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 555
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->requestLayout()V

    .line 556
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWordListViewContainer:Lcom/nuance/xt9/input/WordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WordListViewContainer;->invalidate()V

    .line 557
    return-void
.end method

.method private deleteOneCharacter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_2

    .line 322
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->endArcsAddingSequence()V

    .line 324
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->removeOneCharacterFromCandidateList()Ljava/lang/CharSequence;

    move-result-object v0

    .line 325
    .local v0, seq:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 338
    .end local v0           #seq:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 329
    .restart local v0       #seq:Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 330
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 331
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    goto :goto_0

    .line 335
    .end local v0           #seq:Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/IME;->sendBackspace(I)V

    goto :goto_0
.end method

.method private deleteWordToLeftOfCursor()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->deleteWordToLeftOfCursor()V

    .line 415
    return-void
.end method

.method private deleteWordToRightOfCursor()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->deleteWordToRightOfCursor()V

    .line 411
    return-void
.end method

.method private downShiftCandidateList()V
    .locals 4

    .prologue
    .line 400
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 403
    .local v2, word:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    .end local v2           #word:Ljava/lang/CharSequence;
    :cond_0
    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 407
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    return-void
.end method

.method private endArcsAddingSequence()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/AlphaHandWritingView;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/AlphaHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaHandWritingView;->clearAll()V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlpha;->endArcsAddingSequence()V

    .line 473
    return-void
.end method

.method private handleChar(C)V
    .locals 1
    .parameter "ch"

    .prologue
    .line 341
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/16 v0, 0xa

    move p1, v0

    .line 343
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 384
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 385
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->sendKeyChar(C)V

    .line 387
    :cond_1
    :goto_0
    return-void

    .line 346
    :sswitch_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->handleSpace()V

    goto :goto_0

    .line 350
    :sswitch_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->deleteOneCharacter()V

    goto :goto_0

    .line 354
    :sswitch_2
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_2

    .line 355
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()Z

    goto :goto_0

    .line 358
    :cond_2
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->deleteWordToLeftOfCursor()V

    goto :goto_0

    .line 363
    :sswitch_3
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_3

    .line 364
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()Z

    goto :goto_0

    .line 367
    :cond_3
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->deleteWordToRightOfCursor()V

    goto :goto_0

    .line 372
    :sswitch_4
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->downShiftCandidateList()V

    goto :goto_0

    .line 378
    :sswitch_5
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->upShiftCandidateList()V

    goto :goto_0

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x20 -> :sswitch_0
        0x21d0 -> :sswitch_2
        0x21d1 -> :sswitch_5
        0x21d2 -> :sswitch_3
        0x21d3 -> :sswitch_4
    .end sparse-switch
.end method

.method private handleInstantGestureChar(CLjava/util/List;)V
    .locals 1
    .parameter "gestureChar"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p2, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 571
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 572
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 575
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->handleChar(C)V

    .line 577
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->endArcsAddingSequence()V

    .line 578
    return-void
.end method

.method private handleSpace()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 299
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 301
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/xt9/input/Composition;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 303
    .local v1, word:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, start:I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v0, v2, v5

    :goto_0
    if-ltz v0, :cond_0

    .line 306
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/xt9/input/WriteAlpha;->addWordToUserDictionary(Ljava/lang/CharSequence;)V

    .line 315
    .end local v0           #start:I
    .end local v1           #word:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->sendSpace()V

    .line 316
    return-void

    .line 305
    .restart local v0       #start:I
    .restart local v1       #word:Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 561
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 562
    return-void
.end method

.method private isEmptyCandidateList()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPendingRecognizeMessage()Z
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private performDelayRecognition()V
    .locals 3

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, startWord:Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #startWord:Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 586
    .restart local v0       #startWord:Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/WriteAlpha;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/AlphaHandWritingView;

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/AlphaHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaHandWritingView;->clearAll()V

    .line 591
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->invalidate()V

    .line 592
    return-void
.end method

.method private processPendingRecognizing()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->performDelayRecognition()V

    .line 424
    return-void
.end method

.method private removeAllPendingMsg()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 596
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 599
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 600
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    return-void
.end method

.method private removeOneCharacterFromCandidateList()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, seq:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #seq:Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 292
    .restart local v0       #seq:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 295
    :cond_0
    return-object v0
.end method

.method private setEmailKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V
    .locals 5
    .parameter "inputFieldInfo"

    .prologue
    const v4, 0x7f09003c

    .line 186
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mEmailKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    const/high16 v2, 0x7f05

    invoke-direct {v0, v1, v2, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mEmailKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mEmailKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 190
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mEmailKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 191
    return-void
.end method

.method private setImKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V
    .locals 5
    .parameter "inputFieldInfo"

    .prologue
    const v4, 0x7f09003d

    .line 202
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mImKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    const/high16 v2, 0x7f05

    invoke-direct {v0, v1, v2, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mImKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mImKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 206
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mImKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 207
    return-void
.end method

.method private setNormalKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V
    .locals 5
    .parameter "inputFieldInfo"

    .prologue
    const v4, 0x7f09003a

    .line 178
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mNormalKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    const/high16 v2, 0x7f05

    invoke-direct {v0, v1, v2, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mNormalKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mNormalKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 182
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mNormalKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 183
    return-void
.end method

.method private setUrlKeyboard(Lcom/nuance/xt9/input/InputFieldInfo;)V
    .locals 5
    .parameter "inputFieldInfo"

    .prologue
    const v4, 0x7f09003b

    .line 194
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/nuance/xt9/input/XT9Keyboard;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    const/high16 v2, 0x7f05

    invoke-direct {v0, v1, v2, v4}, Lcom/nuance/xt9/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputFieldInfo;->getImeOptions()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nuance/xt9/input/XT9Keyboard;->setImeOptions(Landroid/content/res/Resources;IIZ)V

    .line 198
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setKeyboard(Lcom/nuance/xt9/input/KeyboardEx;)V

    .line 199
    return-void
.end method

.method private startArcsAddingSequence()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlpha;->startArcsAddingSequence()V

    .line 465
    return-void
.end method

.method private toggleNextWritingMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->getKeyboard()Lcom/nuance/xt9/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/xt9/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 718
    .local v1, keys:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/KeyboardEx$Key;>;"
    if-eqz v1, :cond_1

    .line 719
    const/4 v2, -0x2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/xt9/input/KeyboardEx$Key;

    move-result-object v0

    .line 720
    .local v0, altKey:Lcom/nuance/xt9/input/KeyboardEx$Key;
    if-eqz v0, :cond_1

    .line 721
    if-nez p1, :cond_2

    .line 722
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 727
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->invalidateKey(Lcom/nuance/xt9/input/KeyboardEx$Key;)V

    .line 736
    .end local v0           #altKey:Lcom/nuance/xt9/input/KeyboardEx$Key;
    :cond_1
    return-void

    .line 724
    .restart local v0       #altKey:Lcom/nuance/xt9/input/KeyboardEx$Key;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 725
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/xt9/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private upShiftCandidateList()V
    .locals 4

    .prologue
    .line 390
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 393
    .local v2, word:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    .end local v2           #word:Ljava/lang/CharSequence;
    :cond_0
    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 397
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    return-void
.end method

.method private updateCandidatesList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 534
    iget-boolean v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mStarted:Z

    if-nez v0, :cond_0

    .line 535
    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 551
    :goto_0
    return-void

    .line 539
    :cond_0
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 541
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 542
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 543
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 544
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/xt9/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 545
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->changeCandidateViewContainerLayout()V

    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 549
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->changeCandidateViewContainerLayout()V

    goto :goto_0
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 684
    const/4 v0, 0x0

    .line 686
    .local v0, changed:Z
    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-nez v1, :cond_3

    .line 687
    iput v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 688
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/WriteAlphaSettings;->setDigitsAndSymbolsCategoryOnly()V

    .line 689
    const/4 v0, 0x1

    .line 703
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 704
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/WriteAlpha;->changeSettings(Lcom/nuance/xt9/input/WriteAlphaSettings;)Z

    .line 710
    :cond_2
    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->toggleNextWritingMode(I)V

    .line 713
    return-void

    .line 691
    :cond_3
    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-ne v1, v2, :cond_0

    .line 692
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 693
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputFieldInfo;->isNumberField()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 695
    :cond_4
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/WriteAlphaSettings;->addTextCategory(Lcom/nuance/xt9/input/InputMethods$Language;)V

    .line 700
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 698
    :cond_5
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentCategory:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/nuance/xt9/input/WriteAlphaSettings;->setCategories(Ljava/util/List;)V

    goto :goto_1
.end method

.method public create(Lcom/nuance/xt9/input/IME;)V
    .locals 2
    .parameter "ime"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/nuance/xt9/input/HandWritingInputView;->create(Lcom/nuance/xt9/input/IME;)V

    .line 59
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-direct {v0}, Lcom/nuance/xt9/input/WriteAlphaSettings;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    .line 61
    new-instance v0, Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {p1}, Lcom/nuance/xt9/input/IME;->getDatabaseConfigFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    .line 62
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlpha;->create()Z

    .line 63
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/xt9/input/IME;)V

    .line 68
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-super {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->destroy()V

    .line 76
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlpha;->destroy()V

    .line 77
    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    .line 78
    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mNormalKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 79
    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mUrlKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 80
    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mEmailKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 81
    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mImKeyboard:Lcom/nuance/xt9/input/XT9Keyboard;

    .line 82
    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/AlphaHandWritingView;

    .line 85
    return-void
.end method

.method findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/xt9/input/KeyboardEx$Key;
    .locals 4
    .parameter
    .parameter "keyCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/KeyboardEx$Key;",
            ">;I)",
            "Lcom/nuance/xt9/input/KeyboardEx$Key;"
        }
    .end annotation

    .prologue
    .line 739
    .local p1, keys:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/KeyboardEx$Key;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 740
    .local v1, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget-object v2, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p2, :cond_0

    move-object v2, v1

    .line 745
    .end local v1           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->finishInput()V

    .line 215
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 217
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->removeAllPendingMsg()V

    .line 218
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->endArcsAddingSequence()V

    .line 219
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/WriteAlpha;->removeRecognizeListener(Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 220
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/WriteAlpha;->finish()V

    .line 224
    return-void
.end method

.method protected handleBackspace(I)Z
    .locals 2
    .parameter "repeatedCount"

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->queueChar(C)V

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public handleCharKey(I[I)V
    .locals 2
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->queueChar(C)V

    .line 263
    return-void
.end method

.method public handleClose()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Lcom/nuance/xt9/input/HandWritingInputView;->handleClose()V

    .line 232
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->removeAllPendingMsg()V

    .line 235
    return-void
.end method

.method protected handleSpace(ZI)Z
    .locals 2
    .parameter "quickPressed"
    .parameter "repeatedCount"

    .prologue
    const/16 v1, 0x20

    .line 267
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 270
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->queueChar(C)V

    .line 281
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->queueChar(C)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->handleSpace()V

    goto :goto_0
.end method

.method public onHandleWriteEvent(Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const-wide/16 v3, 0x5

    .line 607
    iget v0, p1, Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 625
    :goto_0
    return-void

    .line 610
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 614
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 618
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 622
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteAlpha;->queueText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method public penDown(Landroid/view/View;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->dismissPopupKeyboard()V

    .line 493
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 499
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/AlphaHandWritingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/AlphaHandWritingView;

    if-eq v0, p1, :cond_1

    .line 500
    :cond_0
    check-cast p1, Lcom/nuance/xt9/input/AlphaHandWritingView;

    .end local p1
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/AlphaHandWritingView;

    .line 502
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    sget v1, Lcom/nuance/xt9/input/WriteAlphaSettings;->NO_LINE_SUPPORTS:I

    iput v1, v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mSupportLineSet:I

    .line 503
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/AlphaHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaHandWritingView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mWidth:I

    .line 504
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/xt9/input/AlphaHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaHandWritingView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mHeight:I

    .line 509
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/WriteAlpha;->changeSettings(Lcom/nuance/xt9/input/WriteAlphaSettings;)Z

    .line 513
    :cond_1
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->startArcsAddingSequence()V

    .line 514
    return-void
.end method

.method public penUp([Lcom/nuance/xt9/input/Stroke$Arc;Landroid/view/View;)V
    .locals 6
    .parameter "arcs"
    .parameter "Src"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, startWord:Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #startWord:Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 525
    .restart local v0       #startWord:Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    new-instance v2, Ljava/util/ArrayList;

    aget-object v3, p1, v3

    iget-object v3, v3, Lcom/nuance/xt9/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    array-length v3, p1

    if-le v3, v5, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    aget-object v4, p1, v5

    iget-object v4, v4, Lcom/nuance/xt9/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/nuance/xt9/input/WriteAlpha;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 526
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    iget v2, v2, Lcom/nuance/xt9/input/WriteAlphaSettings;->mRecognizeDelay:I

    int-to-long v2, v2

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 527
    return-void

    .line 525
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 3
    .parameter "index"
    .parameter "word"
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 479
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->clearCurrentInline()V

    .line 480
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0, p2}, Lcom/nuance/xt9/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWordListView:Lcom/nuance/xt9/input/CandidatesListView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v2}, Lcom/nuance/xt9/input/CandidatesListView;->setSuggestions(Ljava/util/List;ZI)V

    .line 482
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->changeCandidateViewContainerLayout()V

    .line 484
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v0, p1}, Lcom/nuance/xt9/input/WriteAlpha;->noteSelectedCandidate(I)V

    .line 487
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->endArcsAddingSequence()V

    .line 488
    return-void
.end method

.method public startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V
    .locals 3
    .parameter "inputFieldInfo"
    .parameter "restarting"

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lcom/nuance/xt9/input/HandWritingInputView;->startInput(Lcom/nuance/xt9/input/InputFieldInfo;Z)V

    .line 113
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    .line 114
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    invoke-virtual {v0, p0}, Lcom/nuance/xt9/input/WriteAlpha;->addRecognizeListener(Lcom/nuance/xt9/input/WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 115
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 116
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->endArcsAddingSequence()V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 118
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->SetKeyboardForTextEntry(Lcom/nuance/xt9/input/InputFieldInfo;)V

    .line 119
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 120
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/xt9/input/WriteAlpha;

    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mWriteAlphaSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v2, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/WriteAlpha;->start(Lcom/nuance/xt9/input/WriteAlphaSettings;I)Z

    .line 123
    return-void
.end method

.method public updateSelection(IIIIII)V
    .locals 1
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-ne p3, p6, :cond_0

    if-eq p4, p6, :cond_1

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/xt9/input/Composition;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/xt9/input/Composition;->setSelection(II)V

    .line 103
    :cond_2
    return-void
.end method
