.class public Lcom/mobipocket/common/library/reader/TOCManager;
.super Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;
.source "TOCManager.java"

# interfaces
.implements Lcom/mobipocket/common/library/reader/TOC;


# instance fields
.field private currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

.field private currentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

.field private final pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/filesystem/PDBFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/TOCManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    .line 35
    return-void
.end method


# virtual methods
.method public closeTOC()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    .line 134
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-interface {v0}, Lcom/mobipocket/common/filesystem/ReadPDB;->close()V

    .line 138
    :cond_0
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    .line 139
    return-void
.end method

.method public getCurrentBook()Lcom/mobipocket/common/library/reader/BookItem;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    return-object v0
.end method

.method public isTOCOpened()Z
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x1

    .line 120
    .local v0, ret:Z
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    if-nez v1, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :cond_0
    return v0
.end method

.method public openTOC(Lcom/mobipocket/common/library/reader/BookItem;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 47
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->UNKNOWN_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TOCManager;->closeTOC()V

    .line 65
    :cond_1
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    .line 67
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TOCManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mobipocket/common/filesystem/PDBFactory;->getReadPDB(Ljava/lang/String;)Lcom/mobipocket/common/filesystem/ReadPDB;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    .line 68
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    if-nez v0, :cond_3

    .line 70
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->UNKNOWN_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v4

    .line 108
    :goto_0
    return v0

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BookItem;->hasToc()Z

    move-result v0

    if-nez v0, :cond_4

    .line 76
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TOCManager;->closeTOC()V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The header of the book :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not define TOC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 78
    goto :goto_0

    .line 81
    :cond_4
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BookItem;->getTocIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/Index;-><init>(Lcom/mobipocket/common/filesystem/ReadPDB;I)V

    .line 86
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->setIndex(Lcom/mobipocket/common/library/reader/indexes/Index;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v0

    .line 92
    new-instance v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-interface {v2}, Lcom/mobipocket/common/filesystem/ReadPDB;->getHeader()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;-><init>([B[BZ)V

    .line 94
    iget v0, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_names:I

    if-ltz v0, :cond_5

    .line 96
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TOCManager;->currentReadPdb:Lcom/mobipocket/common/filesystem/ReadPDB;

    iget v3, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_names:I

    invoke-direct {v0, v2, v3}, Lcom/mobipocket/common/library/reader/indexes/Index;-><init>(Lcom/mobipocket/common/filesystem/ReadPDB;I)V

    .line 98
    iget v2, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->embed_base:I

    iget v3, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_toc:I

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->index_base:I

    sub-int v1, v3, v1

    invoke-super {p0, v0, v2, v1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->setNamingTable(Lcom/mobipocket/common/library/reader/indexes/Index;II)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move v0, v4

    .line 108
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TOCManager;->closeTOC()V

    .line 104
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->CORRUPTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
