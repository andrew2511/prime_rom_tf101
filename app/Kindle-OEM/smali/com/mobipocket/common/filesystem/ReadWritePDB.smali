.class public Lcom/mobipocket/common/filesystem/ReadWritePDB;
.super Ljava/lang/Object;
.source "ReadWritePDB.java"


# instance fields
.field private final privComparator:Lcom/mobipocket/common/filesystem/RecordComparator;

.field private final privIdToRecord:Ljava/util/Hashtable;

.field private final privIdentifier:Ljava/lang/String;

.field private privModified:Z

.field private privNextIdNumber:I

.field private final privPDBFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

.field private final privPDBName:Ljava/lang/String;

.field private final privRecords:Ljava/util/Vector;

.field private final privType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/common/filesystem/RecordComparator;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadWritePDB.<init>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iput-object p2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdentifier:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privPDBFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    .line 46
    iput-object p3, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privPDBName:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privType:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privComparator:Lcom/mobipocket/common/filesystem/RecordComparator;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    .line 52
    invoke-direct {p0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->reload()V

    .line 53
    return-void
.end method

.method private clearData()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 140
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privNextIdNumber:I

    .line 142
    return-void
.end method

.method private createHeader()[B
    .locals 8

    .prologue
    const/16 v4, 0x20

    const/4 v5, 0x4

    const/4 v7, 0x0

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 305
    invoke-virtual {p0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x50

    new-array v1, v1, [B

    .line 306
    iget-object v2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privPDBName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privPDBName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 308
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privPDBName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 309
    array-length v3, v2

    if-le v3, v4, :cond_2

    move v3, v4

    .line 310
    :goto_0
    invoke-static {v2, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    const/16 v2, 0x24

    .line 313
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 314
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 315
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 316
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 317
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 319
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 320
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 321
    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 322
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 323
    const/16 v2, 0x3c

    invoke-static {v0, v7, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    const-string v0, "MOBI"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 325
    const/16 v2, 0x40

    invoke-static {v0, v7, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    const/16 v0, 0x44

    .line 327
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privNextIdNumber:I

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 328
    add-int/lit8 v0, v2, 0x1

    iget v3, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privNextIdNumber:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 329
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privNextIdNumber:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 330
    iget v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privNextIdNumber:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 331
    const/16 v0, 0x4c

    .line 332
    iget-object v2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 333
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 334
    and-int/lit16 v0, v2, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 336
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 337
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 340
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 341
    iget-object v5, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v7

    .line 342
    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4e

    .line 343
    add-int/lit8 v0, v0, 0x5

    .line 345
    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 346
    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 347
    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    goto :goto_1

    .line 309
    :cond_2
    array-length v3, v2

    goto/16 :goto_0

    .line 350
    :cond_3
    const/16 v0, 0x4e

    .line 351
    array-length v3, v1

    move v4, v3

    move v3, v7

    .line 352
    :goto_2
    if-ge v3, v2, :cond_4

    .line 354
    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v4, 0x18

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 355
    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 356
    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 357
    add-int/lit8 v0, v5, 0x1

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 358
    add-int/lit8 v5, v0, 0x4

    .line 359
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v4

    .line 352
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    move v0, v5

    goto :goto_2

    .line 365
    :cond_4
    return-object v1
.end method

.method private load(Lcom/mobipocket/common/filesystem/ReadPDB;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 61
    iput-boolean v4, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privModified:Z

    .line 63
    :try_start_0
    invoke-interface {p1}, Lcom/mobipocket/common/filesystem/ReadPDB;->getHeader()[B

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/mobipocket/common/filesystem/PDBUtilities;->getPDBName([B)Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privPDBName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobipocket/common/filesystem/PDBUtilities;->getPDBName([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privModified:Z

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/mobipocket/common/filesystem/PDBUtilities;->getType([B)Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privType:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobipocket/common/filesystem/PDBUtilities;->getType([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privModified:Z

    .line 72
    :cond_1
    invoke-static {v0}, Lcom/mobipocket/common/filesystem/PDBUtilities;->getNextRecordID([B)I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privNextIdNumber:I

    .line 73
    invoke-static {v0}, Lcom/mobipocket/common/filesystem/PDBUtilities;->getRecordCount([B)I

    move-result v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nbRecords : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    iget-object v2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->ensureCapacity(I)V

    move v2, v4

    .line 76
    :goto_0
    if-ge v2, v1, :cond_2

    .line 78
    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 79
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 80
    iget-object v4, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/mobipocket/common/filesystem/PDBUtilities;->getID([BI)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 81
    iget-object v4, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/mobipocket/common/filesystem/PDBUtilities;->getID([BI)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v3, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-interface {p1, v2}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->clearData()V

    .line 97
    :cond_2
    return-void
.end method

.method private reload()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, pdb:Lcom/mobipocket/common/filesystem/ReadPDB;
    const/4 v0, 0x0

    .line 110
    .local v0, failed:Z
    :try_start_0
    iget-object v2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privPDBFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    iget-object v3, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdentifier:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/mobipocket/common/filesystem/PDBFactory;->getReadPDB(Ljava/lang/String;)Lcom/mobipocket/common/filesystem/ReadPDB;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 111
    if-nez v1, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 118
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 119
    iput-boolean v4, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privModified:Z

    .line 135
    :goto_1
    return-void

    .line 115
    :catch_0
    move-exception v2

    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->load(Lcom/mobipocket/common/filesystem/ReadPDB;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :goto_2
    if-eqz v0, :cond_2

    .line 131
    iput-boolean v4, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privModified:Z

    .line 134
    :cond_2
    invoke-interface {v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->close()V

    goto :goto_1

    .line 127
    :catch_1
    move-exception v2

    const/4 v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public addRecord([B)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 266
    iput-boolean v5, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privModified:Z

    .line 269
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privComparator:Lcom/mobipocket/common/filesystem/RecordComparator;

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 289
    new-array v1, v5, [I

    .line 290
    aput v0, v1, v4

    .line 291
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privNextIdNumber:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privNextIdNumber:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privNextIdNumber:I

    sub-int/2addr v0, v5

    return v0

    :cond_0
    move v1, v4

    .line 277
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privComparator:Lcom/mobipocket/common/filesystem/RecordComparator;

    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v2, v0, p1}, Lcom/mobipocket/common/filesystem/RecordComparator;->compare([B[B)I

    move-result v0

    if-ge v0, v5, :cond_1

    .line 278
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 280
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 283
    aget v3, v0, v4

    if-lt v3, v1, :cond_2

    .line 284
    aget v3, v0, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v4

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public deleteAll()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privModified:Z

    .line 150
    invoke-direct {p0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->clearData()V

    .line 151
    return-void
.end method

.method public deleteRecordOfID(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 211
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aget v1, v0, v5

    .line 212
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 213
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 214
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 217
    aget v3, v0, v5

    if-le v3, v1, :cond_0

    .line 218
    aget v3, v0, v5

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aput v3, v0, v5

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public getIDOfRecord(I)I
    .locals 4
    .parameter "pIndex"

    .prologue
    .line 191
    iget-object v2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 193
    .local v1, idNumbers:Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 196
    .local v0, id:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p1, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 199
    .end local v0           #id:Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getRecord(I)[B
    .locals 1
    .parameter "pIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getRecordCount()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getRecordOfId(I)[B
    .locals 3
    .parameter "pId"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    iget-object v1, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public modifyRecord([BI)V
    .locals 1
    .parameter "pNewRecord"
    .parameter "pIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privModified:Z

    .line 234
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 235
    return-void
.end method

.method public modifyRecordOfID([BI)V
    .locals 3
    .parameter "pNewRecord"
    .parameter "pId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privModified:Z

    .line 247
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    iget-object v1, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdToRecord:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 248
    return-void
.end method

.method public save()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 374
    iget-boolean v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privModified:Z

    if-eqz v0, :cond_2

    .line 377
    invoke-direct {p0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->createHeader()[B

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privPDBFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    iget-object v2, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privIdentifier:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/mobipocket/common/filesystem/PDBFactory;->getWritePDB(Ljava/lang/String;[B)Lcom/mobipocket/common/filesystem/WritePDB;

    move-result-object v1

    .line 380
    if-nez v1, :cond_0

    move v0, v4

    .line 397
    :goto_0
    return v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    move v3, v4

    .line 386
    :goto_1
    if-ge v3, v2, :cond_1

    .line 388
    iget-object v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privRecords:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/mobipocket/common/filesystem/WritePDB;->addRecord([B)Z

    .line 386
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 391
    :cond_1
    invoke-interface {v1}, Lcom/mobipocket/common/filesystem/WritePDB;->close()V

    .line 392
    iput-boolean v4, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privModified:Z

    .line 397
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touch()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/filesystem/ReadWritePDB;->privModified:Z

    .line 257
    return-void
.end method
