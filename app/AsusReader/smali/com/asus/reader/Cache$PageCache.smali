.class Lcom/asus/reader/Cache$PageCache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageCache"
.end annotation


# instance fields
.field private bookId:I

.field private filename:Ljava/lang/String;

.field private fontSize:I

.field private height:I

.field private hitTime:J

.field private pageNo:I

.field final synthetic this$0:Lcom/asus/reader/Cache;

.field private width:I


# direct methods
.method private constructor <init>(Lcom/asus/reader/Cache;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/asus/reader/Cache$PageCache;->this$0:Lcom/asus/reader/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/reader/Cache;Lcom/asus/reader/Cache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/asus/reader/Cache$PageCache;-><init>(Lcom/asus/reader/Cache;)V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/reader/Cache$PageCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/asus/reader/Cache$PageCache;->width:I

    return v0
.end method

.method static synthetic access$202(Lcom/asus/reader/Cache$PageCache;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/asus/reader/Cache$PageCache;->width:I

    return p1
.end method

.method static synthetic access$300(Lcom/asus/reader/Cache$PageCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/asus/reader/Cache$PageCache;->height:I

    return v0
.end method

.method static synthetic access$302(Lcom/asus/reader/Cache$PageCache;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/asus/reader/Cache$PageCache;->height:I

    return p1
.end method

.method static synthetic access$400(Lcom/asus/reader/Cache$PageCache;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/asus/reader/Cache$PageCache;->hitTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/asus/reader/Cache$PageCache;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/asus/reader/Cache$PageCache;->hitTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/asus/reader/Cache$PageCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/asus/reader/Cache$PageCache;->bookId:I

    return v0
.end method

.method static synthetic access$502(Lcom/asus/reader/Cache$PageCache;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/asus/reader/Cache$PageCache;->bookId:I

    return p1
.end method

.method static synthetic access$600(Lcom/asus/reader/Cache$PageCache;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/asus/reader/Cache$PageCache;->filename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/asus/reader/Cache$PageCache;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/asus/reader/Cache$PageCache;->filename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/asus/reader/Cache$PageCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/asus/reader/Cache$PageCache;->pageNo:I

    return v0
.end method

.method static synthetic access$702(Lcom/asus/reader/Cache$PageCache;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/asus/reader/Cache$PageCache;->pageNo:I

    return p1
.end method

.method static synthetic access$800(Lcom/asus/reader/Cache$PageCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/asus/reader/Cache$PageCache;->fontSize:I

    return v0
.end method

.method static synthetic access$802(Lcom/asus/reader/Cache$PageCache;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/asus/reader/Cache$PageCache;->fontSize:I

    return p1
.end method
