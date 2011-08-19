.class public Lcom/mobipocket/common/library/reader/IndexManager;
.super Ljava/lang/Object;
.source "IndexManager.java"

# interfaces
.implements Lcom/mobipocket/common/library/historizer/Historizable;


# instance fields
.field private pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

.field private pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

.field private pCurrentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

.field private pIndexControl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

.field private final pPdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

.field private final pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

.field private primaryIndexFilter:[I


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/filesystem/PDBFactory;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->primaryIndexFilter:[I

    .line 54
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pPdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    .line 57
    return-void
.end method


# virtual methods
.method public closeIndex()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    .line 180
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-interface {v0}, Lcom/mobipocket/common/filesystem/ReadPDB;->close()V

    .line 184
    :cond_0
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    .line 185
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    .line 186
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pIndexControl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    .line 187
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->primaryIndexFilter:[I

    .line 189
    return-void
.end method

.method public getBookTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pBookTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentIndexItem()Lcom/mobipocket/common/library/reader/IndexItem;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 314
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    if-nez v0, :cond_0

    move-object v0, v5

    .line 343
    :goto_0
    return-object v0

    .line 322
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->primaryIndexFilter:[I

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pIndexControl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/IndexManager;->primaryIndexFilter:[I

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->findNextNearIndexState(Lcom/mobipocket/common/library/reader/indexes/IndexState;[I)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v5

    .line 326
    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->getEntryText(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const/4 v1, -0x1

    .line 332
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/IndexDescriptor;->isForeignKeyIndex()Z

    move-result v2

    if-nez v2, :cond_2

    .line 334
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pIndexControl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->linkPosition(Lcom/mobipocket/common/library/reader/indexes/IndexState;)I

    move-result v1

    .line 336
    :cond_2
    new-instance v2, Lcom/mobipocket/common/library/reader/IndexItem;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/mobipocket/common/library/reader/IndexItem;-><init>(Ljava/lang/String;IILcom/mobipocket/common/library/reader/IndexDescriptor;)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_0
.end method

.method public isIndexOpened()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveCursor(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    if-nez v0, :cond_0

    move v0, v3

    .line 267
    :goto_0
    return v0

    .line 253
    :cond_0
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    iget v1, v1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    iget v2, v2, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>(II)V

    .line 254
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v1, v0, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;->canonize(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 256
    goto :goto_0

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->primaryIndexFilter:[I

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pIndexControl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/IndexManager;->primaryIndexFilter:[I

    invoke-virtual {v1, v0, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->findNextNearIndexState(Lcom/mobipocket/common/library/reader/indexes/IndexState;[I)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    .line 263
    goto :goto_0

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->set(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V

    .line 267
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveCursor(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    if-nez v0, :cond_0

    move v0, v4

    .line 302
    :goto_0
    return v0

    .line 285
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    iget v1, v1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    iget v2, v2, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>(II)V

    .line 286
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/mobipocket/common/library/reader/indexes/Index;->search(Ljava/lang/String;Lcom/mobipocket/common/library/reader/indexes/IndexState;ZZ)Z

    .line 287
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/Index;->isCurrentStateValid(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v4

    .line 289
    goto :goto_0

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->primaryIndexFilter:[I

    if-eqz v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pIndexControl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/IndexManager;->primaryIndexFilter:[I

    invoke-virtual {v1, v0, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->findNextNearIndexState(Lcom/mobipocket/common/library/reader/indexes/IndexState;[I)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v4

    .line 295
    goto :goto_0

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->set(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 299
    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0
.end method

.method public openIndex(Lcom/mobipocket/common/library/reader/IndexDescriptor;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 71
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->reset()V

    .line 72
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pFileIdentifier:Ljava/lang/String;

    iget-object v1, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pFileIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexType:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget v1, v1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexType:I

    if-eq v0, v1, :cond_2

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/IndexManager;->closeIndex()V

    .line 84
    :cond_1
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    .line 85
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pPdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pFileIdentifier:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mobipocket/common/filesystem/PDBFactory;->getReadPDB(Ljava/lang/String;)Lcom/mobipocket/common/filesystem/ReadPDB;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    .line 86
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    if-nez v0, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/IndexManager;->closeIndex()V

    move v0, v7

    .line 159
    :goto_0
    return v0

    :cond_2
    move v0, v8

    .line 81
    goto :goto_0

    .line 92
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget v0, v0, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pMasterRecIndex:I

    .line 94
    iget v1, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexType:I

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexName:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 96
    :cond_4
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v1

    .line 100
    new-instance v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-interface {v3}, Lcom/mobipocket/common/filesystem/ReadPDB;->getHeader()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;-><init>([B[BZ)V

    .line 103
    iget v1, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_names:I

    if-ltz v1, :cond_8

    .line 106
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    iget v3, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_names:I

    invoke-direct {v0, v1, v3}, Lcom/mobipocket/common/library/reader/indexes/Index;-><init>(Lcom/mobipocket/common/filesystem/ReadPDB;I)V

    .line 108
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    invoke-direct {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    .line 109
    iget v0, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    .line 111
    iget-object v0, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyIndexName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyIndexName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/IndexManager;->closeIndex()V

    move v0, v7

    .line 114
    goto :goto_0

    .line 116
    :cond_6
    iget-object v0, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyIndexName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getNamedKeyId(Ljava/lang/String;)I

    move-result v0

    .line 136
    :cond_7
    :goto_1
    iget v1, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->index_base:I

    add-int/2addr v0, v1

    .line 142
    :cond_8
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/library/reader/indexes/Index;-><init>(Lcom/mobipocket/common/filesystem/ReadPDB;I)V

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pIndexControl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    move v0, v8

    .line 159
    goto :goto_0

    .line 120
    :cond_9
    :try_start_1
    iget-object v0, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getNamedIndexId(Ljava/lang/String;)I

    move-result v0

    .line 121
    iget v3, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pIndexType:I

    if-ne v3, v8, :cond_7

    .line 123
    iget-object v3, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyIndexName:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyItemName:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyIndexName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyItemName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 126
    :cond_a
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/IndexManager;->closeIndex()V

    move v0, v7

    .line 127
    goto/16 :goto_0

    .line 130
    :cond_b
    iget-object v3, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyIndexName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getNamedKeyId(Ljava/lang/String;)I

    move-result v3

    .line 131
    iget-object v4, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyIndexName:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getNamedKeyLinkingColunm(Ljava/lang/String;I)I

    move-result v1

    .line 133
    new-instance v4, Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    iget v6, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->index_base:I

    add-int/2addr v3, v6

    invoke-direct {v4, v5, v3}, Lcom/mobipocket/common/library/reader/indexes/Index;-><init>(Lcom/mobipocket/common/filesystem/ReadPDB;I)V

    .line 134
    new-instance v3, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    invoke-direct {v3, v4}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    .line 135
    iget-object v4, p1, Lcom/mobipocket/common/library/reader/IndexDescriptor;->pKeyItemName:Ljava/lang/String;

    int-to-byte v1, v1

    invoke-virtual {v3, v4, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getKeyFilterValues(Ljava/lang/String;B)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->primaryIndexFilter:[I
    :try_end_1
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/IndexManager;->closeIndex()V

    move v0, v7

    .line 151
    goto/16 :goto_0

    .line 155
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/IndexManager;->closeIndex()V

    move v0, v7

    .line 156
    goto/16 :goto_0
.end method

.method public reInitCursor()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    if-nez v0, :cond_0

    move v0, v3

    .line 235
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->reset()V

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->isCurrentStateValid(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 223
    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->primaryIndexFilter:[I

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pIndexControl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/IndexManager;->primaryIndexFilter:[I

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->findNextNearIndexState(Lcom/mobipocket/common/library/reader/indexes/IndexState;[I)Z
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    .line 229
    goto :goto_0

    .line 232
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method public restoreState(Ljava/io/InputStream;)V
    .locals 3
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mobipocket/common/library/historizer/RestoreStateException;
        }
    .end annotation

    .prologue
    .line 361
    new-instance v1, Lcom/mobipocket/common/library/reader/IndexDescriptor;

    invoke-direct {v1, p1}, Lcom/mobipocket/common/library/reader/IndexDescriptor;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/IndexManager;->openIndex(Lcom/mobipocket/common/library/reader/IndexDescriptor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    new-instance v1, Lcom/mobipocket/common/library/historizer/RestoreStateException;

    sget-object v2, Lcom/mobipocket/common/library/historizer/RestoreStateException;->ID_STATE_NOT_AVAILABLE:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mobipocket/common/library/historizer/RestoreStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 366
    .local v0, dis:Ljava/io/DataInputStream;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    .line 367
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    .line 368
    return-void
.end method

.method public saveState(Ljava/io/OutputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pCurrentIndexDescriptor:Lcom/mobipocket/common/library/reader/IndexDescriptor;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/IndexDescriptor;->saveState(Ljava/io/OutputStream;)V

    .line 353
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 354
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    iget v1, v1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 355
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/IndexManager;->pState:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    iget v1, v1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 357
    return-void
.end method
