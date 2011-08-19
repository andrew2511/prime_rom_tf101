.class public Lcom/nuance/xt9/input/WriteAlphaSettings;
.super Ljava/lang/Object;
.source "WriteAlphaSettings.java"


# static fields
.field public static BASE_AND_HELP_LINE:I = 0x0

.field public static BASE_LINE_ONLY:I = 0x0

.field public static HELP_AND_TOP_LINE:I = 0x0

.field public static HELP_LINE_ONLY:I = 0x0

.field public static final HWR_TEMPLATE_DATABASE:I = 0x109

.field public static MAX_RESULT_CANDIDATES:I

.field public static MAX_RESULT_CHARACTERS:I

.field public static NO_LINE_SUPPORTS:I

.field public static TOP_LINE_ONLY:I


# instance fields
.field public mBaseline:I

.field public mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/WriteAlphaCategory;",
            ">;"
        }
    .end annotation
.end field

.field public mHeight:I

.field public mHelpline:I

.field public mHwrTemplateDatabaseID:I

.field public mLanguageDatabaseID:I

.field public mRecognitionMode:I

.field public mRecognizeDelay:I

.field public mSupportLineSet:I

.field public mTopline:I

.field public mWidth:I

.field public mWritingDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0xa

    sput v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->MAX_RESULT_CANDIDATES:I

    .line 12
    const/16 v0, 0x40

    sput v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->MAX_RESULT_CHARACTERS:I

    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->NO_LINE_SUPPORTS:I

    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->TOP_LINE_ONLY:I

    .line 16
    const/4 v0, 0x2

    sput v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->BASE_LINE_ONLY:I

    .line 17
    const/4 v0, 0x3

    sput v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->HELP_LINE_ONLY:I

    .line 18
    const/4 v0, 0x4

    sput v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->BASE_AND_HELP_LINE:I

    .line 19
    const/4 v0, 0x5

    sput v0, Lcom/nuance/xt9/input/WriteAlphaSettings;->HELP_AND_TOP_LINE:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->BACK_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->RETURN_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->WHITESPACE_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->LATIN:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mRecognitionMode:I

    .line 49
    iput v2, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mSupportLineSet:I

    .line 52
    iput v2, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mHelpline:I

    .line 53
    iput v2, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mBaseline:I

    .line 54
    iput v2, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mTopline:I

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mWritingDirection:I

    .line 57
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mRecognizeDelay:I

    .line 61
    iput v2, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mWidth:I

    .line 62
    iput v2, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mHeight:I

    .line 63
    return-void
.end method


# virtual methods
.method public addEmailCategoryOnly()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->EMAIL:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->LATIN:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public addPhoneNumberCategoryOnly()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->PHONE_NUMBER:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public addTextCategory(Lcom/nuance/xt9/input/InputMethods$Language;)V
    .locals 3
    .parameter "language"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 100
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->LATIN:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->EXCL_MARK_PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->PERIOD_COMMA_PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->CONTRACTION_MARK:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->AT_SIGN:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->RETURN_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->BACK_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->WHITESPACE_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget v1, p1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    const/16 v2, 0x10a

    if-ne v1, v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->SPANISH_PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 117
    .local v0, handWritingInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->DIGIT:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->BASIC_PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v2, Lcom/nuance/xt9/input/WriteAlphaCategory;->PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    return-void
.end method

.method public addUrlCategoryOnly()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->URL:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public getCurrentCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/WriteAlphaCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/WriteAlphaCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, categories:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/WriteAlphaCategory;>;"
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    return-void
.end method

.method public setDigitsAndSymbolsCategoryOnly()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->RETURN_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->BACK_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->DIGIT:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->PHONE_NUMBER_SUPPLEMENTS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->ALT:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->HORIZONTAL_SYMBOLS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteAlphaSettings;->mCategories:Ljava/util/List;

    sget-object v1, Lcom/nuance/xt9/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/xt9/input/WriteAlphaCategory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method
