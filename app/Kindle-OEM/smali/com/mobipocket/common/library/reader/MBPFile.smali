.class public Lcom/mobipocket/common/library/reader/MBPFile;
.super Lcom/mobipocket/common/library/reader/AnnotationManager;
.source "MBPFile.java"


# static fields
.field public static final BPAR:I = 0x42504152

.field private static final BPAR_LENGTH:I = 0x38

.field static final DATA:I = 0x44415441

.field private static final NONE:I = -0x1

.field private static final OFFSET_CURRENT_PAGE:B = 0x10t

.field private static final OFFSET_CURRENT_POS:B = 0xct

.field private static final OFFSET_STACK_RECORD_ID:B = 0x14t

.field private static final OFFSET_TIME:B = 0x24t

.field private static final STUCRYPT0:I = 0xbacaca

.field private static final STUCRYPT1:I = -0x21524111


# instance fields
.field private final file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

.field private record0:[B


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "pdbFactory"
    .parameter "bookmarkFileName"
    .parameter "bookRandomID"
    .parameter "bookPDBName"

    .prologue
    const/16 v2, 0x1b

    .line 69
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/AnnotationManager;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_PAR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, paramName:Ljava/lang/String;
    new-instance v0, Lcom/mobipocket/common/filesystem/ReadWritePDB;

    const-string v4, "BPAR"

    new-instance v5, Lcom/mobipocket/common/library/reader/annotations/RecordComparatorForAnnotations;

    invoke-direct {v5}, Lcom/mobipocket/common/library/reader/annotations/RecordComparatorForAnnotations;-><init>()V

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/mobipocket/common/filesystem/ReadWritePDB;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/common/filesystem/RecordComparator;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    .line 75
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 77
    invoke-direct {p0, p3}, Lcom/mobipocket/common/library/reader/MBPFile;->checkBookSettings(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0, p3}, Lcom/mobipocket/common/library/reader/MBPFile;->createDefault(I)V

    .line 86
    :cond_0
    :goto_1
    return-void

    .end local v3           #paramName:Ljava/lang/String;
    :cond_1
    move-object v1, p4

    .line 71
    goto :goto_0

    .line 84
    .restart local v3       #paramName:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p3}, Lcom/mobipocket/common/library/reader/MBPFile;->createDefault(I)V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "pdbFactory"
    .parameter "bookFileName"
    .parameter "bookPDBName"
    .parameter "randomID"

    .prologue
    .line 95
    invoke-interface {p1, p2}, Lcom/mobipocket/common/filesystem/PDBFactory;->getBookSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4, p3}, Lcom/mobipocket/common/library/reader/MBPFile;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    return-void
.end method

.method private addAnnotation(IIIILjava/lang/String;Ljava/lang/String;[BII)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    invoke-virtual/range {p0 .. p2}, Lcom/mobipocket/common/library/reader/MBPFile;->getListOfAnnotationsBetween(II)[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v12

    .line 408
    const/4 v2, 0x0

    move v13, v2

    move-object/from16 v14, p5

    move/from16 v15, p2

    move/from16 v16, p1

    :goto_0
    array-length v2, v12

    if-ge v13, v2, :cond_8

    .line 410
    const/4 v2, 0x1

    move/from16 v0, p9

    move v1, v2

    if-ne v0, v1, :cond_0

    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v2

    move/from16 v0, p9

    move v1, v2

    if-ne v0, v1, :cond_0

    .line 412
    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    move v0, v2

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v2

    if-ne v2, v15, :cond_6

    .line 415
    aget-object v2, v12, v13

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;->delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    .line 408
    :goto_1
    add-int/lit8 v5, v13, 0x1

    move v13, v5

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    goto :goto_0

    .line 418
    :cond_0
    const/4 v2, 0x2

    move/from16 v0, p9

    move v1, v2

    if-ne v0, v1, :cond_6

    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v2

    move/from16 v0, p9

    move v1, v2

    if-ne v0, v1, :cond_6

    .line 425
    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    move v0, v2

    move/from16 v1, v16

    if-gt v0, v1, :cond_1

    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v2

    if-ge v2, v15, :cond_2

    :cond_1
    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    move v0, v2

    move/from16 v1, v16

    if-lt v0, v1, :cond_3

    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v2

    if-gt v2, v15, :cond_3

    .line 432
    :cond_2
    aget-object v2, v12, v13

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;->delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    goto :goto_1

    .line 439
    :cond_3
    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEffect()I

    move-result v2

    move v0, v2

    move/from16 v1, p8

    if-ne v0, v1, :cond_5

    .line 441
    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    move v0, v2

    move/from16 v1, v16

    if-gt v0, v1, :cond_4

    .line 443
    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v12, v13

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v2, v3

    move v3, v15

    .line 451
    :goto_2
    aget-object v5, v12, v13

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;->delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    goto/16 :goto_1

    .line 448
    :cond_4
    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v2

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v12, v13

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, v16

    move/from16 v17, v2

    move-object v2, v3

    move/from16 v3, v17

    goto :goto_2

    .line 457
    :cond_5
    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    move v0, v2

    move/from16 v1, v16

    if-gt v0, v1, :cond_7

    .line 459
    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    move/from16 v4, v16

    move v3, v2

    .line 467
    :goto_3
    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPosition()I

    move-result v5

    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPageNumber()I

    move-result v6

    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getText()Ljava/lang/String;

    move-result-object v8

    aget-object v2, v12, v13

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;->getStateInfo(Lcom/mobipocket/common/library/reader/AnnotationItem;)[B

    move-result-object v9

    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEffect()I

    move-result v10

    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v11

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/mobipocket/common/library/reader/MBPFile;->addAnnotation(IIIILjava/lang/String;Ljava/lang/String;[BII)Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 476
    aget-object v2, v12, v13

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;->delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    :cond_6
    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    goto/16 :goto_1

    .line 465
    :cond_7
    aget-object v2, v12, v13

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v2

    move v4, v2

    move v3, v15

    goto :goto_3

    .line 482
    :cond_8
    const/4 v2, 0x0

    .line 483
    if-eqz v14, :cond_17

    .line 485
    invoke-static {v14}, Lcom/mobipocket/common/library/reader/MBPFile;->createStringRecord(Ljava/lang/String;)[B

    move-result-object v2

    move-object v9, v2

    .line 487
    :goto_4
    const/4 v2, 0x0

    .line 488
    if-eqz p6, :cond_16

    .line 490
    invoke-static/range {p6 .. p6}, Lcom/mobipocket/common/library/reader/MBPFile;->createStringRecord(Ljava/lang/String;)[B

    move-result-object v2

    move-object v10, v2

    .line 493
    :goto_5
    if-eqz p6, :cond_9

    if-eqz v10, :cond_c

    :cond_9
    if-eqz v14, :cond_a

    if-eqz v9, :cond_c

    :cond_a
    if-nez p6, :cond_b

    if-eqz v14, :cond_c

    :cond_b
    if-nez p7, :cond_d

    .line 498
    :cond_c
    const/4 v2, 0x0

    .line 549
    :goto_6
    return-object v2

    .line 502
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    move-result v11

    .line 504
    new-instance v2, Lcom/mobipocket/common/library/reader/annotations/Annotation;

    move/from16 v3, v16

    move v4, v15

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v2 .. v8}, Lcom/mobipocket/common/library/reader/annotations/Annotation;-><init>(IIIIII)V

    .line 505
    invoke-virtual {v2, v11}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->saveAnnotationStack(I)V

    .line 506
    const/4 v3, -0x1

    .line 507
    if-eqz v14, :cond_e

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v3, v0

    invoke-virtual {v3, v9}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    move-result v3

    .line 510
    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->saveAnnotationSubject(I)V

    .line 512
    :cond_e
    const/4 v4, -0x1

    .line 513
    if-eqz p6, :cond_f

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v4, v0

    invoke-virtual {v4, v10}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    move-result v4

    .line 516
    invoke-virtual {v2, v4}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->saveAnnotationText(I)V

    :cond_f
    move v5, v4

    .line 518
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->serialize()[B

    move-result-object v4

    .line 519
    if-nez v4, :cond_12

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v2, v0

    invoke-virtual {v2, v11}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 523
    if-lez v5, :cond_10

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v2, v0

    invoke-virtual {v2, v5}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 527
    :cond_10
    if-lez v3, :cond_11

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v2, v0

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 531
    :cond_11
    const/4 v2, 0x0

    goto :goto_6

    .line 533
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v6, v0

    invoke-virtual {v6, v4}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    move-result v4

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->save()Z

    move-result v6

    if-nez v6, :cond_15

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v2, v0

    invoke-virtual {v2, v11}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 538
    if-lez v5, :cond_13

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v2, v0

    invoke-virtual {v2, v5}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 542
    :cond_13
    if-lez v3, :cond_14

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v2, v0

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 546
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    move-object v2, v0

    invoke-virtual {v2, v4}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 547
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 549
    :cond_15
    new-instance v3, Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-object v5, v2

    move-object v6, v14

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/mobipocket/common/library/reader/AnnotationItem;-><init>(ILcom/mobipocket/common/library/reader/annotations/Annotation;Ljava/lang/String;Ljava/lang/String;[B)V

    move-object v2, v3

    goto/16 :goto_6

    :cond_16
    move-object v10, v2

    goto/16 :goto_5

    :cond_17
    move-object v9, v2

    goto/16 :goto_4
.end method

.method private checkBookSettings(I)Z
    .locals 8
    .parameter

    .prologue
    const/16 v3, 0x40

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecord(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    .line 102
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 103
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    const v2, 0x42504152

    if-eq v1, v2, :cond_0

    move v0, v6

    .line 128
    :goto_0
    return v0

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    .line 109
    const/16 v1, 0x38

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    array-length v1, v1

    if-ge v1, v3, :cond_2

    .line 111
    :cond_1
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/MBPFile;->getDefault(I)[B

    move-result-object v1

    .line 112
    add-int/lit8 v2, v0, 0x8

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    array-length v3, v3

    if-le v2, v3, :cond_3

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    array-length v0, v0

    .line 113
    :goto_1
    const/16 v2, 0x40

    new-array v2, v2, [B

    .line 115
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->modifyRecordOfID([BI)V

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MBPFile;->getRandomID()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eq v0, p1, :cond_4

    move v0, v6

    .line 122
    goto :goto_0

    .line 112
    :cond_3
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_4
    move v0, v7

    .line 125
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0
.end method

.method private createDefault(I)V
    .locals 2
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteAll()V

    .line 280
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/MBPFile;->getDefault(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    .line 282
    return-void
.end method

.method private static createStringRecord(Ljava/lang/String;)[B
    .locals 5
    .parameter

    .prologue
    .line 663
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 664
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x8

    .line 665
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 666
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 668
    const v4, 0x44415441

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 669
    const/16 v4, 0x8

    sub-int/2addr v1, v4

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 670
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 672
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 681
    :goto_1
    return-object v0

    .line 678
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getDefault(I)[B
    .locals 6
    .parameter

    .prologue
    .line 248
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 251
    const v2, 0x42504152

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 252
    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 253
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 254
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 255
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 256
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 257
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 258
    const/16 v2, 0x7f

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 259
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 261
    const v3, 0xbacaca

    add-int/2addr v2, v3

    const v3, -0x21524111

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 262
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 263
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 264
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 265
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 266
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 267
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 273
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getIdOfTitleRecord(Lcom/mobipocket/common/library/reader/annotations/Annotation;)I
    .locals 1
    .parameter

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getIDOfTextRecord()I

    move-result v0

    .line 141
    if-gez v0, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getIDOfSubjectRecord()I

    move-result v0

    .line 143
    :cond_0
    return v0
.end method

.method private getStateInfo(I)[B
    .locals 2
    .parameter

    .prologue
    .line 640
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/library/reader/annotations/Annotation;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordOfId(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/annotations/Annotation;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getIDOfStackRecord()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordOfId(I)[B

    move-result-object v0

    :goto_0
    return-object v0

    .line 643
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getStringRecord([B)Ljava/lang/String;
    .locals 4
    .parameter "record"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 654
    .local v0, data:Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v2

    const v3, 0x44415441

    if-eq v2, v3, :cond_0

    .line 655
    new-instance v2, Ljava/io/IOException;

    const-string v3, "record not good formated"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 656
    :cond_0
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    .line 657
    .local v1, size:I
    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readStringUTF16BE(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public add(Lcom/mobipocket/common/library/reader/AnnotationExport;)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 10
    .parameter

    .prologue
    .line 733
    iget v0, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 735
    iget v0, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->pos:I

    iget v1, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->page:I

    iget-object v2, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->state:[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/mobipocket/common/library/reader/MBPFile;->close(II[B)Z

    .line 736
    const/4 v0, 0x0

    .line 740
    :goto_0
    return-object v0

    :cond_0
    iget v1, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->begin:I

    iget v2, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->end:I

    iget v3, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->pos:I

    iget v4, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->page:I

    iget-object v5, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->subject:Ljava/lang/String;

    iget-object v6, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->text:Ljava/lang/String;

    iget-object v7, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->state:[B

    iget v8, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->effect:I

    iget v9, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/mobipocket/common/library/reader/MBPFile;->addAnnotation(IIIILjava/lang/String;Ljava/lang/String;[BII)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    goto :goto_0
.end method

.method public addHighlight(IIIILjava/lang/String;[BI)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    move/from16 v0, p7

    and-int/lit16 v0, v0, 0xff

    move v2, v0

    shl-int/lit8 v2, v2, 0x18

    or-int/lit8 v2, v2, 0xf

    const v3, 0xff00

    and-int v3, v3, p7

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/high16 v3, 0xff

    and-int v3, v3, p7

    ushr-int/lit8 v3, v3, 0x8

    or-int v12, v2, v3

    .line 306
    invoke-virtual/range {p0 .. p2}, Lcom/mobipocket/common/library/reader/MBPFile;->getListOfAnnotationsBetween(II)[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v13

    .line 307
    const/4 v2, 0x0

    move v14, v2

    move-object/from16 v15, p5

    move/from16 v16, p2

    move/from16 v17, p1

    :goto_0
    array-length v2, v13

    if-ge v14, v2, :cond_7

    .line 309
    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 316
    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    move v0, v2

    move/from16 v1, v17

    if-gt v0, v1, :cond_0

    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v2

    move v0, v2

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    :cond_0
    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    move v0, v2

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v2

    move v0, v2

    move/from16 v1, v16

    if-gt v0, v1, :cond_2

    .line 323
    :cond_1
    aget-object v2, v13, v14

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;->delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    .line 307
    :goto_1
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    goto :goto_0

    .line 330
    :cond_2
    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getColor()I

    move-result v2

    move v0, v2

    move/from16 v1, p7

    if-ne v0, v1, :cond_4

    .line 332
    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    move v0, v2

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 334
    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v13, v14

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v2, v3

    move/from16 v3, v16

    .line 342
    :goto_2
    aget-object v5, v13, v14

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;->delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    goto :goto_1

    .line 339
    :cond_3
    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v2

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v13, v14

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, v17

    move/from16 v18, v2

    move-object v2, v3

    move/from16 v3, v18

    goto :goto_2

    .line 348
    :cond_4
    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    move v0, v2

    move/from16 v1, v17

    if-gt v0, v1, :cond_6

    .line 350
    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v2

    move/from16 v4, v17

    move v3, v2

    .line 358
    :goto_3
    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPosition()I

    move-result v5

    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPageNumber()I

    move-result v6

    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v2, v13, v14

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;->getStateInfo(Lcom/mobipocket/common/library/reader/AnnotationItem;)[B

    move-result-object v9

    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEffect()I

    move-result v10

    const/4 v11, 0x4

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/mobipocket/common/library/reader/MBPFile;->addAnnotation(IIIILjava/lang/String;Ljava/lang/String;[BII)Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 367
    aget-object v2, v13, v14

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;->delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    :cond_5
    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_1

    .line 356
    :cond_6
    aget-object v2, v13, v14

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v2

    move v4, v2

    move/from16 v3, v16

    goto :goto_3

    .line 373
    :cond_7
    const/4 v8, 0x0

    const/4 v11, 0x4

    move-object/from16 v2, p0

    move/from16 v3, v17

    move/from16 v4, v16

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v15

    move-object/from16 v9, p6

    move v10, v12

    invoke-direct/range {v2 .. v11}, Lcom/mobipocket/common/library/reader/MBPFile;->addAnnotation(IIIILjava/lang/String;Ljava/lang/String;[BII)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v2

    return-object v2
.end method

.method public addNote(IIIILjava/lang/String;Ljava/lang/String;[B)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 10
    .parameter "beginPos"
    .parameter "endPos"
    .parameter "pagePos"
    .parameter "pageNumber"
    .parameter "subject"
    .parameter "note"
    .parameter "currentPageImageStack"

    .prologue
    .line 299
    const/16 v8, 0x20

    const/4 v9, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/mobipocket/common/library/reader/MBPFile;->addAnnotation(IIIILjava/lang/String;Ljava/lang/String;[BII)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    return-object v0
.end method

.method public addPageBookmark(IILjava/lang/String;[B)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 10
    .parameter "pos"
    .parameter "pageNumber"
    .parameter "subject"
    .parameter "currentPageImageStack"

    .prologue
    .line 289
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p1

    move v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v9}, Lcom/mobipocket/common/library/reader/MBPFile;->addAnnotation(IIIILjava/lang/String;Ljava/lang/String;[BII)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    return-object v0
.end method

.method public addPageNote(IIILjava/lang/String;Ljava/lang/String;[B)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 10
    .parameter "pagePos"
    .parameter "endPagePosition"
    .parameter "pageNumber"
    .parameter "subject"
    .parameter "note"
    .parameter "currentPageImageStack"

    .prologue
    .line 294
    const/16 v8, 0x20

    const/4 v9, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/mobipocket/common/library/reader/MBPFile;->addAnnotation(IIIILjava/lang/String;Ljava/lang/String;[BII)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    return-object v0
.end method

.method addReservedAnnotation(IIIILjava/lang/String;Ljava/lang/String;[BI)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 10
    .parameter "beginPos"
    .parameter "endPos"
    .parameter "pagePos"
    .parameter "pageNumber"
    .parameter "text"
    .parameter "userNote"
    .parameter "currentPageImageStack"
    .parameter "bkType"

    .prologue
    .line 378
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/mobipocket/common/library/reader/MBPFile;->addAnnotation(IIIILjava/lang/String;Ljava/lang/String;[BII)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    return-object v0
.end method

.method public close(II[B)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x14

    const/4 v4, 0x1

    .line 692
    if-nez p3, :cond_0

    .line 694
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->save()Z

    move-result v0

    .line 714
    :goto_0
    return v0

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordCount()I

    .line 698
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    invoke-static {v0, v2, v4}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v0

    .line 701
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 703
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v1, p3, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->modifyRecordOfID([BI)V

    .line 710
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    const/16 v1, 0xc

    invoke-static {v0, v1, v4, p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt([BIZI)V

    .line 711
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    const/16 v1, 0x10

    invoke-static {v0, v1, v4, p2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt([BIZI)V

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 713
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    const/16 v2, 0x24

    const v3, 0xbacaca

    add-int/2addr v0, v3

    const v3, -0x21524111

    xor-int/2addr v0, v3

    invoke-static {v1, v2, v4, v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt([BIZI)V

    .line 714
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->save()Z

    move-result v0

    goto :goto_0

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0, p3}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->addRecord([B)I

    move-result v0

    .line 708
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    invoke-static {v1, v2, v4, v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt([BIZI)V

    goto :goto_1
.end method

.method public delete(Lcom/mobipocket/common/library/reader/AnnotationExport;)Z
    .locals 5
    .parameter "annotationExport"

    .prologue
    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, deleted:Z
    iget v3, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->begin:I

    iget v4, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->end:I

    invoke-virtual {p0, v3, v4}, Lcom/mobipocket/common/library/reader/MBPFile;->getListOfAnnotationsBetween(II)[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v2

    .line 757
    .local v2, listOfAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 759
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v3

    iget v4, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->begin:I

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v3

    iget v4, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->end:I

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPosition()I

    move-result v3

    iget v4, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->pos:I

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v3

    iget v4, p1, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    if-ne v3, v4, :cond_0

    .line 764
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lcom/mobipocket/common/library/reader/MBPFile;->delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    move-result v0

    .line 757
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    :cond_1
    return v0
.end method

.method public delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z
    .locals 1
    .parameter "bki"

    .prologue
    .line 585
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/MBPFile;->deleteAnnotation(I)Z

    move-result v0

    return v0
.end method

.method deleteAnnotation(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 593
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/library/reader/annotations/Annotation;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordOfId(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/annotations/Annotation;-><init>([B)V

    .line 594
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getIDOfSubjectRecord()I

    move-result v1

    .line 595
    if-eq v1, v3, :cond_0

    .line 596
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v2, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 598
    :cond_0
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getIDOfTextRecord()I

    move-result v1

    .line 599
    if-eq v1, v3, :cond_1

    .line 600
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v2, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 602
    :cond_1
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getIDOfStackRecord()I

    move-result v1

    .line 603
    if-eq v1, v3, :cond_2

    .line 604
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v2, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 606
    :cond_2
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getIDOfRawDataRecord()I

    move-result v1

    .line 607
    if-eq v1, v3, :cond_3

    .line 608
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v2, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 610
    :cond_3
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getIDOfSecondaryBKRecord()I

    move-result v1

    .line 611
    if-eq v1, v3, :cond_4

    .line 612
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v2, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 614
    :cond_4
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getIDOfUrlRecord()I

    move-result v1

    .line 615
    if-eq v1, v3, :cond_5

    .line 616
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v2, v1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 618
    :cond_5
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getIDOfUrlencRecord()I

    move-result v0

    .line 619
    if-eq v0, v3, :cond_6

    .line 620
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V

    .line 622
    :cond_6
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->deleteRecordOfID(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    const/4 v0, 0x1

    .line 626
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAll()[Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 2

    .prologue
    .line 221
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;->getListOfAnnotationsBetween(II)[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationExport(Lcom/mobipocket/common/library/reader/AnnotationItem;)Lcom/mobipocket/common/library/reader/AnnotationExport;
    .locals 2
    .parameter "annotation"

    .prologue
    .line 719
    new-instance v0, Lcom/mobipocket/common/library/reader/AnnotationExport;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/AnnotationExport;-><init>()V

    .line 720
    .local v0, res:Lcom/mobipocket/common/library/reader/AnnotationExport;
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->begin:I

    .line 721
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->end:I

    .line 722
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->pos:I

    .line 723
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPageNumber()I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->page:I

    .line 724
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEffect()I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->effect:I

    .line 725
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    .line 726
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getSubject()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->subject:Ljava/lang/String;

    .line 727
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->text:Ljava/lang/String;

    .line 728
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getState()[B

    move-result-object v1

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/AnnotationExport;->state:[B

    .line 729
    return-object v0
.end method

.method public getLastOpenedPageNumber()I
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v0

    return v0
.end method

.method public getLastOpenedPagePosition()I
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v0

    return v0
.end method

.method public getLastOpenedPageStackInformation()[B
    .locals 4

    .prologue
    .line 226
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v0

    .line 228
    .local v0, curStackRecordID:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordOfId(I)[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getListOfAnnotationsBetween(II)[Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 157
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 158
    if-ne p2, v9, :cond_3

    move v7, v12

    .line 160
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordCount()I

    move-result v0

    .line 163
    :goto_1
    if-lez v0, :cond_4

    .line 165
    add-int/lit8 v8, v0, -0x1

    .line 166
    new-instance v2, Lcom/mobipocket/common/library/reader/annotations/Annotation;

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0, v8}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecord(I)[B

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/mobipocket/common/library/reader/annotations/Annotation;-><init>([B)V

    .line 167
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/AnnotationItem;->isTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v7, :cond_0

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getBegin()I

    move-result v0

    if-gt v0, p2, :cond_8

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getEnd()I

    move-result v0

    if-lt v0, p1, :cond_8

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0, v8}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getIDOfRecord(I)I

    move-result v1

    .line 174
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getIDOfSubjectRecord()I

    move-result v0

    .line 175
    if-eq v0, v9, :cond_7

    .line 177
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v3, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordOfId(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/MBPFile;->getStringRecord([B)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 180
    :goto_2
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/annotations/Annotation;->getIDOfTextRecord()I

    move-result v0

    .line 181
    if-eq v0, v9, :cond_6

    .line 183
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v4, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordOfId(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/MBPFile;->getStringRecord([B)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 187
    :goto_3
    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    .line 189
    :cond_1
    new-instance v0, Lcom/mobipocket/common/library/reader/AnnotationItem;

    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;->getStateInfo(I)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/AnnotationItem;-><init>(ILcom/mobipocket/common/library/reader/annotations/Annotation;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/annotations/Annotation$NotAnAnnotationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v8

    .line 191
    goto :goto_1

    :cond_3
    move v7, v11

    .line 158
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/MBPFile;->getRandomID()I

    move-result v0

    .line 199
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/MBPFile;->createDefault(I)V

    move-object v0, v10

    .line 211
    :goto_4
    return-object v0

    .line 203
    :catch_1
    move-exception v0

    .line 204
    :cond_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    .line 205
    new-array v1, v0, [Lcom/mobipocket/common/library/reader/AnnotationItem;

    move v2, v11

    .line 206
    :goto_5
    if-ge v2, v0, :cond_5

    .line 208
    sub-int v3, v0, v12

    sub-int/2addr v3, v2

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/AnnotationItem;

    aput-object p0, v1, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    move-object v0, v1

    .line 211
    goto :goto_4

    :cond_6
    move-object v4, v10

    goto :goto_3

    :cond_7
    move-object v3, v10

    goto :goto_2

    :cond_8
    move v0, v8

    goto/16 :goto_1
.end method

.method public getRandomID()I
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->record0:[B

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt([BIZ)I

    move-result v0

    return v0
.end method

.method public getStateInfo(Lcom/mobipocket/common/library/reader/AnnotationItem;)[B
    .locals 1
    .parameter "bki"

    .prologue
    .line 633
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getID()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/MBPFile;->getStateInfo(I)[B

    move-result-object v0

    return-object v0
.end method

.method public modifyTitle(Lcom/mobipocket/common/library/reader/AnnotationItem;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 562
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/library/reader/annotations/Annotation;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->getRecordOfId(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/annotations/Annotation;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/MBPFile;->getIdOfTitleRecord(Lcom/mobipocket/common/library/reader/annotations/Annotation;)I

    move-result v0

    .line 563
    if-lez v0, :cond_0

    .line 565
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-static {p2}, Lcom/mobipocket/common/library/reader/MBPFile;->createStringRecord(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->modifyRecordOfID([BI)V

    .line 566
    invoke-virtual {p1, p2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/annotations/Annotation$NotAnAnnotationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    const/4 v0, 0x1

    .line 571
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveFile()Z
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/MBPFile;->file:Lcom/mobipocket/common/filesystem/ReadWritePDB;

    invoke-virtual {v0}, Lcom/mobipocket/common/filesystem/ReadWritePDB;->save()Z

    move-result v0

    return v0
.end method
