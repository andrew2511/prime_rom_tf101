.class public Lcom/asus/reader/ui/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/asus/reader/ui/SearchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAfter:Ljava/lang/String;

.field public mBefore:Ljava/lang/String;

.field public mEndPos:Ljava/lang/String;

.field public mPageNum:I

.field public mStartPos:Ljava/lang/String;

.field public mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/asus/reader/ui/SearchResult$1;

    invoke-direct {v0}, Lcom/asus/reader/ui/SearchResult$1;-><init>()V

    sput-object v0, Lcom/asus/reader/ui/SearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/asus/reader/ui/SearchResult;->mPageNum:I

    .line 25
    iput-object p2, p0, Lcom/asus/reader/ui/SearchResult;->mStartPos:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/asus/reader/ui/SearchResult;->mEndPos:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/asus/reader/ui/SearchResult;->mText:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/asus/reader/ui/SearchResult;->mBefore:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/asus/reader/ui/SearchResult;->mAfter:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "page"
    .parameter "start"
    .parameter "end"
    .parameter "text"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/reader/ui/SearchResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    iput-object p4, p0, Lcom/asus/reader/ui/SearchResult;->mText:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/asus/reader/ui/SearchResult;->mBefore:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/asus/reader/ui/SearchResult;->mAfter:Ljava/lang/String;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/asus/reader/ui/SearchResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 8
    invoke-direct/range {p0 .. p6}, Lcom/asus/reader/ui/SearchResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newSearchResult(Ljava/util/HashMap;)Lcom/asus/reader/ui/SearchResult;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/asus/reader/ui/SearchResult;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "page"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 35
    .local v7, pageNum:Ljava/lang/String;
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    .local v2, start:Ljava/lang/String;
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    .local v3, end:Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 38
    .local v4, text:Ljava/lang/String;
    const-string v0, "before"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 39
    .local v5, before:Ljava/lang/String;
    const-string v0, "after"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 40
    .local v6, after:Ljava/lang/String;
    new-instance v0, Lcom/asus/reader/ui/SearchResult;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct/range {v0 .. v6}, Lcom/asus/reader/ui/SearchResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getEndPos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/asus/reader/ui/SearchResult;->mEndPos:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/asus/reader/ui/SearchResult;->mPageNum:I

    return v0
.end method

.method public getStartPos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/asus/reader/ui/SearchResult;->mStartPos:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flag"

    .prologue
    .line 54
    iget v0, p0, Lcom/asus/reader/ui/SearchResult;->mPageNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/asus/reader/ui/SearchResult;->mStartPos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/asus/reader/ui/SearchResult;->mEndPos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/asus/reader/ui/SearchResult;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/asus/reader/ui/SearchResult;->mBefore:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/asus/reader/ui/SearchResult;->mAfter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void
.end method
