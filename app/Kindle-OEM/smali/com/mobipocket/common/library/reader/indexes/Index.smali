.class public Lcom/mobipocket/common/library/reader/indexes/Index;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/indexes/Index$1;,
        Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;
    }
.end annotation


# static fields
.field private static final IDXB_INFLECT_RULE_LIMIT:I = 0x2

.field static final IDX_INFLECT:I = 0x2

.field static final IDX_NORMAL:I = 0x0

.field static final IDX_STRING:I = 0x3

.field private static final IDX_STR_MAX_SIZE:I = 0x100

.field private static final IX_NMAX:I = 0x13

.field private static final IX_ZERO:I = 0xa

.field private static final IX_iADD:I = 0x2

.field private static final IX_iDEL:I = 0x3

.field private static final IX_pADD:I = 0x1

.field private static final IX_pDEL:I = 0x4

.field private static final PREF_MAXLEN:I = 0x1e


# instance fields
.field private final currentEbook:Lcom/mobipocket/common/filesystem/ReadPDB;

.field private currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

.field private currentStateRecord:I

.field private inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

.field final master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

.field private final masterRecIndex:I

.field public name:Ljava/lang/String;

.field private pStrRecord:[B

.field private pStrRecordIndex:I

.field private pStrRecordLength:I


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/filesystem/ReadPDB;I)V
    .locals 4
    .parameter "ebook"
    .parameter "recIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordIndex:I

    .line 62
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentEbook:Lcom/mobipocket/common/filesystem/ReadPDB;

    .line 64
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentEbook:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-interface {v1, p2}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v0

    .line 65
    .local v0, masterRec:[B
    iput p2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->masterRecIndex:I

    .line 66
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-direct {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;-><init>([B)V

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    .line 67
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->init()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/IndexException;

    const-string v2, "error init master"

    invoke-direct {v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentStateRecord:I

    .line 73
    iput-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    .line 74
    iput-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    .line 75
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private StoreAllEqual(Lcom/mobipocket/common/library/reader/indexes/IndexState;ILjava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 409
    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    .line 411
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v1

    .line 412
    :goto_0
    if-eqz v0, :cond_0

    .line 414
    const/4 v4, -0x1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/indexes/Index;->storeBaseForm(Lcom/mobipocket/common/library/reader/indexes/IndexState;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;IIZ)Z

    .line 417
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/mobipocket/common/library/reader/indexes/Index;->next_prev_equal_entry(Lcom/mobipocket/common/library/reader/indexes/IndexState;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    move v0, v6

    .line 426
    goto :goto_0

    .line 424
    :catch_1
    move-exception v0

    move v0, v6

    .line 426
    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method private applyInflexionV2(Z[C[CZ)[C
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 902
    const/4 v2, 0x1

    .line 908
    move-object/from16 v0, p2

    array-length v0, v0

    move v3, v0

    .line 909
    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    .line 912
    const/4 v5, 0x0

    .line 913
    const/4 v6, 0x0

    .line 915
    const/4 v7, 0x0

    .line 916
    const/4 v8, 0x0

    move/from16 v16, v7

    move v7, v6

    move v6, v5

    move/from16 v5, v16

    :goto_0
    if-ge v8, v4, :cond_20

    .line 917
    aget-char v9, p3, v8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    aget-char v9, p3, v8

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    aget-char v9, p3, v8

    const/16 v10, 0xa

    if-lt v9, v10, :cond_2

    aget-char v9, p3, v8

    const/16 v10, 0x13

    if-gt v9, v10, :cond_2

    :cond_0
    move v5, v8

    .line 931
    :goto_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 932
    const/4 v9, 0x0

    .line 933
    const/4 v10, 0x0

    move v11, v5

    move/from16 v16, v2

    move v2, v10

    move/from16 v10, v16

    .line 934
    :goto_2
    if-ge v11, v4, :cond_f

    .line 935
    aget-char v12, p3, v11

    const/4 v13, 0x3

    if-ne v12, v13, :cond_9

    .line 936
    if-nez p1, :cond_8

    const/4 v2, 0x1

    .line 934
    :cond_1
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 921
    :cond_2
    aget-char v9, p3, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    move/from16 v5, p1

    .line 916
    :cond_3
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 923
    :cond_4
    aget-char v9, p3, v8

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 924
    if-nez p1, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 925
    :cond_6
    if-eqz v5, :cond_7

    .line 926
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 927
    :cond_7
    if-nez v5, :cond_3

    .line 928
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 936
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 937
    :cond_9
    aget-char v12, p3, v11

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a

    move/from16 v2, p1

    .line 938
    goto :goto_3

    .line 939
    :cond_a
    aget-char v12, p3, v11

    const/16 v13, 0xa

    if-lt v12, v13, :cond_b

    aget-char v12, p3, v11

    const/16 v13, 0x13

    if-gt v12, v13, :cond_b

    .line 941
    aget-char v12, p3, v11

    const/16 v13, 0xa

    sub-int/2addr v12, v13

    .line 942
    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_1

    if-le v3, v9, :cond_1

    .line 943
    sub-int v14, v3, v9

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    aget-char v14, p2, v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 944
    add-int/lit8 v9, v9, 0x1

    .line 942
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 949
    :cond_b
    if-eqz v2, :cond_c

    .line 950
    aget-char v12, p3, v11

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 954
    :cond_c
    if-eqz p4, :cond_e

    .line 956
    if-ge v9, v3, :cond_d

    sub-int v12, v3, v9

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aget-char v12, p2, v12

    aget-char v13, p3, v11

    if-eq v12, v13, :cond_e

    .line 957
    :cond_d
    const/4 v10, 0x0

    .line 960
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 966
    :cond_f
    if-nez v10, :cond_10

    .line 967
    const/4 v2, 0x0

    .line 1013
    :goto_6
    return-object v2

    :cond_10
    move v2, v9

    .line 971
    :goto_7
    add-int v4, v2, v7

    if-ge v4, v3, :cond_11

    .line 972
    sub-int v4, v3, v2

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    aget-char v4, p2, v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 971
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 976
    :cond_11
    const/4 v2, 0x0

    .line 977
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v5, :cond_15

    if-nez v2, :cond_15

    .line 978
    aget-char v9, p3, v4

    const/4 v11, 0x1

    if-ne v9, v11, :cond_13

    move/from16 v2, p1

    .line 977
    :cond_12
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 980
    :cond_13
    aget-char v9, p3, v4

    const/4 v11, 0x4

    if-ne v9, v11, :cond_12

    .line 981
    if-nez p1, :cond_14

    const/4 v2, 0x1

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    .line 983
    :cond_15
    if-eqz v2, :cond_16

    .line 984
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v6, :cond_16

    .line 985
    add-int v9, v6, v4

    sub-int/2addr v9, v2

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    aget-char v9, p3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 984
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 988
    :cond_16
    if-eqz p4, :cond_1f

    .line 990
    const/4 v2, 0x0

    .line 991
    const/4 v4, 0x0

    :goto_b
    if-ge v4, v5, :cond_1a

    if-nez v2, :cond_1a

    .line 992
    aget-char v6, p3, v4

    const/4 v9, 0x1

    if-ne v6, v9, :cond_19

    .line 993
    if-nez p1, :cond_18

    const/4 v2, 0x1

    .line 991
    :cond_17
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 993
    :cond_18
    const/4 v2, 0x0

    goto :goto_c

    .line 994
    :cond_19
    aget-char v6, p3, v4

    const/4 v9, 0x4

    if-ne v6, v9, :cond_17

    move/from16 v2, p1

    .line 995
    goto :goto_c

    .line 997
    :cond_1a
    if-eqz v2, :cond_1d

    .line 998
    const/4 v2, 0x0

    move v5, v2

    move v2, v10

    :goto_d
    if-ge v5, v7, :cond_1e

    .line 999
    if-ge v5, v3, :cond_1b

    aget-char v6, p2, v5

    add-int v9, v4, v5

    aget-char v9, p3, v9

    if-eq v6, v9, :cond_1c

    .line 1000
    :cond_1b
    const/4 v2, 0x0

    .line 998
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1d
    move v2, v10

    .line 1003
    :cond_1e
    if-nez v2, :cond_1f

    .line 1004
    const/4 v2, 0x0

    goto :goto_6

    .line 1009
    :cond_1f
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1010
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->reverseCharArray([C)V

    goto/16 :goto_6

    :cond_20
    move v5, v4

    goto/16 :goto_1
.end method

.method private disinflectV2([C[C)[C
    .locals 2
    .parameter "B"
    .parameter "rule"

    .prologue
    .line 1023
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->applyInflexionV2(Z[C[CZ)[C

    move-result-object v0

    return-object v0
.end method

.method private getInflexionString(II)[C
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1252
    new-array v0, p2, [B

    .line 1253
    ushr-int/lit8 v1, p1, 0x10

    .line 1254
    const v2, 0xffff

    and-int/2addr v2, p1

    .line 1255
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->getNumberStringRecord()I

    move-result v3

    if-lt v1, v3, :cond_0

    move-object v0, v7

    .line 1278
    :goto_0
    return-object v0

    .line 1259
    :cond_0
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->getNBEntries()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->masterRecIndex:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1260
    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordIndex:I

    if-eq v1, v3, :cond_1

    .line 1262
    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 1263
    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordIndex:I

    .line 1264
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentEbook:Lcom/mobipocket/common/filesystem/ReadPDB;

    iget v4, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordIndex:I

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecord:[B

    invoke-interface {v1, v4, v5, v3}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I[B[I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecord:[B

    .line 1265
    aget v1, v3, v6

    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordLength:I

    .line 1267
    :cond_1
    add-int v1, v2, p2

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordLength:I

    if-le v1, v3, :cond_2

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bounds extend past end of record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v0, v7

    .line 1270
    goto :goto_0

    :cond_2
    move v1, v6

    .line 1272
    :goto_1
    if-ge v1, p2, :cond_3

    .line 1274
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecord:[B

    add-int v4, v2, v1

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    .line 1272
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1277
    :cond_3
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    iget v1, v1, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->encoding:I

    invoke-static {v0, v6, p2, v1}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromEncoding([BIII)Ljava/lang/String;

    move-result-object v0

    .line 1278
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method private inflVersion()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 434
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    if-nez v0, :cond_0

    move v0, v5

    .line 451
    :goto_0
    return v0

    .line 438
    :cond_0
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    .line 439
    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    .line 440
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    move-result v1

    .line 441
    new-instance v2, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v2}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    move-result v2

    .line 442
    new-instance v3, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v3}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    move-result v0

    or-int/2addr v0, v2

    .line 443
    if-eqz v0, :cond_1

    .line 445
    const/4 v0, 0x1

    goto :goto_0

    .line 447
    :cond_1
    if-eqz v1, :cond_2

    .line 449
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v5

    .line 451
    goto :goto_0
.end method

.method private inflectV2([C[C)[C
    .locals 2
    .parameter "A"
    .parameter "rule"

    .prologue
    .line 1018
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->applyInflexionV2(Z[C[CZ)[C

    move-result-object v0

    return-object v0
.end method

.method private final isInflRuleCtrlChar(C)Z
    .locals 2
    .parameter "a"

    .prologue
    const/4 v1, 0x1

    .line 644
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    const/16 v0, 0x13

    if-gt p1, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private next_prev_equal_entry(Lcom/mobipocket/common/library/reader/indexes/IndexState;Z)Z
    .locals 6
    .parameter "state"
    .parameter "next"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1230
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;->setNewState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V

    .line 1231
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    iget v2, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v1, v2, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getEntryText(ILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1232
    .local v0, toBeCompared:[C
    if-eqz p2, :cond_2

    .line 1234
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;->setNextState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 1246
    :goto_0
    return v1

    .line 1237
    :cond_0
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;->setNewState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V

    .line 1238
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    iget v2, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->compareWithEntry([CILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    .line 1242
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;->setPreviousState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v4

    .line 1243
    goto :goto_0

    .line 1245
    :cond_3
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;->setNewState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V

    .line 1246
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    iget v2, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->compareWithEntry([CILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)I

    move-result v1

    if-nez v1, :cond_4

    move v1, v5

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_0
.end method

.method private reverseCharArray([C)V
    .locals 5
    .parameter "buf"

    .prologue
    const/4 v4, 0x1

    .line 890
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 893
    array-length v2, p1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    aget-char v1, p1, v2

    .line 894
    .local v1, x:C
    array-length v2, p1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    aget-char v3, p1, v0

    aput-char v3, p1, v2

    .line 895
    aput-char v1, p1, v0

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 897
    .end local v1           #x:C
    :cond_0
    return-void
.end method

.method private reverseCopy([CI[CII)V
    .locals 3
    .parameter "src"
    .parameter "srcPos"
    .parameter "dest"
    .parameter "destPos"
    .parameter "len"

    .prologue
    .line 611
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 612
    add-int v1, p4, p5

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-char v2, p1, v0

    aput-char v2, p3, v1

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_0
    return-void
.end method

.method private search([CLcom/mobipocket/common/library/reader/indexes/IndexState;ZZ)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v0, p1, v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->find([CLcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)I

    move-result v0

    .line 288
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    iget v1, v1, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->nb_ent:I

    if-lt v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    iget v0, v0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->nb_ent:I

    sub-int/2addr v0, v5

    .line 291
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 292
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/Index;->setCurrentChildRecord(I)V

    .line 293
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v1, p1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->find([CLcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)I

    move-result v1

    .line 294
    invoke-virtual {p2, v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->set(II)V

    .line 295
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    iget v0, v0, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->nb_ent:I

    if-lt v1, v0, :cond_2

    move v0, v4

    .line 319
    :cond_1
    return v0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->compareWithEntry([CILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    move v0, v5

    .line 304
    :goto_0
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 306
    invoke-virtual {p2}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v1

    move v2, v4

    .line 307
    :cond_3
    :goto_1
    if-nez v2, :cond_1

    .line 309
    if-nez p4, :cond_5

    move v3, v5

    :goto_2
    :try_start_1
    invoke-direct {p0, v1, v3}, Lcom/mobipocket/common/library/reader/indexes/Index;->next_prev_equal_entry(Lcom/mobipocket/common/library/reader/indexes/IndexState;Z)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_6

    move v2, v5

    .line 312
    :goto_3
    if-nez v2, :cond_3

    .line 315
    invoke-virtual {p2, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->set(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V

    goto :goto_1

    :cond_4
    move v0, v4

    .line 299
    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexException;

    const-string v1, "An error occur during the search"

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v3, v4

    .line 309
    goto :goto_2

    :cond_6
    move v2, v4

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method private searchInflectedV1(Ljava/lang/String;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;)Z
    .locals 21
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 463
    const/4 v5, 0x0

    .line 464
    const/4 v6, 0x0

    .line 466
    new-instance v12, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v12}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    .line 470
    const/4 v7, 0x0

    new-array v7, v7, [I

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    move-object v8, v0

    if-nez v8, :cond_0

    .line 474
    const/4 v5, 0x0

    .line 590
    :goto_0
    return v5

    .line 476
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    move-object v8, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->significativeLength([C)I

    move-result v8

    .line 477
    const/4 v9, 0x2

    if-gt v8, v9, :cond_1

    .line 480
    const/4 v5, 0x0

    goto :goto_0

    .line 482
    :cond_1
    const/16 v9, 0x100

    if-le v8, v9, :cond_e

    .line 483
    const/16 v8, 0x100

    move v13, v8

    .line 486
    :goto_1
    new-instance v14, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    move-object v8, v0

    invoke-direct {v14, v8}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    .line 487
    new-instance v15, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    move-object v8, v0

    invoke-direct {v15, v8}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    .line 488
    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    .line 490
    const/4 v8, 0x2

    sub-int v8, v13, v8

    move/from16 v16, v8

    move-object/from16 v20, v7

    move v7, v5

    move-object/from16 v5, v20

    .line 491
    :goto_2
    if-nez v6, :cond_9

    .line 496
    move/from16 v0, v16

    new-array v0, v0, [C

    move-object v6, v0

    .line 497
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    sub-int v9, v13, v16

    const/4 v10, 0x0

    move-object v0, v8

    move v1, v9

    move-object v2, v6

    move v3, v10

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v8, v6, v12, v9, v10}, Lcom/mobipocket/common/library/reader/indexes/Index;->search([CLcom/mobipocket/common/library/reader/indexes/IndexState;ZZ)Z
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 507
    :goto_3
    if-eqz v6, :cond_6

    .line 509
    invoke-virtual {v12}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v6

    const/16 v8, 0x18

    invoke-virtual {v15, v6, v8}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    .line 511
    const/4 v6, 0x7

    .line 512
    const/4 v8, 0x1

    move/from16 v17, v8

    move v9, v6

    move v6, v7

    .line 513
    :goto_4
    if-eqz v17, :cond_7

    .line 515
    invoke-virtual {v12}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v7

    invoke-virtual {v14, v7, v9}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    .line 516
    :goto_5
    if-nez v7, :cond_d

    .line 518
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getcurrentNumbers(Z)[I

    move-result-object v5

    .line 519
    if-nez v5, :cond_d

    .line 521
    const/4 v7, 0x1

    move/from16 v18, v7

    move v7, v6

    .line 524
    :goto_6
    if-nez v18, :cond_4

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    move-object v6, v0

    const/4 v8, 0x1

    aget v8, v5, v8

    const/4 v10, 0x0

    aget v5, v5, v10

    invoke-direct {v6, v8, v5}, Lcom/mobipocket/common/library/reader/indexes/Index;->getInflexionString(II)[C

    move-result-object v5

    .line 533
    if-eqz v5, :cond_c

    .line 536
    sub-int v6, v13, v16

    array-length v8, v5

    add-int/2addr v6, v8

    new-array v8, v6, [C

    .line 537
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    sub-int v19, v13, v16

    move-object v0, v6

    move v1, v10

    move-object v2, v8

    move v3, v11

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    const/4 v6, 0x0

    sub-int v10, v13, v16

    array-length v11, v5

    invoke-static {v5, v6, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    new-instance v6, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v6}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    .line 540
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    .line 543
    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move v3, v8

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/indexes/Index;->search(Ljava/lang/String;Lcom/mobipocket/common/library/reader/indexes/IndexState;ZZ)Z

    move-result v5

    move/from16 v19, v7

    .line 549
    :goto_7
    if-eqz v5, :cond_3

    .line 551
    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/mobipocket/common/library/reader/indexes/Index;->storeBaseForm(Lcom/mobipocket/common/library/reader/indexes/IndexState;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;IIZ)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 552
    const/4 v5, 0x1

    .line 557
    :goto_8
    const/4 v7, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/Index;->next_prev_equal_entry(Lcom/mobipocket/common/library/reader/indexes/IndexState;Z)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    move/from16 v19, v5

    move v5, v7

    .line 561
    goto :goto_7

    .line 503
    :catch_0
    move-exception v6

    const/4 v6, 0x0

    goto/16 :goto_3

    .line 515
    :cond_2
    const/4 v7, 0x0

    goto :goto_5

    .line 560
    :catch_1
    move-exception v7

    const/4 v7, 0x0

    move/from16 v19, v5

    move v5, v7

    .line 561
    goto :goto_7

    :cond_3
    move/from16 v5, v19

    .line 564
    :goto_9
    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getcurrentNumbers(Z)[I

    move-result-object v6

    .line 565
    if-nez v6, :cond_a

    .line 567
    const/4 v7, 0x1

    :goto_a
    move/from16 v18, v7

    move v7, v5

    move-object v5, v6

    .line 569
    goto/16 :goto_6

    .line 571
    :cond_4
    const/4 v6, 0x7

    if-ne v9, v6, :cond_5

    .line 573
    const/16 v6, 0xb

    move v9, v6

    move v6, v7

    goto/16 :goto_4

    .line 577
    :cond_5
    const/4 v6, 0x0

    move/from16 v17, v6

    move v6, v7

    goto/16 :goto_4

    :cond_6
    move v6, v7

    .line 587
    :cond_7
    if-nez v16, :cond_8

    const/4 v7, 0x1

    .line 588
    :goto_b
    add-int/lit8 v8, v16, -0x1

    move/from16 v16, v8

    move/from16 v20, v7

    move v7, v6

    move/from16 v6, v20

    .line 589
    goto/16 :goto_2

    .line 587
    :cond_8
    const/4 v7, 0x0

    goto :goto_b

    :cond_9
    move v5, v7

    .line 590
    goto/16 :goto_0

    :cond_a
    move/from16 v7, v18

    goto :goto_a

    :cond_b
    move/from16 v5, v19

    goto :goto_8

    :cond_c
    move v5, v7

    goto :goto_9

    :cond_d
    move/from16 v18, v7

    move v7, v6

    goto/16 :goto_6

    :cond_e
    move v13, v8

    goto/16 :goto_1
.end method

.method private searchInflectedV2(Ljava/lang/String;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1166
    new-instance v3, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v3}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    .line 1189
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    if-nez v0, :cond_0

    move v0, v4

    .line 1217
    :goto_0
    return v0

    .line 1195
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1196
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->significativeLength([C)I

    move-result v0

    .line 1199
    new-instance v6, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-direct {v6, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    .line 1203
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    iget-boolean v1, v1, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_collating:Z

    if-eqz v1, :cond_1

    .line 1204
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const v1, 0xfde9

    invoke-static {v0, v1}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringToEncoding(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/util/Arrays;->byteToChar([B)[C

    move-result-object v0

    move-object v2, v0

    :goto_1
    move v7, v4

    move v1, v4

    .line 1212
    :goto_2
    const/16 v0, 0x17

    if-ge v1, v0, :cond_2

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    .line 1213
    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/indexes/Index;->tryInflectionV2Rule(I[CLcom/mobipocket/common/library/reader/indexes/IndexState;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1214
    const/4 v0, 0x1

    .line 1212
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v7, v0

    goto :goto_2

    .line 1208
    :cond_1
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4e4

    invoke-static {v0, v1}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringToEncoding(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/util/Arrays;->byteToChar([B)[C

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_2
    move v0, v7

    .line 1217
    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_3
.end method

.method private setCurrentChildRecord(I)V
    .locals 4
    .parameter "recIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    .line 122
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentStateRecord:I

    if-eq p1, v1, :cond_1

    .line 124
    iput p1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentStateRecord:I

    .line 125
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentEbook:Lcom/mobipocket/common/filesystem/ReadPDB;

    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->masterRecIndex:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentStateRecord:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v0

    .line 126
    .local v0, currentRecord:[B
    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-direct {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;-><init>([B)V

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    .line 128
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->init()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/IndexException;

    const-string v2, "index init exception"

    invoke-direct {v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/IndexException;

    const-string v2, "bad record index"

    invoke-direct {v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    .end local v0           #currentRecord:[B
    :cond_1
    return-void
.end method

.method private setNewState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V
    .locals 2
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    .line 111
    iget v0, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/Index;->setCurrentChildRecord(I)V

    .line 112
    iget v0, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getNBEntries()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 114
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexException;

    const-string v1, "bad entry requested in the record index"

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    return-void
.end method

.method private setupInflectionV2Prefix(Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;I[CI[CI)V
    .locals 9
    .parameter "result"
    .parameter "n"
    .parameter "prefix"
    .parameter "pref_maxlen"
    .parameter "str"
    .parameter "len"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 618
    const/4 v8, 0x0

    .line 619
    .local v8, skip:Z
    const/4 v7, 0x2

    .line 620
    .local v7, preflen:I
    const/4 v6, 0x2

    .line 622
    .local v6, minplen:I
    add-int/lit8 v0, p2, 0xa

    int-to-char v0, v0

    aput-char v0, p3, v2

    .line 623
    const/4 v0, 0x1

    aput-char v4, p3, v0

    .line 624
    if-le p6, p2, :cond_1

    .line 625
    sub-int v0, p6, p2

    sub-int v1, p4, v4

    if-ge v0, v1, :cond_0

    .line 626
    add-int/lit8 v0, p6, 0x2

    sub-int v7, v0, p2

    .line 631
    :goto_0
    sub-int v5, v7, v4

    move-object v0, p0

    move-object v1, p5

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/indexes/Index;->reverseCopy([CI[CII)V

    .line 637
    :goto_1
    iput-boolean v8, p1, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->skip:Z

    .line 638
    iput v7, p1, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 639
    iput v6, p1, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    .line 640
    return-void

    .line 629
    :cond_0
    move v7, p4

    goto :goto_0

    .line 634
    :cond_1
    const/4 v8, 0x1

    goto :goto_1
.end method

.method private storeBaseForm(Lcom/mobipocket/common/library/reader/indexes/IndexState;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;)Z
    .locals 7
    .parameter "state"
    .parameter "statesFound"
    .parameter "entryControl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 1124
    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/indexes/Index;->storeBaseForm(Lcom/mobipocket/common/library/reader/indexes/IndexState;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;IIZ)Z

    move-result v0

    return v0
.end method

.method private storeBaseForm(Lcom/mobipocket/common/library/reader/indexes/IndexState;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;IIZ)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1130
    .line 1131
    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    .line 1133
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v0

    .line 1135
    const/16 v1, 0x19

    invoke-virtual {p3, v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->followLink(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    move-result v1

    .line 1136
    if-eqz p6, :cond_0

    if-nez v1, :cond_3

    :cond_0
    move v1, v4

    move v2, v4

    .line 1137
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1145
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;

    .line 1146
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;->state:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->equals(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v5

    .line 1142
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1149
    :cond_2
    if-nez v1, :cond_3

    .line 1152
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;

    invoke-direct {v1, v0, p5}, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;-><init>(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)V

    .line 1153
    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v5

    .line 1158
    :goto_1
    return v0

    :cond_3
    move v0, v4

    goto :goto_1
.end method

.method private tryInflectionV2Rule(I[CLcom/mobipocket/common/library/reader/indexes/IndexState;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;)Z
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 655
    array-length v6, p2

    .line 657
    const/4 v7, 0x0

    .line 659
    const/16 v0, 0x1e

    new-array v3, v0, [C

    .line 666
    new-instance v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;

    const/4 v0, 0x0

    invoke-direct {v10, p0, v0}, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;Lcom/mobipocket/common/library/reader/indexes/Index$1;)V

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->skip:Z

    .line 669
    const/4 v0, 0x1

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    .line 670
    packed-switch p1, :pswitch_data_0

    .line 820
    :goto_0
    iget-boolean v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->skip:Z

    if-nez v0, :cond_7

    move v0, v7

    .line 825
    :goto_1
    iget v1, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    new-array v1, v1, [C

    .line 826
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v1, p3, v4, v5}, Lcom/mobipocket/common/library/reader/indexes/Index;->search([CLcom/mobipocket/common/library/reader/indexes/IndexState;ZZ)Z

    .line 832
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v2, p3}, Lcom/mobipocket/common/library/reader/indexes/Index;->isCurrentStateValid(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z

    move-result v2

    move v11, v2

    move v2, v0

    move v0, v11

    .line 836
    :goto_2
    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v0, p3}, Lcom/mobipocket/common/library/reader/indexes/Index;->getEntryString(Lcom/mobipocket/common/library/reader/indexes/IndexState;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/util/Arrays;->byteToChar([B)[C

    move-result-object v0

    .line 846
    array-length v4, v0

    .line 850
    iget v5, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    iget v6, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    if-le v5, v6, :cond_3

    iget v5, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    if-ge v5, v4, :cond_3

    iget v5, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    aget-char v5, v0, v5

    invoke-direct {p0, v5}, Lcom/mobipocket/common/library/reader/indexes/Index;->isInflRuleCtrlChar(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 879
    :cond_0
    iget v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 880
    iget v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    iget v1, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    if-gt v0, v1, :cond_5

    move v0, v2

    .line 883
    :goto_3
    return v0

    .line 677
    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-char v1, v3, v0

    .line 678
    const/16 v0, 0x1d

    if-ge v6, v0, :cond_1

    .line 679
    add-int/lit8 v0, v6, 0x1

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 684
    :goto_4
    const/4 v2, 0x0

    const/4 v4, 0x1

    iget v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    const/4 v1, 0x1

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/indexes/Index;->reverseCopy([CI[CII)V

    goto :goto_0

    .line 682
    :cond_1
    const/16 v0, 0x1e

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    goto :goto_4

    .line 689
    :pswitch_1
    const/4 v0, 0x0

    const/4 v1, 0x3

    aput-char v1, v3, v0

    .line 690
    const/4 v0, 0x1

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    goto :goto_0

    .line 699
    :pswitch_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-char v1, v3, v0

    .line 700
    const/16 v0, 0x1d

    if-ge v6, v0, :cond_2

    .line 701
    add-int/lit8 v0, v6, 0x1

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 706
    :goto_5
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-static {p2, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 704
    :cond_2
    const/16 v0, 0x1e

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    goto :goto_5

    .line 711
    :pswitch_3
    const/4 v0, 0x0

    const/4 v1, 0x4

    aput-char v1, v3, v0

    .line 712
    const/4 v0, 0x1

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    goto/16 :goto_0

    .line 717
    :pswitch_4
    const/4 v0, 0x0

    const/16 v1, 0xa

    aput-char v1, v3, v0

    .line 718
    const/4 v0, 0x1

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    goto/16 :goto_0

    .line 727
    :pswitch_5
    const/4 v2, 0x1

    const/16 v4, 0x1e

    move-object v0, p0

    move-object v1, v10

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/indexes/Index;->setupInflectionV2Prefix(Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;I[CI[CI)V

    goto/16 :goto_0

    .line 734
    :pswitch_6
    const/4 v2, 0x2

    const/16 v4, 0x1e

    move-object v0, p0

    move-object v1, v10

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/indexes/Index;->setupInflectionV2Prefix(Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;I[CI[CI)V

    goto/16 :goto_0

    .line 737
    :pswitch_7
    const/4 v2, 0x3

    const/16 v4, 0x1e

    move-object v0, p0

    move-object v1, v10

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/indexes/Index;->setupInflectionV2Prefix(Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;I[CI[CI)V

    goto/16 :goto_0

    .line 740
    :pswitch_8
    const/4 v2, 0x4

    const/16 v4, 0x1e

    move-object v0, p0

    move-object v1, v10

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/indexes/Index;->setupInflectionV2Prefix(Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;I[CI[CI)V

    goto/16 :goto_0

    .line 743
    :pswitch_9
    const/4 v2, 0x5

    const/16 v4, 0x1e

    move-object v0, p0

    move-object v1, v10

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/indexes/Index;->setupInflectionV2Prefix(Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;I[CI[CI)V

    goto/16 :goto_0

    .line 746
    :pswitch_a
    const/4 v2, 0x6

    const/16 v4, 0x1e

    move-object v0, p0

    move-object v1, v10

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/indexes/Index;->setupInflectionV2Prefix(Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;I[CI[CI)V

    goto/16 :goto_0

    .line 749
    :pswitch_b
    const/4 v2, 0x7

    const/16 v4, 0x1e

    move-object v0, p0

    move-object v1, v10

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/indexes/Index;->setupInflectionV2Prefix(Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;I[CI[CI)V

    goto/16 :goto_0

    .line 752
    :pswitch_c
    const/16 v2, 0x8

    const/16 v4, 0x1e

    move-object v0, p0

    move-object v1, v10

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/indexes/Index;->setupInflectionV2Prefix(Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;I[CI[CI)V

    goto/16 :goto_0

    .line 755
    :pswitch_d
    const/16 v2, 0x9

    const/16 v4, 0x1e

    move-object v0, p0

    move-object v1, v10

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/indexes/Index;->setupInflectionV2Prefix(Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;I[CI[CI)V

    goto/16 :goto_0

    .line 760
    :pswitch_e
    const/4 v0, 0x0

    const/16 v1, 0xb

    aput-char v1, v3, v0

    .line 761
    const/4 v0, 0x1

    const/4 v1, 0x3

    aput-char v1, v3, v0

    .line 762
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 763
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    goto/16 :goto_0

    .line 766
    :pswitch_f
    const/4 v0, 0x0

    const/16 v1, 0xc

    aput-char v1, v3, v0

    .line 767
    const/4 v0, 0x1

    const/4 v1, 0x3

    aput-char v1, v3, v0

    .line 768
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 769
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    goto/16 :goto_0

    .line 772
    :pswitch_10
    const/4 v0, 0x0

    const/16 v1, 0xd

    aput-char v1, v3, v0

    .line 773
    const/4 v0, 0x1

    const/4 v1, 0x3

    aput-char v1, v3, v0

    .line 774
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 775
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    goto/16 :goto_0

    .line 778
    :pswitch_11
    const/4 v0, 0x0

    const/16 v1, 0xe

    aput-char v1, v3, v0

    .line 779
    const/4 v0, 0x1

    const/4 v1, 0x3

    aput-char v1, v3, v0

    .line 780
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 781
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    goto/16 :goto_0

    .line 784
    :pswitch_12
    const/4 v0, 0x0

    const/16 v1, 0xf

    aput-char v1, v3, v0

    .line 785
    const/4 v0, 0x1

    const/4 v1, 0x3

    aput-char v1, v3, v0

    .line 786
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 787
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    goto/16 :goto_0

    .line 790
    :pswitch_13
    const/4 v0, 0x0

    const/16 v1, 0x10

    aput-char v1, v3, v0

    .line 791
    const/4 v0, 0x1

    const/4 v1, 0x3

    aput-char v1, v3, v0

    .line 792
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 793
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    goto/16 :goto_0

    .line 796
    :pswitch_14
    const/4 v0, 0x0

    const/16 v1, 0x11

    aput-char v1, v3, v0

    .line 797
    const/4 v0, 0x1

    const/4 v1, 0x3

    aput-char v1, v3, v0

    .line 798
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 799
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    goto/16 :goto_0

    .line 802
    :pswitch_15
    const/4 v0, 0x0

    const/16 v1, 0x12

    aput-char v1, v3, v0

    .line 803
    const/4 v0, 0x1

    const/4 v1, 0x3

    aput-char v1, v3, v0

    .line 804
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 805
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    goto/16 :goto_0

    .line 808
    :pswitch_16
    const/4 v0, 0x0

    const/16 v1, 0x13

    aput-char v1, v3, v0

    .line 809
    const/4 v0, 0x1

    const/4 v1, 0x3

    aput-char v1, v3, v0

    .line 810
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 811
    const/4 v0, 0x2

    iput v0, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->minplen:I

    goto/16 :goto_0

    .line 854
    :cond_3
    iget v5, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    if-ge v5, v4, :cond_4

    .line 855
    iget v4, v10, Lcom/mobipocket/common/library/reader/indexes/Index$InflectionResult;->preflen:I

    .line 857
    :cond_4
    new-array v5, v4, [C

    .line 858
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v6, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v0, v5, v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->compare([C[C)I

    move-result v0

    if-nez v0, :cond_0

    move-object v4, p0

    move-object v5, p2

    move-object/from16 v6, p4

    move-object v7, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p5

    .line 864
    invoke-direct/range {v4 .. v9}, Lcom/mobipocket/common/library/reader/indexes/Index;->tryUseInflectionRuleV2([CLjava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexState;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 865
    const/4 v0, 0x1

    .line 867
    :goto_6
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v2, p3}, Lcom/mobipocket/common/library/reader/indexes/Index;->setNextState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z

    move-result v2

    move v11, v2

    move v2, v0

    move v0, v11

    .line 874
    goto/16 :goto_2

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v7

    goto/16 :goto_3

    .line 670
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private tryUseInflectionRuleV2([CLjava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexState;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1b

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1028
    .line 1029
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    .line 1030
    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    .line 1034
    invoke-virtual {p3}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v1

    invoke-virtual {p4, v1, v6}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1043
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v1, p3}, Lcom/mobipocket/common/library/reader/indexes/Index;->getEntryString(Lcom/mobipocket/common/library/reader/indexes/IndexState;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/mobipocket/common/util/Arrays;->byteToChar([B)[C

    move-result-object v1

    .line 1046
    invoke-direct {p0, p1, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->disinflectV2([C[C)[C

    move-result-object v1

    .line 1052
    if-eqz v1, :cond_a

    array-length v2, v1

    if-lez v2, :cond_a

    .line 1053
    invoke-static {v1}, Lcom/mobipocket/common/util/Arrays;->charToByte([C)[B

    move-result-object v1

    .line 1057
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    iget-boolean v2, v2, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_collating:Z

    if-eqz v2, :cond_3

    .line 1058
    array-length v2, v1

    const v3, 0xfde9

    invoke-static {v1, v4, v2, v3}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromEncoding([BIII)Ljava/lang/String;

    move-result-object v1

    .line 1064
    :goto_0
    invoke-virtual {p0, v1, v0, v4, v5}, Lcom/mobipocket/common/library/reader/indexes/Index;->search(Ljava/lang/String;Lcom/mobipocket/common/library/reader/indexes/IndexState;ZZ)Z

    move-result v1

    .line 1067
    :goto_1
    if-eqz v1, :cond_9

    move v1, v4

    .line 1076
    :cond_0
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-virtual {p5, v2, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1080
    :goto_2
    if-nez v1, :cond_1

    .line 1083
    invoke-virtual {p5, v5}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getcurrentNumbers(Z)[I

    move-result-object v2

    .line 1084
    if-nez v2, :cond_4

    .line 1109
    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0, v0, v5}, Lcom/mobipocket/common/library/reader/indexes/Index;->next_prev_equal_entry(Lcom/mobipocket/common/library/reader/indexes/IndexState;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1112
    :cond_2
    if-eqz v1, :cond_9

    .line 1113
    invoke-direct {p0, v0, p2, p5}, Lcom/mobipocket/common/library/reader/indexes/Index;->storeBaseForm(Lcom/mobipocket/common/library/reader/indexes/IndexState;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;)Z

    move v0, v5

    .line 1119
    :goto_3
    return v0

    .line 1062
    :cond_3
    array-length v2, v1

    const/16 v3, 0x4e4

    invoke-static {v1, v4, v2, v3}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromEncoding([BIII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1087
    :cond_4
    aget v2, v2, v4

    .line 1089
    :cond_5
    if-nez v1, :cond_6

    .line 1090
    invoke-virtual {p4, v5}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getcurrentNumbers(Z)[I

    move-result-object v3

    .line 1091
    if-nez v3, :cond_7

    .line 1101
    :cond_6
    :goto_4
    invoke-virtual {p3}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v2

    invoke-virtual {p4, v2, v6}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->positionAtTaggedSubGroup(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    goto :goto_2

    .line 1094
    :cond_7
    aget v3, v3, v4

    .line 1096
    if-ne v2, v3, :cond_8

    move v1, v5

    .line 1100
    :cond_8
    if-le v3, v2, :cond_5

    goto :goto_4

    :cond_9
    move v0, v4

    goto :goto_3

    :cond_a
    move v1, v4

    goto :goto_1
.end method


# virtual methods
.method public attachInflectIDX(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    if-gez p1, :cond_0

    move v0, v2

    .line 106
    :goto_0
    return v0

    .line 92
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentEbook:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-direct {v0, v1, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;-><init>(Lcom/mobipocket/common/filesystem/ReadPDB;I)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    iget v0, v0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 102
    iput-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    move v0, v2

    .line 104
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->inflectIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    move v0, v2

    .line 97
    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canonize(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 150
    iget v0, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    .line 152
    iget v1, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    add-int/2addr v1, p2

    .line 153
    if-gez v1, :cond_1

    .line 155
    sub-int v2, v0, v4

    sub-int/2addr v2, v4

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_0
    if-ltz v0, :cond_3

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v3, v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->getChildNBEntry(I)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 160
    add-int/2addr v1, v3

    .line 166
    add-int/lit8 v2, v2, -0x1

    .line 167
    if-ltz v1, :cond_0

    .line 169
    invoke-virtual {p1, v2, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->set(II)V

    move v0, v4

    .line 197
    :goto_1
    return v0

    .line 163
    :catch_0
    move-exception v0

    move v0, v5

    goto :goto_1

    .line 155
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 176
    :cond_1
    sub-int v2, v0, v4

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_2
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->getNBEntries()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 179
    :try_start_1
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v3, v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->getChildNBEntry(I)I

    move-result v3

    .line 180
    if-lt v1, v3, :cond_2

    .line 182
    sub-int/2addr v1, v3

    .line 183
    add-int/lit8 v2, v2, 0x1

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 187
    :cond_2
    invoke-virtual {p1, v2, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->set(II)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v4

    .line 188
    goto :goto_1

    .line 192
    :catch_1
    move-exception v0

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v5

    .line 197
    goto :goto_1
.end method

.method public followXlink(I)Lcom/mobipocket/common/library/reader/indexes/IndexState;
    .locals 2
    .parameter "entryIndex"

    .prologue
    .line 1379
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    .line 1380
    .local v0, state:Lcom/mobipocket/common/library/reader/indexes/IndexState;
    invoke-virtual {p0, v0, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;->canonize(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1381
    const/4 v0, 0x0

    .line 1382
    :cond_0
    return-object v0
.end method

.method public getEntryString(Lcom/mobipocket/common/library/reader/indexes/IndexState;)[B
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    .line 1362
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;->setNewState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V

    .line 1364
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    iget v1, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getEntryString(ILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1367
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntryText(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    .line 1349
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;->setNewState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V

    .line 1351
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    iget v1, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->getEntryText(ILcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1354
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method getIndexRecord(I)Lcom/mobipocket/common/library/reader/indexes/IndexRecord;
    .locals 4
    .parameter "recNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    .line 1319
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentStateRecord:I

    if-ne p1, v2, :cond_0

    .line 1321
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentRec:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    .line 1330
    :goto_0
    return-object v2

    .line 1323
    :cond_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentEbook:Lcom/mobipocket/common/filesystem/ReadPDB;

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->masterRecIndex:I

    add-int/2addr v3, p1

    invoke-interface {v2, v3}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v0

    .line 1324
    .local v0, currentRecord:[B
    if-eqz v0, :cond_2

    .line 1325
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;

    invoke-direct {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;-><init>([B)V

    .line 1326
    .local v1, rep:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->init()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1328
    new-instance v2, Lcom/mobipocket/common/library/reader/indexes/IndexException;

    const-string v3, "index init exception"

    invoke-direct {v2, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, v1

    .line 1330
    goto :goto_0

    .line 1332
    .end local v1           #rep:Lcom/mobipocket/common/library/reader/indexes/IndexRecord;
    :cond_2
    new-instance v2, Lcom/mobipocket/common/library/reader/indexes/IndexException;

    const-string v3, "bad record index"

    invoke-direct {v2, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getMasterRecIndex()I
    .locals 1

    .prologue
    .line 1421
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->masterRecIndex:I

    return v0
.end method

.method getPooledString(I)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1284
    const/4 v0, 0x0

    .line 1285
    ushr-int/lit8 v1, p1, 0x10

    .line 1286
    const v2, 0xffff

    and-int/2addr v2, p1

    .line 1287
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->getNumberStringRecord()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1289
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->getNBEntries()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->masterRecIndex:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1290
    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordIndex:I

    if-eq v1, v3, :cond_0

    .line 1292
    new-array v3, v6, [I

    .line 1293
    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordIndex:I

    .line 1294
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentEbook:Lcom/mobipocket/common/filesystem/ReadPDB;

    iget v4, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordIndex:I

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecord:[B

    invoke-interface {v1, v4, v5, v3}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I[B[I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecord:[B

    .line 1295
    const/4 v1, 0x0

    aget v1, v3, v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordLength:I

    .line 1297
    :cond_0
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecord:[B

    invoke-direct {v1, v3, v6}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 1298
    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->setPosition(I)V

    .line 1299
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readStopEncodedInt()I

    move-result v2

    .line 1300
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v3

    .line 1301
    add-int v4, v3, v2

    iget v5, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordLength:I

    if-le v4, v5, :cond_2

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bounds extend past end of record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->pStrRecordIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1310
    :cond_1
    :goto_0
    return-object v0

    .line 1307
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    iget v0, v0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->encoding:I

    invoke-virtual {v1, v3, v2, v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readFromEncoding(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getRecord(I)[B
    .locals 1
    .parameter "recNum"

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->currentEbook:Lcom/mobipocket/common/filesystem/ReadPDB;

    invoke-interface {v0, p1}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v0

    return-object v0
.end method

.method public hasNextState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->canonize(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)Z

    move-result v0

    return v0
.end method

.method public hasPreviousState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->canonize(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)Z

    move-result v0

    return v0
.end method

.method public isCurrentStateValid(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z
    .locals 2
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->canonize(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)Z

    move-result v0

    return v0
.end method

.method public makeXlink(Lcom/mobipocket/common/library/reader/indexes/IndexState;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1392
    iget v0, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    if-gtz v0, :cond_0

    move v0, v4

    .line 1412
    :goto_0
    return v0

    .line 1401
    :cond_0
    iget v0, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->entryIndex:I

    move v1, v0

    move v0, v5

    .line 1402
    :goto_1
    iget v2, p1, Lcom/mobipocket/common/library/reader/indexes/IndexState;->recordIndex:I

    if-ge v0, v2, :cond_1

    .line 1405
    :try_start_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    sub-int v3, v0, v5

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->getChildNBEntry(I)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1410
    add-int/2addr v1, v2

    .line 1402
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1407
    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1412
    goto :goto_0
.end method

.method public search(Ljava/lang/String;Lcom/mobipocket/common/library/reader/indexes/IndexState;ZZ)Z
    .locals 2
    .parameter "src"
    .parameter "state"
    .parameter "noEquals"
    .parameter "firstEqual"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    iget-boolean v1, v1, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_collating:Z

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->convertToUnicodeIndexEncoding(Ljava/lang/String;)[C

    move-result-object v0

    .line 276
    .local v0, characters:[C
    :goto_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/mobipocket/common/library/reader/indexes/Index;->search([CLcom/mobipocket/common/library/reader/indexes/IndexState;ZZ)Z

    move-result v1

    return v1

    .line 269
    .end local v0           #characters:[C
    :cond_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    iget v1, v1, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab_size:I

    if-lez v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/Index;->master:Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->convertToIndexEncoding(Ljava/lang/String;)[C

    move-result-object v0

    .restart local v0       #characters:[C
    goto :goto_0

    .line 273
    .end local v0           #characters:[C
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .restart local v0       #characters:[C
    goto :goto_0
.end method

.method public searchCombo(Ljava/lang/String;Ljava/util/Vector;Z)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 325
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    .line 328
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    invoke-direct {v1, p0}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    .line 329
    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/mobipocket/common/library/reader/indexes/Index;->search(Ljava/lang/String;Lcom/mobipocket/common/library/reader/indexes/IndexState;ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, v0, v2, p2, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->StoreAllEqual(Lcom/mobipocket/common/library/reader/indexes/IndexState;ILjava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v4

    .line 338
    :goto_0
    if-eqz p3, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/Index;->inflVersion()I

    move-result v2

    .line 361
    packed-switch v2, :pswitch_data_0

    .line 387
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 335
    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v4

    goto :goto_0

    .line 369
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->searchInflectedV1(Ljava/lang/String;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;)Z
    :try_end_1
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    .line 381
    :pswitch_2
    :try_start_2
    invoke-direct {p0, p1, p2, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->searchInflectedV2(Ljava/lang/String;Ljava/util/Vector;Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;)Z
    :try_end_2
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    .line 372
    :catch_2
    move-exception v1

    goto :goto_1

    .line 375
    :catch_3
    move-exception v1

    goto :goto_1

    .line 384
    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setNextState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mobipocket/common/library/reader/indexes/Index;->canonize(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)Z

    move-result v0

    return v0
.end method

.method public setPreviousState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 250
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/mobipocket/common/library/reader/indexes/Index;->canonize(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)Z

    move-result v0

    return v0
.end method
