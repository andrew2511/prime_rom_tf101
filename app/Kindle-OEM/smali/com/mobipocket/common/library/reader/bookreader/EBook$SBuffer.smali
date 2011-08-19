.class public Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;
.super Ljava/lang/Object;
.source "EBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/bookreader/EBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SBuffer"
.end annotation


# instance fields
.field public _text:[C

.field public beg_pos:I

.field public currentPos:I

.field private file_length:I

.field public length:I

.field private translationTable:Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->file_length:I

    return v0
.end method

.method static synthetic access$002(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->file_length:I

    return p1
.end method

.method static synthetic access$100(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->setCurrentPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;)Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->translationTable:Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;

    return-object p1
.end method

.method private hasTranslationTable()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->translationTable:Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCurrentPos(I)I
    .locals 1
    .parameter "filePositionInRecord"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->translationTable:Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->translationTable:Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->getTextPositionInRecord(I)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->currentPos:I

    .line 83
    :goto_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->currentPos:I

    return v0

    .line 81
    :cond_0
    iput p1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->currentPos:I

    goto :goto_0
.end method


# virtual methods
.method public getFilePosition(I)I
    .locals 2
    .parameter "textPositionInRecord"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->hasTranslationTable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->translationTable:Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->getFilePositionInRecord(I)I

    move-result v0

    .line 106
    .local v0, filePositionInRecord:I
    :goto_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    add-int/2addr v1, v0

    return v1

    .line 104
    .end local v0           #filePositionInRecord:I
    :cond_0
    move v0, p1

    .restart local v0       #filePositionInRecord:I
    goto :goto_0
.end method

.method public getTextPositionInRecord(I)I
    .locals 2
    .parameter "filePositionInRecord"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->hasTranslationTable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->translationTable:Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/bookreader/TranslationTable;->getTextPositionInRecord(I)I

    move-result v0

    .line 124
    .local v0, textPositionInRecord:I
    :goto_0
    return v0

    .line 122
    .end local v0           #textPositionInRecord:I
    :cond_0
    move v0, p1

    .restart local v0       #textPositionInRecord:I
    goto :goto_0
.end method
