.class public Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;
.super Ljava/lang/Object;
.source "ReaderDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookInfo"
.end annotation


# instance fields
.field private mBookId:I

.field private mBookType:I

.field private mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "bookType"

    .prologue
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput p1, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;->mBookId:I

    .line 573
    iput-object p2, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;->mName:Ljava/lang/String;

    .line 574
    iput p3, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;->mBookType:I

    .line 575
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;ILcom/asus/reader/util/ReaderDatabaseUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 566
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 566
    iget v0, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;->mBookType:I

    return v0
.end method

.method static synthetic access$300(Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 566
    iget v0, p0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;->mBookId:I

    return v0
.end method
