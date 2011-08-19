.class public Lcom/xcome/dictionary/XDictManager;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/xcome/dictionary/XDictManager;


# instance fields
.field private f:Ljava/util/Hashtable;

.field private g:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xcome/dictionary/XDictManager;->e:Lcom/xcome/dictionary/XDictManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xcome/dictionary/XDictManager;->f:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/xcome/dictionary/XDictManager;->g:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/xcome/dictionary/XDictManager;->f:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/xcome/dictionary/XDictManager;->g:Ljava/util/Hashtable;

    return-void
.end method

.method public static final getDictManager()Lcom/xcome/dictionary/XDictManager;
    .locals 1

    sget-object v0, Lcom/xcome/dictionary/XDictManager;->e:Lcom/xcome/dictionary/XDictManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xcome/dictionary/XDictManager;

    invoke-direct {v0}, Lcom/xcome/dictionary/XDictManager;-><init>()V

    sput-object v0, Lcom/xcome/dictionary/XDictManager;->e:Lcom/xcome/dictionary/XDictManager;

    :cond_0
    sget-object v0, Lcom/xcome/dictionary/XDictManager;->e:Lcom/xcome/dictionary/XDictManager;

    return-object v0
.end method


# virtual methods
.method public getDetailByIndex(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xcome/dictionary/XDictManager;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxdict/g;

    invoke-virtual {p0, p2}, Lxdict/g;->a(I)Lcom/xcome/dictionary/data/XDictWord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xcome/dictionary/data/XDictWord;->getExplanation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDictBookName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xcome/dictionary/XDictManager;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxdict/g;

    iget-object v0, p0, Lxdict/g;->v:Lxdict/d;

    invoke-virtual {v0}, Lxdict/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDictSize(I)I
    .locals 2

    iget-object v0, p0, Lcom/xcome/dictionary/XDictManager;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxdict/g;

    iget-object v0, p0, Lxdict/g;->v:Lxdict/d;

    iget v0, v0, Lxdict/d;->q:I

    return v0
.end method

.method public getHeadwordByIndex(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xcome/dictionary/XDictManager;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxdict/g;

    invoke-virtual {p0, p2}, Lxdict/g;->a(I)Lcom/xcome/dictionary/data/XDictWord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xcome/dictionary/data/XDictWord;->getWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadDictionary(Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x0

    const-string v0, ".ifo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lcom/xcome/dictionary/XDictManager;->g:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xcome/dictionary/XDictManager;->g:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lxdict/g;

    invoke-direct {v1, v0}, Lxdict/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/xcome/dictionary/XDictManager;->f:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xcome/dictionary/XDictManager;->g:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1
.end method

.method public searchByString(ILjava/lang/String;Lcom/xcome/dictionary/data/XDictWord;)I
    .locals 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/xcome/dictionary/XDictManager;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxdict/g;

    iget-object v0, p0, Lxdict/g;->y:Lxdict/f;

    iget-object v0, v0, Lxdict/f;->u:Lxdict/i;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lxdict/i;->J:[Lxdict/c;

    array-length v2, v2

    sub-int/2addr v2, v7

    move v3, v8

    :goto_0
    if-gt v3, v2, :cond_2

    add-int v4, v3, v2

    ushr-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lxdict/i;->b(I)Lxdict/b;

    move-result-object v5

    invoke-virtual {v5}, Lxdict/b;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    sub-int v2, v4, v7

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_1
    invoke-virtual {p0, v0}, Lxdict/g;->a(I)Lcom/xcome/dictionary/data/XDictWord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xcome/dictionary/data/XDictWord;->getIndex()I

    move-result v1

    if-gez v1, :cond_4

    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/xcome/dictionary/data/XDictWord;->getIndex()I

    move-result v0

    neg-int v0, v0

    sub-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lxdict/g;->a(I)Lcom/xcome/dictionary/data/XDictWord;

    move-result-object v0

    move v9, v1

    move-object v1, v0

    move v0, v9

    :goto_2
    invoke-virtual {v1}, Lcom/xcome/dictionary/data/XDictWord;->getExplanation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/xcome/dictionary/data/XDictWord;->setExplanation(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xcome/dictionary/data/XDictWord;->getFromBookName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/xcome/dictionary/data/XDictWord;->setFromBookName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xcome/dictionary/data/XDictWord;->getIndex()I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/xcome/dictionary/data/XDictWord;->setIndex(I)V

    invoke-virtual {v1}, Lcom/xcome/dictionary/data/XDictWord;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/xcome/dictionary/data/XDictWord;->setWord(Ljava/lang/String;)V

    return v0

    :cond_2
    iget-object v0, p0, Lxdict/g;->v:Lxdict/d;

    iget v0, v0, Lxdict/d;->q:I

    if-lt v3, v0, :cond_5

    iget-object v0, p0, Lxdict/g;->v:Lxdict/d;

    iget v0, v0, Lxdict/d;->q:I

    sub-int/2addr v0, v7

    :goto_3
    if-gez v0, :cond_3

    move v0, v8

    :cond_3
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    move v0, v8

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_3
.end method
