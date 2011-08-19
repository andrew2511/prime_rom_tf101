.class abstract Lcom/amazon/topaz/Book;
.super Ljava/lang/Object;
.source "Book.java"


# instance fields
.field public dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

.field protected info:Lcom/amazon/topaz/internal/binxml/Collection;

.field private lastID:I

.field protected metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private origLayout:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private origPageID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected other:Lcom/amazon/topaz/internal/binxml/Tree;

.field private final pageIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected styleSheet:Lcom/amazon/topaz/styles/StyleSheet;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/Book;->metadata:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/amazon/topaz/styles/StyleSheet;->EMPTY:Lcom/amazon/topaz/styles/StyleSheet;

    iput-object v0, p0, Lcom/amazon/topaz/Book;->styleSheet:Lcom/amazon/topaz/styles/StyleSheet;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/Book;->pageIDs:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/Book;->origPageID:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/Book;->origLayout:Ljava/util/HashMap;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/Book;->lastID:I

    .line 49
    return-void
.end method


# virtual methods
.method public firstID(I)I
    .locals 2
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/Book;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    .line 143
    .local v0, p:Lcom/amazon/topaz/internal/book/Page;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Page;->firstID()I

    move-result v1

    .line 146
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method abstract getDPI()I
.end method

.method public abstract getGlyph(II)Lcom/amazon/topaz/internal/book/Glyph;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getImage(I)Lcom/amazon/topaz/internal/book/IImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getInternalPageID(I)Ljava/lang/Integer;
    .locals 2
    .parameter "key"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazon/topaz/Book;->pageIDs:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/amazon/topaz/Book;->metadata:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 193
    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    .line 195
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amazon/topaz/Book;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method protected getOrigLayout(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v1, p0, Lcom/amazon/topaz/Book;->origLayout:Ljava/util/HashMap;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/Book;->origLayout:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 242
    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    iget-object v2, p0, Lcom/amazon/topaz/Book;->origLayout:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    monitor-exit v1

    return-object v0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getOrigPageID(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/amazon/topaz/Book;->loadOrigLayout()V

    .line 227
    iget-object v0, p0, Lcom/amazon/topaz/Book;->origPageID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public abstract getPage(I)Lcom/amazon/topaz/internal/book/Page;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getPage(Ljava/lang/String;)Lcom/amazon/topaz/internal/book/Page;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/amazon/topaz/Book;->loadOrigLayout()V

    .line 70
    iget-object v2, p0, Lcom/amazon/topaz/Book;->origLayout:Ljava/util/HashMap;

    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/Book;->origLayout:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 75
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/amazon/topaz/Book;->getPage(I)Lcom/amazon/topaz/internal/book/Page;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    monitor-exit v2

    .line 126
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    monitor-exit v2

    move-object v0, v12

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/Book;->origLayout:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 88
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/Object;

    .line 92
    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v7, v12

    .line 95
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/amazon/topaz/Book;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v8

    .line 103
    if-eqz v8, :cond_1

    if-nez v7, :cond_1

    .line 104
    new-instance v7, Lcom/amazon/topaz/internal/book/Page$Builder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8}, Lcom/amazon/topaz/internal/book/Page;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Lcom/amazon/topaz/internal/book/Page;->getHeight()I

    move-result v10

    invoke-virtual {v8}, Lcom/amazon/topaz/internal/book/Page;->getAllocSize()I

    move-result v11

    invoke-direct {v7, v1, v9, v10, v11}, Lcom/amazon/topaz/internal/book/Page$Builder;-><init>(IIII)V

    .line 105
    invoke-virtual {v8}, Lcom/amazon/topaz/internal/book/Page;->getStyleRule()Lcom/amazon/topaz/styles/MatchRule;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/amazon/topaz/internal/book/Page$Builder;->setStyleRule(Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/internal/book/Container$Builder;

    :cond_1
    move-object v1, v7

    .line 108
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 129
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 114
    :cond_2
    :try_start_5
    aput-object v8, v3, v6

    .line 115
    invoke-virtual {v1, v6}, Lcom/amazon/topaz/internal/book/Page$Builder;->addChild(I)Lcom/amazon/topaz/internal/book/Container$Builder;

    .line 116
    add-int/lit8 v6, v6, 0x1

    move-object v7, v1

    .line 117
    goto :goto_1

    .line 119
    :cond_3
    if-eqz v7, :cond_4

    .line 121
    invoke-virtual {v7, v4, v3}, Lcom/amazon/topaz/internal/book/Page$Builder;->build([Ljava/lang/Object;[Ljava/lang/Object;)Lcom/amazon/topaz/internal/book/Container;

    move-result-object p0

    check-cast p0, Lcom/amazon/topaz/internal/book/Page;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, p0

    goto :goto_0

    .line 126
    :cond_4
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v0, v12

    goto :goto_0
.end method

.method abstract getPageID(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation
.end method

.method abstract getPageNum(Ljava/lang/String;)I
.end method

.method abstract getStatistics()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation
.end method

.method abstract getStyleSheet()Lcom/amazon/topaz/styles/StyleSheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized lastID()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/amazon/topaz/Book;->lastID:I

    if-eqz v2, :cond_0

    .line 153
    iget v2, p0, Lcom/amazon/topaz/Book;->lastID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :goto_0
    monitor-exit p0

    return v2

    .line 155
    :cond_0
    :try_start_1
    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->METADATA_BOOKLENGTH:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amazon/topaz/Book;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, len:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 158
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/amazon/topaz/Book;->lastID:I

    .line 159
    iget v2, p0, Lcom/amazon/topaz/Book;->lastID:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 166
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/amazon/topaz/Book;->lastPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/amazon/topaz/Book;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v1

    .line 167
    .local v1, p:Lcom/amazon/topaz/internal/book/Page;
    if-eqz v1, :cond_2

    .line 168
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Page;->lastID()I

    move-result v2

    iput v2, p0, Lcom/amazon/topaz/Book;->lastID:I

    .line 169
    iget v2, p0, Lcom/amazon/topaz/Book;->lastID:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 173
    :cond_2
    const v2, 0x7fffffff

    goto :goto_0

    .line 152
    .end local v0           #len:Ljava/lang/String;
    .end local v1           #p:Lcom/amazon/topaz/internal/book/Page;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public abstract lastPage()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation
.end method

.method protected abstract loadOrigLayout()V
.end method

.method abstract pageForID(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected putInternalPageID(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/amazon/topaz/Book;->pageIDs:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method

.method protected putOrigPageID(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/amazon/topaz/Book;->origPageID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public abstract setPID([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
