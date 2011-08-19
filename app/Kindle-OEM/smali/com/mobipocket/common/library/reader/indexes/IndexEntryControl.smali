.class public Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;
.super Ljava/lang/Object;
.source "IndexEntryControl.java"


# static fields
.field private static final TEST_COMB:B = -0x56t


# instance fields
.field private allMaskIndex:I

.field private curCodeIndex:I

.field private curNBEntIndex:I

.field private curSubGroupNBBytes:I

.field private curSubGroupStartIndex:I

.field private curTagDefIndex:I

.field private currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

.field private currentIndexRecNumber:I

.field private entryAllMask:[B

.field private eocb:[B

.field iecd:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

.field private mask:[B

.field private nbCodes:[B

.field private nbControlBytes:I

.field private final privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

.field private tag:[B


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->iecd:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    .line 40
    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRecNumber:I

    .line 45
    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    .line 64
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    .line 65
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->init()Z

    .line 67
    return-void
.end method

.method private codeSize_n(I)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 234
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->setPosition(I)V

    .line 235
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readByte()B

    move-result v1

    move v3, v1

    move v1, v0

    move v0, v3

    .line 237
    :goto_0
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_1

    .line 239
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 241
    add-int/lit8 v0, v1, 0x1

    .line 242
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readByte()B

    move-result v1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 246
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 247
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private decode_n()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readStopEncodedInt()I

    move-result v0

    return v0
.end method

.method private find_internal(I[I)I
    .locals 7
    .parameter "minPos"
    .parameter "valArray"

    .prologue
    const/4 v6, -0x1

    .line 886
    if-eqz p2, :cond_0

    array-length v4, p2

    if-nez v4, :cond_1

    :cond_0
    move v4, v6

    .line 906
    :goto_0
    return v4

    .line 891
    :cond_1
    const/4 v0, 0x0

    .line 892
    .local v0, bot:I
    array-length v3, p2

    .line 897
    .local v3, top:I
    :goto_1
    sub-int v4, v3, v0

    const/16 v5, 0x16

    if-ge v4, v5, :cond_4

    .line 899
    :goto_2
    array-length v4, p2

    if-ge v0, v4, :cond_2

    aget v4, p2, v0

    if-ge v4, p1, :cond_2

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 903
    :cond_2
    array-length v4, p2

    if-ne v0, v4, :cond_3

    move v4, v6

    .line 904
    goto :goto_0

    :cond_3
    move v4, v0

    .line 906
    goto :goto_0

    .line 910
    :cond_4
    add-int v4, v3, v0

    shr-int/lit8 v2, v4, 0x1

    .line 913
    .local v2, mid:I
    aget v1, p2, v2

    .line 916
    .local v1, lcode:I
    if-le v1, p1, :cond_5

    .line 917
    move v3, v2

    goto :goto_1

    .line 919
    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private getNamedElement(Ljava/lang/String;I)[I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x206

    const/16 v6, 0x102

    const/16 v5, 0x101

    const/4 v4, 0x0

    .line 801
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 802
    const/4 v0, 0x0

    .line 804
    :try_start_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lcom/mobipocket/common/library/reader/indexes/Index;->searchCombo(Ljava/lang/String;Ljava/util/Vector;Z)Z
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    move-object v3, v0

    .line 805
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 807
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;

    .line 808
    iget-object v0, v0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;->state:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    .line 809
    if-ne p2, v5, :cond_0

    .line 811
    const/16 v4, 0x101

    invoke-virtual {p0, v0, v4}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValueArray(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)[I

    move-result-object v0

    .line 805
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_0

    .line 813
    :cond_0
    if-ne p2, v6, :cond_1

    .line 815
    const/16 v4, 0x102

    invoke-virtual {p0, v0, v4}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValueArray(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)[I

    move-result-object v0

    goto :goto_1

    .line 817
    :cond_1
    if-ne p2, v7, :cond_3

    .line 819
    const/16 v4, 0x206

    invoke-virtual {p0, v0, v4}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValueArray(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)[I
    :try_end_1
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 831
    :goto_2
    return-object v0

    .line 829
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_2

    .line 825
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v0, v3

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_1
.end method

.method private init()Z
    .locals 7

    .prologue
    const/16 v3, 0xc

    const/4 v6, 0x0

    .line 78
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    .line 80
    iget v1, v0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->hsize:I

    .line 81
    invoke-virtual {v0, v6}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->setPosition(I)V

    .line 82
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->getAvailableLength()I

    move-result v2

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    move v0, v6

    .line 127
    :goto_0
    return v0

    .line 85
    :cond_0
    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readVoid(I)V

    .line 88
    :try_start_0
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v1

    const v2, 0x54414758

    if-eq v1, v2, :cond_1

    move v0, v6

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v1

    sub-int/2addr v1, v3

    .line 92
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbControlBytes:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    div-int/lit8 v1, v1, 0x4

    .line 104
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->tag:[B

    .line 105
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbCodes:[B

    .line 106
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->mask:[B

    .line 107
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->eocb:[B

    move v2, v6

    move v3, v6

    .line 109
    :goto_1
    if-ge v2, v1, :cond_3

    .line 111
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->tag:[B

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readByte()B

    move-result v5

    aput-byte v5, v4, v2

    .line 112
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbCodes:[B

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readByte()B

    move-result v5

    aput-byte v5, v4, v2

    .line 113
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->mask:[B

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readByte()B

    move-result v5

    aput-byte v5, v4, v2

    .line 114
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->eocb:[B

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readByte()B

    move-result v5

    aput-byte v5, v4, v2
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_2

    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 109
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    move v0, v6

    goto :goto_0

    .line 122
    :cond_3
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbControlBytes:I

    if-eq v3, v0, :cond_4

    move v0, v6

    .line 124
    goto :goto_0

    .line 127
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initEntry(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V
    .locals 6
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 137
    iget v2, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRecNumber:I

    if-eq v2, v3, :cond_0

    .line 138
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    iget v3, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/indexes/Index;->getIndexRecord(I)Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    move-result-object v2

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    .line 139
    iget v2, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRecNumber:I

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    iget v3, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getEndIdentifierEntryDataIndex(I)I

    move-result v0

    .line 143
    .local v0, curRecIndex:I
    iput v5, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    .line 144
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbControlBytes:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->entryAllMask:[B

    .line 145
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-virtual {v2, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->setPosition(I)V

    .line 146
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbControlBytes:I

    if-ge v1, v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->entryAllMask:[B

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->readByte()B

    move-result v3

    aput-byte v3, v2, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    iput v5, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    .line 151
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbControlBytes:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curNBEntIndex:I

    .line 152
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbControlBytes:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    .line 154
    :goto_1
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbControlBytes:I

    if-ge v2, v3, :cond_4

    .line 156
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->eocb:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v2, v2, v3

    if-eqz v2, :cond_3

    .line 157
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    .line 161
    :cond_2
    :goto_2
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    goto :goto_1

    .line 158
    :cond_3
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->mask:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbBits(B)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->entryAllMask:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->mask:[B

    iget v4, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v3, v3, v4

    invoke-static {v2, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->isMax(BB)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    invoke-direct {p0, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->codeSize_n(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    goto :goto_2

    .line 165
    :cond_4
    const/4 v2, -0x1

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    .line 166
    iput v5, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    .line 168
    return-void
.end method

.method private static isMax(BB)Z
    .locals 1
    .parameter "data"
    .parameter "mask"

    .prologue
    .line 201
    and-int v0, p0, p1

    int-to-byte p0, v0

    .line 202
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nbBits(B)I
    .locals 5
    .parameter "mask"

    .prologue
    const v4, 0x7fffffd5

    const/4 v3, 0x1

    .line 177
    if-nez p0, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 190
    :goto_0
    return v1

    .line 179
    :cond_0
    or-int/lit8 v1, p0, -0x56

    const/16 v2, -0x56

    if-eq v1, v2, :cond_1

    or-int v1, p0, v4

    if-ne v1, v4, :cond_2

    :cond_1
    move v1, v3

    .line 180
    goto :goto_0

    .line 182
    :cond_2
    const/4 v0, 0x0

    .line 183
    .local v0, bits:I
    :goto_1
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_3

    .line 184
    ushr-int/lit8 v1, p0, 0x1

    and-int/lit8 v1, v1, 0x7f

    int-to-byte p0, v1

    goto :goto_1

    .line 185
    :cond_3
    :goto_2
    and-int/lit8 v1, p0, 0x1

    if-ne v1, v3, :cond_4

    .line 187
    ushr-int/lit8 v1, p0, 0x1

    and-int/lit8 v1, v1, 0x7f

    int-to-byte p0, v1

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v0

    .line 190
    goto :goto_0
.end method

.method private static number(BB)I
    .locals 1
    .parameter "data"
    .parameter "mask"

    .prologue
    .line 213
    and-int v0, p0, p1

    int-to-byte p0, v0

    .line 214
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 215
    :cond_0
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    .line 216
    :cond_1
    :goto_1
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    .line 218
    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, 0x7f

    int-to-byte p1, v0

    .line 219
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v0, v0, 0x7f

    int-to-byte p0, v0

    goto :goto_1

    :cond_2
    move v0, p0

    .line 221
    goto :goto_0
.end method

.method private positionAtNextSubGroup()B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 308
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    if-gez v0, :cond_1

    .line 310
    iput v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    .line 311
    iput v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupNBBytes:I

    .line 312
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupStartIndex:I

    .line 330
    :cond_0
    :goto_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupStartIndex:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupNBBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupStartIndex:I

    .line 331
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupStartIndex:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    .line 334
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbControlBytes:I

    if-lt v0, v1, :cond_3

    move v0, v4

    .line 382
    :goto_1
    return v0

    .line 316
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    .line 317
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->eocb:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    .line 319
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    .line 320
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbControlBytes:I

    if-lt v0, v1, :cond_2

    .line 322
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    .line 323
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    move v0, v4

    .line 324
    goto :goto_1

    .line 326
    :cond_2
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    goto :goto_0

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->entryAllMask:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->mask:[B

    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v1, v1, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 342
    iput v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupNBBytes:I

    .line 343
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->tag:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v0, v0, v1

    goto :goto_1

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->mask:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbBits(B)I

    move-result v0

    if-ne v0, v5, :cond_6

    move v0, v3

    .line 351
    :goto_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbCodes:[B

    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v1, v1, v2

    if-ge v0, v1, :cond_5

    .line 352
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    invoke-direct {p0, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->codeSize_n(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 354
    :cond_5
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupStartIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupNBBytes:I

    .line 355
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupStartIndex:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    .line 356
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->tag:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v0, v0, v1

    goto :goto_1

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->entryAllMask:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->mask:[B

    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v1, v1, v2

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->isMax(BB)Z

    move-result v0

    if-nez v0, :cond_8

    .line 363
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->entryAllMask:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->allMaskIndex:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->mask:[B

    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v1, v1, v2

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->number(BB)I

    move-result v0

    move v1, v3

    .line 364
    :goto_3
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbCodes:[B

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v2, v2, v3

    mul-int/2addr v2, v0

    if-ge v1, v2, :cond_7

    .line 365
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    invoke-direct {p0, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->codeSize_n(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 367
    :cond_7
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupStartIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupNBBytes:I

    .line 368
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupStartIndex:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    .line 369
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->tag:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v0, v0, v1

    goto/16 :goto_1

    .line 374
    :cond_8
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curNBEntIndex:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->setPosition(I)V

    .line 375
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->decode_n()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupNBBytes:I

    .line 376
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curNBEntIndex:I

    .line 377
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupNBBytes:I

    if-nez v0, :cond_9

    move v0, v4

    .line 379
    goto/16 :goto_1

    .line 382
    :cond_9
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->tag:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v0, v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public findNextNearIndexState(Lcom/mobipocket/common/library/reader/indexes/IndexState;[I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 846
    const/4 v0, 0x0

    .line 848
    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return v0

    .line 855
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;->makeXlink(Lcom/mobipocket/common/library/reader/indexes/IndexState;)I

    move-result v1

    .line 856
    if-eq v1, v2, :cond_3

    .line 858
    invoke-direct {p0, v1, p2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->find_internal(I[I)I

    move-result v1

    .line 861
    :goto_1
    if-eq v1, v2, :cond_0

    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 863
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/indexes/Index;->followXlink(I)Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v2

    .line 864
    if-eqz v2, :cond_2

    .line 866
    iget v0, v2, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    iget v1, v2, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->set(II)V

    .line 867
    const/4 v0, 0x1

    goto :goto_0

    .line 871
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v1, p2, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into indexState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method followLink(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->initEntry(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V

    .line 427
    invoke-virtual {p0, p2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(B)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 443
    :goto_0
    return v0

    .line 431
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupNBBytes:I

    if-lez v0, :cond_1

    .line 433
    invoke-virtual {p0, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getcurrentNumbers(Z)[I

    move-result-object v0

    aget v0, v0, v2

    .line 435
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    iget v1, v1, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->total_nb_ent:I

    if-ge v0, v1, :cond_1

    .line 438
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->reset()V

    .line 439
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v1, p1, v0}, Lcom/mobipocket/common/library/reader/indexes/Index;->canonize(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)Z

    move v0, v3

    .line 440
    goto :goto_0

    :cond_1
    move v0, v2

    .line 443
    goto :goto_0
.end method

.method public getEntryScope(I)[I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 493
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 494
    aput v8, v0, v8

    .line 495
    aput v7, v0, v6

    .line 496
    aput v7, v0, v9

    .line 497
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;->followXlink(I)Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v1

    .line 498
    if-eqz v1, :cond_2

    .line 500
    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->initEntry(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V

    .line 505
    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    move v1, v7

    move v2, v7

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtNextSubGroup()B

    move-result v3

    .line 513
    if-ne v3, v6, :cond_4

    .line 516
    invoke-virtual {p0, v6}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getcurrentNumbers(Z)[I

    move-result-object v4

    .line 517
    if-eqz v4, :cond_3

    array-length v5, v4

    if-ne v5, v6, :cond_3

    .line 519
    aget v2, v4, v8

    .line 555
    :cond_1
    :goto_0
    if-eq v2, v7, :cond_6

    if-eq v1, v7, :cond_6

    .line 557
    aput v6, v0, v8

    .line 558
    aput v2, v0, v6

    .line 559
    aput v1, v0, v9

    .line 565
    :cond_2
    :goto_1
    return-object v0

    .line 523
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only one value expected for tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 526
    :cond_4
    if-ne v3, v9, :cond_1

    .line 528
    invoke-virtual {p0, v6}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getcurrentNumbers(Z)[I

    move-result-object v4

    .line 529
    if-eqz v4, :cond_5

    array-length v5, v4

    if-ne v5, v6, :cond_5

    .line 531
    aget v1, v4, v8

    goto :goto_0

    .line 535
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only one value expected for tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 562
    :cond_6
    if-ne v3, v7, :cond_0

    goto :goto_1
.end method

.method public getKeyFilterValues(Ljava/lang/String;B)[I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 772
    const/4 v0, 0x0

    .line 773
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 775
    :try_start_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lcom/mobipocket/common/library/reader/indexes/Index;->searchCombo(Ljava/lang/String;Ljava/util/Vector;Z)Z
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v2, v4

    move-object v3, v0

    .line 779
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 781
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;

    .line 782
    iget-object v0, v0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;->state:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    .line 784
    :try_start_1
    invoke-virtual {p0, v0, p2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValueArray(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)[I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 779
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_1

    .line 777
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when retrieveing the fileter values in foreign key table - Can\'t find the key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 786
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when retrieveing the fileter values in foreign key table - can\'t get the filter column:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v0, v3

    goto :goto_2

    .line 789
    :cond_0
    return-object v3
.end method

.method public getNamedIndexId(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 706
    const/4 v0, -0x1

    .line 707
    const/16 v1, 0x101

    invoke-direct {p0, p1, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getNamedElement(Ljava/lang/String;I)[I

    move-result-object v1

    .line 708
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 709
    const/4 v0, 0x0

    aget v0, v1, v0

    .line 710
    :cond_0
    return v0
.end method

.method public getNamedKeyId(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 722
    const/4 v0, -0x1

    .line 723
    const/16 v1, 0x102

    invoke-direct {p0, p1, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getNamedElement(Ljava/lang/String;I)[I

    move-result-object v1

    .line 724
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 725
    const/4 v0, 0x0

    aget v0, v1, v0

    .line 726
    :cond_0
    return v0
.end method

.method public getNamedKeyLinkingColunm(Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 738
    const/4 v0, -0x1

    .line 741
    const/16 v1, 0x206

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getNamedElement(Ljava/lang/String;I)[I

    move-result-object v1

    .line 744
    :cond_0
    const/4 v2, 0x0

    aget v2, v1, v2

    if-ne v2, p2, :cond_1

    .line 746
    const/4 v2, 0x1

    aget v0, v1, v2

    .line 755
    :goto_0
    return v0

    .line 749
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getcurrentNumbers(Z)[I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 751
    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method getTaggedIntegerValue(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 578
    const/4 v0, -0x1

    .line 579
    int-to-byte v1, p2

    invoke-virtual {p0, p1, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getcurrentNumbers(Z)[I

    move-result-object v1

    .line 582
    if-eqz v1, :cond_0

    .line 584
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 586
    aget v0, v1, v4

    .line 594
    :cond_0
    :goto_0
    return v0

    .line 590
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only one value expected but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " values for tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method getTaggedIntegerValueArray(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)[I
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 631
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 632
    int-to-byte v1, p2

    invoke-virtual {p0, p1, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 637
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getcurrentNumbers(Z)[I

    move-result-object v1

    .line 639
    if-nez v1, :cond_3

    .line 641
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 643
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [I

    move v2, v5

    .line 644
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 645
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 644
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 658
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v6

    .line 649
    goto :goto_1

    :cond_3
    move v2, v5

    .line 653
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 654
    new-instance v3, Ljava/lang/Integer;

    aget v4, v1, v2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v6

    .line 658
    goto :goto_1
.end method

.method getTaggedStringValue(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)Ljava/lang/String;
    .locals 3
    .parameter "state"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 607
    const/4 v1, 0x0

    .line 608
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValue(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)I

    move-result v0

    .line 609
    .local v0, indexOfStringPooled:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 611
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v2, v0}, Lcom/mobipocket/common/library/reader/indexes/Index;->getPooledString(I)Ljava/lang/String;

    move-result-object v1

    .line 612
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 614
    invoke-static {v1}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    :cond_0
    return-object v1
.end method

.method getTaggedStringValueArray(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)[Ljava/lang/String;
    .locals 8
    .parameter "state"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 671
    const/4 v2, 0x0

    .line 672
    .local v2, ret:[Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValueArray(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)[I

    move-result-object v0

    .line 673
    .local v0, indexOfStringPooled:[I
    if-eqz v0, :cond_2

    .line 675
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 676
    .local v4, v:Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, pos:I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 678
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->privIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    aget v7, v0, v1

    invoke-virtual {v6, v7}, Lcom/mobipocket/common/library/reader/indexes/Index;->getPooledString(I)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 681
    invoke-static {v3}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 682
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 676
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 687
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 688
    const/4 v5, 0x0

    .end local p0
    .local v5, y:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 690
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v5

    .line 688
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 694
    .end local v1           #pos:I
    .end local v4           #v:Ljava/util/Vector;
    .end local v5           #y:I
    :cond_2
    return-object v2
.end method

.method getcurrentNumbers(Z)[I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->nbCodes:[B

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curTagDefIndex:I

    aget-byte v0, v0, v1

    .line 394
    new-array v1, v0, [I

    .line 395
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupNBBytes:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curSubGroupStartIndex:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 396
    if-lez v2, :cond_1

    .line 399
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->setPosition(I)V

    .line 400
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 402
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->decode_n()I

    move-result v3

    aput v3, v1, v2

    .line 404
    if-eqz p1, :cond_0

    .line 405
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->currentIndexRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getPosition()I

    move-result v3

    iput v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->curCodeIndex:I

    .line 400
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, 0x0

    .line 413
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public linkPosition(Lcom/mobipocket/common/library/reader/indexes/IndexState;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 457
    :try_start_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v0

    .line 458
    const/16 v1, 0x19

    invoke-virtual {p0, v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->followLink(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    .line 459
    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->followLink(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    .line 460
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->initEntry(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V

    .line 461
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(B)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 475
    :goto_0
    return v0

    .line 466
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getcurrentNumbers(Z)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    .line 475
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method positionAtTaggedSubGroup(B)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtNextSubGroup()B

    move-result v0

    .line 295
    if-eq v0, p1, :cond_1

    if-ne v0, v1, :cond_0

    .line 296
    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method positionAtTaggedSubGroup(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 270
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->initEntry(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V

    .line 271
    invoke-virtual {p0, p2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(B)Z
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 278
    :goto_0
    return v0

    .line 274
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 278
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
