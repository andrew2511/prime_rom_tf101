.class public Lcom/xcome/dictionary/data/XDictWord;
.super Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xcome/dictionary/data/XDictWord;->h:I

    iput-object v1, p0, Lcom/xcome/dictionary/data/XDictWord;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/xcome/dictionary/data/XDictWord;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/xcome/dictionary/data/XDictWord;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/xcome/dictionary/data/XDictWord;->h:I

    iput-object v1, p0, Lcom/xcome/dictionary/data/XDictWord;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/xcome/dictionary/data/XDictWord;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/xcome/dictionary/data/XDictWord;->b:Ljava/lang/String;

    return-void
.end method

.method public getExplanation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xcome/dictionary/data/XDictWord;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xcome/dictionary/data/XDictWord;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFromBookName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xcome/dictionary/data/XDictWord;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xcome/dictionary/data/XDictWord;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/xcome/dictionary/data/XDictWord;->h:I

    return v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xcome/dictionary/data/XDictWord;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xcome/dictionary/data/XDictWord;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public setExplanation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xcome/dictionary/data/XDictWord;->j:Ljava/lang/String;

    return-void
.end method

.method public setFromBookName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xcome/dictionary/data/XDictWord;->i:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/xcome/dictionary/data/XDictWord;->h:I

    return-void
.end method

.method public setWord(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xcome/dictionary/data/XDictWord;->b:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Word : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xcome/dictionary/data/XDictWord;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Index : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xcome/dictionary/data/XDictWord;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Explanation : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xcome/dictionary/data/XDictWord;->getExplanation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "From BookName : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xcome/dictionary/data/XDictWord;->getFromBookName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
