.class public Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;
.super Ljava/lang/Object;
.source "TOCItemImpl.java"

# interfaces
.implements Lcom/mobipocket/common/library/reader/TOCItem;


# instance fields
.field private final AUTHOR_ID:Ljava/lang/String;

.field private final DESCRIPTION_ID:Ljava/lang/String;

.field private ID:Ljava/lang/String;

.field private final IMAGE_ID:Ljava/lang/String;

.field private final TOC_TARGET_ENTRY_TEXT_PREFIX:Ljava/lang/String;

.field private authors:[Ljava/lang/String;

.field private descs:[Ljava/lang/String;

.field private eBookIdentifier:Ljava/lang/String;

.field private length:I

.field private level:I

.field private position:I

.field private state:Lcom/mobipocket/common/library/reader/indexes/IndexState;

.field private title:Ljava/lang/String;

.field private final toc:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

.field private tocClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;)V
    .locals 2
    .parameter "toc"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "author"

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->AUTHOR_ID:Ljava/lang/String;

    .line 21
    const-string v0, "description"

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->DESCRIPTION_ID:Ljava/lang/String;

    .line 22
    const-string v0, "image"

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->IMAGE_ID:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->authors:[Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->descs:[Ljava/lang/String;

    .line 38
    const-string v0, "|"

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->TOC_TARGET_ENTRY_TEXT_PREFIX:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->toc:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    .line 51
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->reset()V

    .line 52
    return-void
.end method


# virtual methods
.method public getEBookIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->eBookIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->length:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->level:I

    return v0
.end method

.method public getNamedTagBinary(Ljava/lang/String;)[[B
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 328
    filled-new-array {v1, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 329
    .local v0, result:[[B
    const-string v1, "image"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->toc:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    invoke-virtual {v1, p0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getImages(Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;)[[B

    move-result-object v0

    .line 333
    :cond_0
    return-object v0
.end method

.method public getNamedTagString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 343
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 344
    .local v0, result:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 346
    const-string v1, "author"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->authors:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->authors:[Ljava/lang/String;

    .line 355
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    const-string v1, "description"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->descs:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->descs:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->position:I

    return v0
.end method

.method getState()Lcom/mobipocket/common/library/reader/indexes/IndexState;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->state:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTocClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->tocClass:Ljava/lang/String;

    return-object v0
.end method

.method public isSection()Z
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x1

    .line 108
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->isTargetEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 110
    :cond_0
    return v0
.end method

.method public isTarget()Z
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->isTargetEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->getLevel()I

    move-result v1

    if-lez v1, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 118
    :cond_0
    return v0
.end method

.method isTargetEntry()Z
    .locals 3

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, ret:Z
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->ID:Ljava/lang/String;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const/4 v0, 0x1

    .line 300
    :cond_0
    return v0
.end method

.method public isTargetListTitle()Z
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->isTargetEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->getLevel()I

    move-result v1

    if-nez v1, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 126
    :cond_0
    return v0
.end method

.method isValid()Z
    .locals 3

    .prologue
    .line 247
    const/4 v0, 0x1

    .line 249
    .local v0, ret:Z
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->eBookIdentifier:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->eBookIdentifier:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    :cond_0
    const/4 v0, 0x0

    .line 285
    :cond_1
    :goto_0
    return v0

    .line 256
    :cond_2
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->level:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 258
    const/4 v0, 0x0

    goto :goto_0

    .line 262
    :cond_3
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->isTargetEntry()Z

    move-result v1

    if-nez v1, :cond_6

    .line 264
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->position:I

    if-gtz v1, :cond_4

    .line 265
    const/4 v0, 0x0

    .line 266
    :cond_4
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->length:I

    if-gtz v1, :cond_5

    .line 267
    const/4 v0, 0x0

    .line 279
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->state:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    if-nez v1, :cond_1

    .line 281
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_6
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->level:I

    if-eqz v1, :cond_5

    .line 274
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->position:I

    if-gtz v1, :cond_5

    .line 275
    const/4 v0, 0x0

    goto :goto_1
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->eBookIdentifier:Ljava/lang/String;

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->ID:Ljava/lang/String;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->title:Ljava/lang/String;

    .line 225
    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->position:I

    .line 226
    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->length:I

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->level:I

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->tocClass:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->state:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    .line 230
    return-void
.end method

.method setAuthors([Ljava/lang/String;)V
    .locals 0
    .parameter "authors"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->authors:[Ljava/lang/String;

    .line 310
    return-void
.end method

.method setDescs([Ljava/lang/String;)V
    .locals 0
    .parameter "descs"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->descs:[Ljava/lang/String;

    .line 319
    return-void
.end method

.method setEBookIdentifier(Ljava/lang/String;)V
    .locals 0
    .parameter "bookIdentifier"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->eBookIdentifier:Ljava/lang/String;

    .line 215
    return-void
.end method

.method setID(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->ID:Ljava/lang/String;

    .line 139
    return-void
.end method

.method setLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 166
    iput p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->length:I

    .line 167
    return-void
.end method

.method setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 175
    iput p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->level:I

    .line 176
    return-void
.end method

.method setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 157
    iput p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->position:I

    .line 158
    return-void
.end method

.method setState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->state:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    .line 207
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->title:Ljava/lang/String;

    .line 148
    return-void
.end method

.method setTocClass(Ljava/lang/String;)V
    .locals 0
    .parameter "tocClass"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->tocClass:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->title:Ljava/lang/String;

    return-object v0
.end method
