.class public Lcom/amazon/topaz/WordIterator;
.super Ljava/lang/Object;
.source "WordIterator.java"


# instance fields
.field private drawable:Lcom/amazon/topaz/internal/book/Drawable;

.field private forward:Z

.field private final owner:Lcom/amazon/topaz/TPZBook;

.field private final traverser:Lcom/amazon/topaz/internal/book/BookTraverser;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/TPZBook;)V
    .locals 1
    .parameter "owner"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/WordIterator;-><init>(Lcom/amazon/topaz/TPZBook;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/TPZBook;I)V
    .locals 4
    .parameter "owner"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/topaz/WordIterator;->owner:Lcom/amazon/topaz/TPZBook;

    .line 27
    if-gez p2, :cond_0

    .line 28
    const/4 p2, 0x0

    .line 30
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/topaz/TPZBook;->pageForID(I)I

    move-result v1

    .line 31
    .local v1, page_id:I
    new-instance v0, Lcom/amazon/topaz/internal/book/PageIterator;

    invoke-direct {v0, p1, v1}, Lcom/amazon/topaz/internal/book/PageIterator;-><init>(Lcom/amazon/topaz/TPZBook;I)V

    .line 33
    .local v0, pageIterator:Lcom/amazon/topaz/internal/book/PageIterator;
    new-instance v2, Lcom/amazon/topaz/internal/book/BookTraverser;

    new-instance v3, Lcom/amazon/topaz/WordIterator$1;

    invoke-direct {v3, p0}, Lcom/amazon/topaz/WordIterator$1;-><init>(Lcom/amazon/topaz/WordIterator;)V

    invoke-direct {v2, v0, v3}, Lcom/amazon/topaz/internal/book/BookTraverser;-><init>(Ljava/util/ListIterator;Lcom/amazon/topaz/internal/book/BookTraverser$TraversalHandler;)V

    iput-object v2, p0, Lcom/amazon/topaz/WordIterator;->traverser:Lcom/amazon/topaz/internal/book/BookTraverser;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/WordIterator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/amazon/topaz/WordIterator;->forward:Z

    return v0
.end method

.method static synthetic access$100(Lcom/amazon/topaz/WordIterator;)Lcom/amazon/topaz/internal/book/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amazon/topaz/WordIterator;->drawable:Lcom/amazon/topaz/internal/book/Drawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/amazon/topaz/WordIterator;Lcom/amazon/topaz/internal/book/Drawable;)Lcom/amazon/topaz/internal/book/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/amazon/topaz/WordIterator;->drawable:Lcom/amazon/topaz/internal/book/Drawable;

    return-object p1
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazon/topaz/WordIterator;->drawable:Lcom/amazon/topaz/internal/book/Drawable;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/amazon/topaz/WordIterator;->drawable:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getWord()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazon/topaz/WordIterator;->drawable:Lcom/amazon/topaz/internal/book/Drawable;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amazon/topaz/WordIterator;->drawable:Lcom/amazon/topaz/internal/book/Drawable;

    iget-object v1, p0, Lcom/amazon/topaz/WordIterator;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v1, v1, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/book/Drawable;->getAltText(Lcom/amazon/topaz/internal/binxml/Dictionary;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    goto :goto_0
.end method

.method public next()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/WordIterator;->drawable:Lcom/amazon/topaz/internal/book/Drawable;

    .line 138
    iput-boolean v1, p0, Lcom/amazon/topaz/WordIterator;->forward:Z

    .line 139
    iget-object v0, p0, Lcom/amazon/topaz/WordIterator;->traverser:Lcom/amazon/topaz/internal/book/BookTraverser;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/BookTraverser;->traverse()V

    .line 141
    iget-object v0, p0, Lcom/amazon/topaz/WordIterator;->drawable:Lcom/amazon/topaz/internal/book/Drawable;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public previous()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/WordIterator;->drawable:Lcom/amazon/topaz/internal/book/Drawable;

    .line 147
    iput-boolean v1, p0, Lcom/amazon/topaz/WordIterator;->forward:Z

    .line 148
    iget-object v0, p0, Lcom/amazon/topaz/WordIterator;->traverser:Lcom/amazon/topaz/internal/book/BookTraverser;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/BookTraverser;->backtrack()V

    .line 150
    iget-object v0, p0, Lcom/amazon/topaz/WordIterator;->drawable:Lcom/amazon/topaz/internal/book/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
