.class public Lcom/nuance/xt9/input/WriteChineseSettings;
.super Ljava/lang/Object;
.source "WriteChineseSettings.java"


# static fields
.field public static MAX_RESULT_CHARACTERS:I


# instance fields
.field public mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/WriteChineseCategory;",
            ">;"
        }
    .end annotation
.end field

.field public mCharsPerResult:I

.field public mPreferFullWidthPunctuations:Z

.field public mRecognizeDelay:I

.field public mXMax:I

.field public mXMin:I

.field public mYMax:I

.field public mYMin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0xa

    sput v0, Lcom/nuance/xt9/input/WriteChineseSettings;->MAX_RESULT_CHARACTERS:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/WriteChineseSettings;->mCategories:Ljava/util/List;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/WriteChineseSettings;->mRecognizeDelay:I

    .line 23
    sget-object v0, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_GESTURE:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 24
    sget-object v0, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_CHINESE_ONLY:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 25
    sget v0, Lcom/nuance/xt9/input/WriteChineseSettings;->MAX_RESULT_CHARACTERS:I

    iput v0, p0, Lcom/nuance/xt9/input/WriteChineseSettings;->mCharsPerResult:I

    .line 26
    return-void
.end method


# virtual methods
.method public addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V
    .locals 2
    .parameter "cat"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChineseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChineseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    return-void
.end method

.method public clearCategory()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/xt9/input/WriteChineseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    sget-object v0, Lcom/nuance/xt9/input/WriteChineseCategory;->DLT_GESTURE:Lcom/nuance/xt9/input/WriteChineseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/WriteChineseSettings;->addCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V

    .line 52
    return-void
.end method

.method public removeCategory(Lcom/nuance/xt9/input/WriteChineseCategory;)V
    .locals 2
    .parameter "cat"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteChineseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, location:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/nuance/xt9/input/WriteChineseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 47
    :cond_0
    return-void
.end method
