.class public Lcom/nuance/xt9/input/WriteAlphaCategory;
.super Ljava/lang/Object;
.source "WriteAlphaCategory.java"


# static fields
.field public static final ALT:Lcom/nuance/xt9/input/WriteAlphaCategory; = null

.field public static final AT_SIGN:Lcom/nuance/xt9/input/WriteAlphaCategory; = null

.field public static final BACK_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory; = null

.field public static final BASIC_PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory; = null

.field public static final CONTRACTION_MARK:Lcom/nuance/xt9/input/WriteAlphaCategory; = null

.field private static final DECUMA_CATEGORY_ALT:I = 0x4d8

.field private static final DECUMA_CATEGORY_AT_SIGN:I = 0x4ed

.field private static final DECUMA_CATEGORY_BACKSPACE_STROKE:I = 0x66

.field private static final DECUMA_CATEGORY_BASIC_PUNCTUATIONS:I = 0x4e5

.field private static final DECUMA_CATEGORY_CONTRACTION_MARK:I = 0x4ec

.field private static final DECUMA_CATEGORY_DIGIT:I = 0x44d

.field private static final DECUMA_CATEGORY_EMAIL:I = 0x4b0

.field private static final DECUMA_CATEGORY_EXTRA:I = 0x4d9

.field private static final DECUMA_CATEGORY_HORIZONTAL_SYMBOLS:I = 0x4da

.field private static final DECUMA_CATEGORY_ISO8859_1:I = 0x3f6

.field private static final DECUMA_CATEGORY_MULTITOUCH_2ARROW_GESTURES:I = 0xca

.field private static final DECUMA_CATEGORY_PERIOD_COMMA_PUNCTUATIONS:I = 0x4e7

.field private static final DECUMA_CATEGORY_PHONE_NUMBER:I = 0x4bb

.field private static final DECUMA_CATEGORY_PHONE_NUMBER_SUPPLEMENTS:I = 0x4ba

.field private static final DECUMA_CATEGORY_PUNCTUATIONS:I = 0x4e2

.field private static final DECUMA_CATEGORY_QUEST_EXCL_MARK_PUNCTUATIONS:I = 0x4e9

.field private static final DECUMA_CATEGORY_RETURN_STROKE:I = 0x65

.field private static final DECUMA_CATEGORY_SPANISH_PUNCTUATIONS:I = 0x4e4

.field private static final DECUMA_CATEGORY_URL:I = 0x4c5

.field private static final DECUMA_CATEGORY_WHITESPACE_STROKE:I = 0x64

.field public static final DIGIT:Lcom/nuance/xt9/input/WriteAlphaCategory; = null

.field public static final EMAIL:Lcom/nuance/xt9/input/WriteAlphaCategory; = null

.field public static final EXCL_MARK_PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory; = null

.field public static final EXTRA:Lcom/nuance/xt9/input/WriteAlphaCategory; = null

.field public static final HORIZONTAL_SYMBOLS:Lcom/nuance/xt9/input/WriteAlphaCategory; = null

.field public static final LATIN:Lcom/nuance/xt9/input/WriteAlphaCategory; = null

.field public static final MULTITOUCH_GESTURES:Lcom/nuance/xt9/input/WriteAlphaCategory; = null

.field public static final MULTITOUCH_HORIZONTAL_SWIPE_LEFT_UNICODE_VALUE:I = 0x21d0

.field public static final MULTITOUCH_HORIZONTAL_SWIPE_RIGHT_UNICODE_VALUE:I = 0x21d2

.field public static final MULTITOUCH_VERTICAL_SWIPE_DOWN_UNICODE_VALUE:I = 0x21d3

.field public static final MULTITOUCH_VERTICAL_SWIPE_UP_UNICODE_VALUE:I = 0x21d1

.field public static final PERIOD_COMMA_PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

.field public static final PHONE_NUMBER:Lcom/nuance/xt9/input/WriteAlphaCategory;

.field public static final PHONE_NUMBER_SUPPLEMENTS:Lcom/nuance/xt9/input/WriteAlphaCategory;

.field public static final PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

.field public static final RETURN_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;

.field public static final SPANISH_PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

.field public static final URL:Lcom/nuance/xt9/input/WriteAlphaCategory;

.field public static final WHITESPACE_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;


# instance fields
.field private final m_category:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4e9

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->EXCL_MARK_PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 27
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4e7

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->PERIOD_COMMA_PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 28
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4ec

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->CONTRACTION_MARK:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 29
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4ed

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->AT_SIGN:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 31
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x3f6

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->LATIN:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 32
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->WHITESPACE_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 33
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->RETURN_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 34
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x66

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->BACK_GESTURE:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 36
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x44d

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->DIGIT:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 37
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4e5

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->BASIC_PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 38
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4e4

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->SPANISH_PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 39
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4d9

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->EXTRA:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 40
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4e2

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->PUNCTUATIONS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 41
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4da

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->HORIZONTAL_SYMBOLS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 42
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4b0

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->EMAIL:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 43
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4ba

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->PHONE_NUMBER_SUPPLEMENTS:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 44
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4bb

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->PHONE_NUMBER:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 45
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4c5

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->URL:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 46
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0xca

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->MULTITOUCH_GESTURES:Lcom/nuance/xt9/input/WriteAlphaCategory;

    .line 47
    new-instance v0, Lcom/nuance/xt9/input/WriteAlphaCategory;

    const/16 v1, 0x4d8

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteAlphaCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteAlphaCategory;->ALT:Lcom/nuance/xt9/input/WriteAlphaCategory;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "cat"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/nuance/xt9/input/WriteAlphaCategory;->m_category:I

    .line 72
    return-void
.end method

.method public static isInstantGestureCharacter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 67
    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

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

.method public static isMultiTouchGesturesCharacter(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 59
    const/16 v0, 0x21d0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x21d2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x21d1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x21d3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 79
    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/WriteAlphaCategory;->get()I

    move-result v0

    check-cast p1, Lcom/nuance/xt9/input/WriteAlphaCategory;

    .end local p1
    invoke-virtual {p1}, Lcom/nuance/xt9/input/WriteAlphaCategory;->get()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/nuance/xt9/input/WriteAlphaCategory;->m_category:I

    return v0
.end method
