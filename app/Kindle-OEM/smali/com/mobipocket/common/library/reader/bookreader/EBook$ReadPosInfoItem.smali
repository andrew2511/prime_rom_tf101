.class Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;
.super Ljava/lang/Object;
.source "EBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/bookreader/EBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadPosInfoItem"
.end annotation


# instance fields
.field private abs_entry:I

.field private breakpoint:I

.field private is:Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

.field private rel_entry:I

.field private runlen:I

.field private table:I

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/bookreader/EBook;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V
    .locals 0
    .parameter
    .parameter "inputStream"

    .prologue
    .line 927
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->this$0:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->is:Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    .line 930
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;Lcom/mobipocket/common/library/reader/bookreader/EBook$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 914
    invoke-direct {p0, p1, p2}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 914
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->runlen:I

    return v0
.end method

.method static synthetic access$400(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->reset()V

    return-void
.end method

.method static synthetic access$500(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->readPosInfoItem()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 914
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->breakpoint:I

    return v0
.end method

.method static synthetic access$612(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 914
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->breakpoint:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->breakpoint:I

    return v0
.end method

.method static synthetic access$700(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 914
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->table:I

    return v0
.end method

.method static synthetic access$702(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 914
    iput p1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->table:I

    return p1
.end method

.method static synthetic access$712(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 914
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->table:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->table:I

    return v0
.end method

.method static synthetic access$800(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 914
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->rel_entry:I

    return v0
.end method

.method static synthetic access$900(Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 914
    iget v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->abs_entry:I

    return v0
.end method

.method private readPosInfoItem()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 939
    const/4 v1, 0x0

    .line 940
    .local v1, n:I
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->is:Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getAvailableLength()I

    move-result v2

    if-lez v2, :cond_2

    .line 941
    const/4 v2, 0x0

    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->rel_entry:I

    .line 942
    const/4 v2, -0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->breakpoint:I

    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->table:I

    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->abs_entry:I

    .line 943
    const/4 v2, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->runlen:I

    .line 947
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->is:Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readStopEncodedInt()I

    move-result v0

    .line 948
    .local v0, entry:I
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->is:Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v2

    if-lez v2, :cond_1

    .line 951
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    .line 953
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->is:Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readStopEncodedInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->table:I

    .line 955
    ushr-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->abs_entry:I

    .line 967
    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    .line 968
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->is:Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readByte()B

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->runlen:I

    .line 971
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    .line 972
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->is:Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readStopEncodedInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->breakpoint:I

    .line 974
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->is:Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v1

    .line 977
    .end local v0           #entry:I
    :cond_2
    return v1

    .line 960
    .restart local v0       #entry:I
    :cond_3
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    .line 961
    ushr-int/lit8 v2, v0, 0x4

    neg-int v2, v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->rel_entry:I

    goto :goto_0

    .line 963
    :cond_4
    ushr-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->rel_entry:I

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 985
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->rel_entry:I

    .line 986
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->breakpoint:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->table:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->abs_entry:I

    .line 987
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook$ReadPosInfoItem;->runlen:I

    .line 988
    return-void
.end method
