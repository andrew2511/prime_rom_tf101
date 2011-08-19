.class public Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;
.super Ljava/lang/Object;
.source "ReaderDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageInfo"
.end annotation


# instance fields
.field private mBookId:I

.field private mEndLocation:Ljava/lang/String;

.field private mPageNumber:I

.field private mStartLocation:Ljava/lang/String;

.field public mWhichBook:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .parameter "id"
    .parameter "pageNumber"

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput p1, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;->mBookId:I

    .line 545
    iput p2, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;->mPageNumber:I

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;->mEndLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;->mStartLocation:Ljava/lang/String;

    .line 547
    return-void
.end method

.method private constructor <init>(IILcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)V
    .locals 0
    .parameter "id"
    .parameter "pageNumber"
    .parameter "bookInfo"

    .prologue
    .line 550
    invoke-direct {p0, p1, p2}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;-><init>(II)V

    .line 551
    iput-object p3, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;->mWhichBook:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    .line 552
    return-void
.end method

.method synthetic constructor <init>(IILcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;Lcom/asus/reader/util/ReaderDatabaseUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 533
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;-><init>(IILcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)V

    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 533
    iget v0, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;->mPageNumber:I

    return v0
.end method

.method static synthetic access$100(Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 533
    iget v0, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;->mBookId:I

    return v0
.end method

.method static synthetic access$400(Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;->mStartLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;->mStartLocation:Ljava/lang/String;

    return-object p1
.end method
