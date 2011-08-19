.class public Lcom/amazon/kcp/library/models/LocalBookState;
.super Ljava/lang/Object;
.source "LocalBookState.java"


# instance fields
.field private articlesRead:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final bookID:Lcom/amazon/kcp/library/models/IBookID;

.field private bookKept:Z

.field private bookRead:Z

.field private localStorage:Lcom/amazon/kcp/application/ILocalStorage;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/IBookID;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 2
    .parameter "bookID"
    .parameter "localStorage"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot initialized with null bookID or localStorage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iput-object p1, p0, Lcom/amazon/kcp/library/models/LocalBookState;->bookID:Lcom/amazon/kcp/library/models/IBookID;

    .line 47
    iput-object p2, p0, Lcom/amazon/kcp/library/models/LocalBookState;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    .line 48
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/LocalBookState;->bookRead:Z

    .line 49
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/LocalBookState;->bookKept:Z

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/LocalBookState;->articlesRead:Ljava/util/Map;

    .line 51
    return-void
.end method


# virtual methods
.method public getArticlesReadMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/library/models/LocalBookState;->articlesRead:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kcp/library/models/IBookID;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/library/models/LocalBookState;->bookID:Lcom/amazon/kcp/library/models/IBookID;

    return-object v0
.end method

.method public isArticleRead(I)Z
    .locals 3
    .parameter "articleIndex"

    .prologue
    .line 85
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/LocalBookState;->articlesRead:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBookKept()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/LocalBookState;->bookKept:Z

    return v0
.end method

.method public isBookRead()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/LocalBookState;->bookRead:Z

    return v0
.end method

.method public persist()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/library/models/LocalBookState;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/ILocalStorage;->save(Lcom/amazon/kcp/library/models/LocalBookState;)V

    .line 131
    return-void
.end method

.method public setArticleRead(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/library/models/LocalBookState;->articlesRead:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public setBookKept(Z)V
    .locals 0
    .parameter "bookKept"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/LocalBookState;->bookKept:Z

    .line 113
    return-void
.end method

.method public setBookRead(Z)V
    .locals 0
    .parameter "bookRead"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/LocalBookState;->bookRead:Z

    .line 75
    return-void
.end method
