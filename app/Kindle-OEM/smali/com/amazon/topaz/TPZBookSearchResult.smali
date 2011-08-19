.class public abstract Lcom/amazon/topaz/TPZBookSearchResult;
.super Lcom/amazon/kcp/reader/models/BookSearchResult;
.source "TPZBookSearchResult.java"


# instance fields
.field private final firstWordOffset:I

.field private final lastWordLength:I

.field private final matchWordIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private final matchWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter "firstWordOffset"
    .parameter "lastWordLength"
    .parameter "preContext"
    .parameter "postContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, matchWords:Ljava/util/List;,"Ljava/util/List<*>;"
    .local p2, matchWordIDs:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-static {p1, p5, p6}, Lcom/amazon/topaz/TPZBookSearchResult;->combineText(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    add-int v2, v0, p3

    invoke-static {p1, p3, p4}, Lcom/amazon/topaz/TPZBookSearchResult;->getMatchLength(Ljava/util/List;II)I

    move-result v3

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/amazon/kcp/reader/models/BookSearchResult;-><init>(Ljava/lang/String;III)V

    .line 30
    iput-object p1, p0, Lcom/amazon/topaz/TPZBookSearchResult;->matchWords:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/amazon/topaz/TPZBookSearchResult;->matchWordIDs:Ljava/util/List;

    .line 32
    iput p3, p0, Lcom/amazon/topaz/TPZBookSearchResult;->firstWordOffset:I

    .line 33
    iput p4, p0, Lcom/amazon/topaz/TPZBookSearchResult;->lastWordLength:I

    .line 34
    return-void
.end method

.method private static combineText(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMatchLength(Ljava/util/List;II)I
    .locals 4
    .parameter
    .parameter "firstWordOffset"
    .parameter "lastWordLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;II)I"
        }
    .end annotation

    .prologue
    .local p0, matchWords:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v3, 0x1

    .line 115
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v3, :cond_0

    move v2, p2

    .line 131
    :goto_0
    return v2

    .line 121
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v1, v2, p1

    .line 124
    .local v1, matchLength:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 126
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_1
    add-int/lit8 v2, p2, 0x1

    add-int/2addr v1, v2

    move v2, v1

    .line 131
    goto :goto_0
.end method


# virtual methods
.method public getMatchWord(I)Ljava/lang/String;
    .locals 1
    .parameter "wordIdx"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazon/topaz/TPZBookSearchResult;->matchWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getMatchWordCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/topaz/TPZBookSearchResult;->matchWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMatchWordID(I)I
    .locals 1
    .parameter "wordIdx"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazon/topaz/TPZBookSearchResult;->matchWordIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMatchWordLength(I)I
    .locals 2
    .parameter "wordIdx"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/topaz/TPZBookSearchResult;->matchWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/amazon/topaz/TPZBookSearchResult;->lastWordLength:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/TPZBookSearchResult;->getMatchWord(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getMatchWordOffset(I)I
    .locals 1
    .parameter "wordIdx"

    .prologue
    .line 71
    if-nez p1, :cond_0

    iget v0, p0, Lcom/amazon/topaz/TPZBookSearchResult;->firstWordOffset:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
