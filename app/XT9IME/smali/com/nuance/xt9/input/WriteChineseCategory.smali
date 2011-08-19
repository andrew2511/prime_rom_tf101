.class public Lcom/nuance/xt9/input/WriteChineseCategory;
.super Ljava/lang/Object;
.source "WriteChineseCategory.java"


# static fields
.field public static final DLT_ALPHA:Lcom/nuance/xt9/input/WriteChineseCategory;

.field public static final DLT_CHINESE_ONLY:Lcom/nuance/xt9/input/WriteChineseCategory;

.field public static final DLT_DIGIT:Lcom/nuance/xt9/input/WriteChineseCategory;

.field public static final DLT_GESTURE:Lcom/nuance/xt9/input/WriteChineseCategory;

.field public static final DLT_MISC:Lcom/nuance/xt9/input/WriteChineseCategory;

.field public static final DLT_PUNCTUATION:Lcom/nuance/xt9/input/WriteChineseCategory;

.field public static final DLT_SYMBOL:Lcom/nuance/xt9/input/WriteChineseCategory;


# instance fields
.field private final m_category:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/nuance/xt9/input/WriteChineseCategory;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_GESTURE:Lcom/nuance/xt9/input/WriteChineseCategory;

    .line 27
    new-instance v0, Lcom/nuance/xt9/input/WriteChineseCategory;

    const v1, 0xc00f00

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_CHINESE_ONLY:Lcom/nuance/xt9/input/WriteChineseCategory;

    .line 29
    new-instance v0, Lcom/nuance/xt9/input/WriteChineseCategory;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_MISC:Lcom/nuance/xt9/input/WriteChineseCategory;

    .line 31
    new-instance v0, Lcom/nuance/xt9/input/WriteChineseCategory;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_ALPHA:Lcom/nuance/xt9/input/WriteChineseCategory;

    .line 33
    new-instance v0, Lcom/nuance/xt9/input/WriteChineseCategory;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_DIGIT:Lcom/nuance/xt9/input/WriteChineseCategory;

    .line 34
    new-instance v0, Lcom/nuance/xt9/input/WriteChineseCategory;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_PUNCTUATION:Lcom/nuance/xt9/input/WriteChineseCategory;

    .line 35
    new-instance v0, Lcom/nuance/xt9/input/WriteChineseCategory;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_SYMBOL:Lcom/nuance/xt9/input/WriteChineseCategory;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "cat"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/nuance/xt9/input/WriteChineseCategory;->m_category:I

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 47
    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/WriteChineseCategory;->get()I

    move-result v0

    check-cast p1, Lcom/nuance/xt9/input/WriteChineseCategory;

    .end local p1
    invoke-virtual {p1}, Lcom/nuance/xt9/input/WriteChineseCategory;->get()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/nuance/xt9/input/WriteChineseCategory;->m_category:I

    return v0
.end method
