.class Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;
.super Lcom/mobipocket/common/library/reader/indexes/IndexRecord;
.source "MasterIndexRecord.java"


# static fields
.field private static final SIZE_SORTORDER:I = 0x100


# instance fields
.field private cutoff_absolute:I

.field private cutoff_relative:I

.field encoding:I

.field private exact_mode:I

.field private extra0:I

.field private extra1:I

.field private extra2:I

.field private language:I

.field ligTable:[B

.field lig_tab:I

.field lig_tab_size:I

.field name:Ljava/lang/String;

.field private name_len:I

.field private nb_likeoptim_recs:I

.field private nb_string_recs:I

.field private pMapTable:[C

.field private phon_indexed_len:I

.field private phon_letter_begin_end:I

.field private phon_letter_max:I

.field private phon_letter_min:I

.field private phon_table_access:I

.field private phon_table_canon:I

.field private phon_table_letter:I

.field private phon_table_phon1:I

.field private phon_table_phon2:I

.field private phon_table_phonetic:I

.field private phonetic_table_len:I

.field private sortTable:[C

.field private sort_tab:I

.field total_nb_ent:I

.field private unicode_chartab_len:I

.field unicode_collating:Z

.field private unicode_extra0:I

.field private unicode_maptable:I

.field unicode_single_byte:I

.field private unicode_sortorder:I

.field private weight_correction_big:I

.field private weight_correction_small:I

.field private weight_correction_xsmall:I

.field private weight_matched_canon:I

.field private weight_matched_phon0:I

.field private weight_matched_phon1:I

.field private weight_matched_phon2:I

.field private weight_matched_spelling:I

.field private weight_mismatch_penalty:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .parameter "record"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;-><init>([B)V

    .line 80
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->name:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->ligTable:[B

    .line 89
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    .line 90
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->pMapTable:[C

    .line 95
    return-void
.end method

.method private final compareUnicode([C[C)I
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 464
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    if-nez v1, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->createSortTable()V

    .line 468
    :cond_0
    const/4 v1, 0x0

    .line 469
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    if-eqz v2, :cond_1

    .line 470
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    array-length v1, v1

    .line 473
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    .line 474
    move-object/from16 v0, p2

    array-length v0, v0

    move v3, v0

    .line 475
    const/4 v4, 0x0

    .line 477
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 478
    const/4 v1, 0x0

    .line 544
    :goto_0
    return v1

    .line 480
    :cond_2
    const/4 v5, 0x0

    .line 481
    const/4 v6, 0x0

    .line 482
    const/4 v7, 0x0

    .line 483
    const/4 v8, 0x0

    .line 485
    const/4 v9, 0x0

    .line 486
    const/4 v10, 0x0

    .line 489
    :goto_1
    if-ge v5, v2, :cond_3

    aget-char v11, p1, v5

    invoke-virtual {p0, v11, v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortOrder(CI)C

    move-result v11

    if-nez v11, :cond_3

    .line 490
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 492
    :cond_3
    :goto_2
    if-ge v6, v3, :cond_11

    aget-char v11, p2, v6

    invoke-virtual {p0, v11, v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortOrder(CI)C

    move-result v11

    if-nez v11, :cond_11

    .line 493
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move v12, v7

    move v7, v4

    move v4, v12

    move v13, v5

    move v5, v6

    move v6, v13

    .line 497
    :goto_3
    if-ge v9, v2, :cond_7

    if-ge v8, v3, :cond_7

    if-nez v10, :cond_7

    .line 499
    aget-char v4, p1, v9

    .line 500
    aget-char v5, p2, v8

    .line 501
    invoke-virtual {p0, v4, v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortOrder(CI)C

    move-result v6

    .line 502
    invoke-virtual {p0, v5, v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortOrder(CI)C

    move-result v7

    .line 503
    if-eq v6, v7, :cond_5

    const/4 v10, 0x1

    .line 504
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 505
    add-int/lit8 v8, v8, 0x1

    .line 508
    :goto_5
    if-ge v9, v2, :cond_6

    aget-char v11, p1, v9

    invoke-virtual {p0, v11, v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortOrder(CI)C

    move-result v11

    if-nez v11, :cond_6

    .line 509
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 503
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 511
    :cond_6
    :goto_6
    if-ge v8, v3, :cond_4

    aget-char v11, p2, v8

    invoke-virtual {p0, v11, v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortOrder(CI)C

    move-result v11

    if-nez v11, :cond_4

    .line 512
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 516
    :cond_7
    if-eqz v10, :cond_b

    .line 517
    if-ge v7, v1, :cond_8

    if-lt v6, v1, :cond_8

    .line 518
    const/4 v1, -0x1

    goto :goto_0

    .line 520
    :cond_8
    if-lt v7, v1, :cond_9

    if-ge v6, v1, :cond_9

    .line 521
    const/4 v1, 0x1

    goto :goto_0

    .line 523
    :cond_9
    if-ge v5, v4, :cond_a

    .line 524
    const/4 v1, -0x1

    goto :goto_0

    .line 527
    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    .line 531
    :cond_b
    if-lt v9, v2, :cond_c

    const/4 v1, 0x1

    .line 532
    :goto_7
    if-lt v8, v3, :cond_d

    const/4 v2, 0x1

    .line 533
    :goto_8
    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    .line 534
    const/4 v1, 0x0

    goto :goto_0

    .line 531
    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    .line 532
    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    .line 536
    :cond_e
    if-eqz v1, :cond_f

    .line 537
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 539
    :cond_f
    if-eqz v2, :cond_10

    .line 540
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 544
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_11
    move v12, v10

    move v10, v4

    move v4, v12

    move v13, v8

    move v8, v6

    move v6, v13

    move v14, v5

    move v5, v9

    move v9, v14

    goto :goto_3
.end method

.method private createLigTable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab:I

    if-gtz v1, :cond_1

    .line 256
    iput-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->ligTable:[B

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab_size:I

    shl-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->ligTable:[B

    .line 260
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->setPosition(I)V

    .line 262
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab_size:I

    shl-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->ligTable:[B

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readByte()B

    move-result v2

    aput-byte v2, v1, v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :catch_0
    move-exception v1

    iput-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->ligTable:[B

    goto :goto_0
.end method

.method private createMapTable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 317
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_chartab_len:I

    if-gtz v1, :cond_1

    .line 318
    iput-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->pMapTable:[C

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_chartab_len:I

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->pMapTable:[C

    .line 323
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_maptable:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->setPosition(I)V

    .line 325
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_chartab_len:I

    if-ge v0, v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->pMapTable:[C

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readShort()S

    move-result v2

    int-to-char v2, v2

    aput-char v2, v1, v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    :catch_0
    move-exception v1

    iput-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->pMapTable:[C

    goto :goto_0
.end method

.method private createSortTable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 275
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sort_tab:I

    if-gtz v2, :cond_1

    .line 277
    iput-object v4, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const/16 v1, 0x100

    .line 283
    .local v1, sortTableLen:I
    iget-boolean v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_collating:Z

    if-eqz v2, :cond_2

    .line 284
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_chartab_len:I

    .line 286
    :cond_2
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    .line 287
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sort_tab:I

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->setPosition(I)V

    .line 289
    iget-boolean v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_collating:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_single_byte:I

    if-nez v2, :cond_3

    .line 292
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 293
    :try_start_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readShort()S

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    :catch_0
    move-exception v2

    iput-object v4, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    goto :goto_0

    .line 304
    .end local v0           #i:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_0

    .line 305
    :try_start_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v2, v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 309
    :catch_1
    move-exception v2

    iput-object v4, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    goto :goto_0
.end method

.method private readHeaderIFV0Master()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->encoding:I

    .line 175
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->language:I

    .line 176
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->total_nb_ent:I

    .line 177
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sort_tab:I

    .line 178
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab:I

    .line 179
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab_size:I

    .line 180
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->nb_string_recs:I

    .line 182
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->encoding:I

    const v1, 0xfdea

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_collating:Z

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; subsystem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->subsystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; ent_tab:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->ent_tab:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; nb_ent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->nb_ent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; encoding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->encoding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; language:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->language:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; total_nb_ent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->total_nb_ent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readHeaderIFV1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->nb_likeoptim_recs:I

    .line 193
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->phon_table_canon:I

    .line 194
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->phon_table_letter:I

    .line 195
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->phon_table_phon1:I

    .line 196
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->phon_table_phon2:I

    .line 197
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->phon_table_phonetic:I

    .line 198
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->phon_table_access:I

    .line 199
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->phonetic_table_len:I

    .line 200
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->phon_letter_min:I

    .line 201
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->phon_letter_max:I

    .line 202
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->phon_letter_begin_end:I

    .line 203
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->weight_matched_spelling:I

    .line 204
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->weight_matched_canon:I

    .line 205
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->weight_matched_phon0:I

    .line 206
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->weight_matched_phon1:I

    .line 207
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->weight_matched_phon2:I

    .line 208
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->weight_mismatch_penalty:I

    .line 209
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->weight_correction_xsmall:I

    .line 210
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->weight_correction_small:I

    .line 211
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->weight_correction_big:I

    .line 212
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->cutoff_relative:I

    .line 213
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->cutoff_absolute:I

    .line 214
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->phon_indexed_len:I

    .line 215
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->extra0:I

    .line 216
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->extra1:I

    .line 217
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->extra2:I

    .line 218
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->exact_mode:I

    .line 219
    return-void
.end method

.method private readHeaderIFV2()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_single_byte:I

    .line 224
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_chartab_len:I

    .line 225
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_sortorder:I

    .line 226
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_maptable:I

    .line 227
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    .line 228
    .local v0, nameOffset:I
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->name_len:I

    .line 232
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->encoding:I

    .line 233
    .local v1, name_encoding:I
    const v2, 0xfdea

    if-ne v1, v2, :cond_0

    .line 234
    const v1, 0xfde9

    .line 236
    :cond_0
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->name_len:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readFromEncoding(III)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->name:Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_extra0:I

    .line 241
    return-void
.end method

.method private final standardCompare([C[C)I
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 578
    const/4 v1, 0x0

    .line 579
    .local v1, i:I
    array-length v2, p1

    .line 580
    .local v2, srcLength:I
    array-length v0, p2

    .line 581
    .local v0, dataLength:I
    :goto_0
    if-ge v1, v2, :cond_0

    if-ge v1, v0, :cond_0

    aget-char v3, p1, v1

    aget-char v4, p2, v1

    if-ne v3, v4, :cond_0

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    :cond_0
    if-lt v1, v2, :cond_1

    if-lt v1, v0, :cond_1

    .line 585
    const/4 v3, 0x0

    .line 598
    :goto_1
    return v3

    .line 587
    :cond_1
    if-lt v1, v2, :cond_2

    move v3, v5

    .line 588
    goto :goto_1

    .line 590
    :cond_2
    if-lt v1, v0, :cond_3

    move v3, v6

    .line 591
    goto :goto_1

    .line 594
    :cond_3
    aget-char v3, p1, v1

    aget-char v4, p2, v1

    if-ge v3, v4, :cond_4

    move v3, v5

    .line 595
    goto :goto_1

    :cond_4
    move v3, v6

    .line 598
    goto :goto_1
.end method


# virtual methods
.method final compare([C[C)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 553
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_collating:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sort_tab:I

    if-nez v1, :cond_0

    .line 554
    invoke-direct {p0, p1, p2}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->standardCompare([C[C)I

    move-result v1

    .line 564
    :goto_0
    return v1

    .line 557
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->compareUnicode([C[C)I

    move-result v0

    .line 560
    .local v0, res:I
    if-nez v0, :cond_1

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->exact_mode:I

    if-eqz v1, :cond_1

    .line 561
    invoke-direct {p0, p1, p2}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->standardCompare([C[C)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 564
    goto :goto_0
.end method

.method convertFromIndexEncoding([BII)[B
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->ligTable:[B

    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->createLigTable()V

    .line 348
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->ligTable:[B

    if-nez v0, :cond_0

    move-object v0, p1

    .line 355
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->ligTable:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/mobipocket/common/parser/UnicodeUtils;->convertIndexEncodingFromWestern([BII[BZ)[B

    move-result-object v0

    goto :goto_0
.end method

.method convertFromUnicodeIndexEncoding([BII)Ljava/lang/String;
    .locals 2
    .parameter "src"
    .parameter "beginIndex"
    .parameter "length"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->pMapTable:[C

    if-nez v0, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->createMapTable()V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->pMapTable:[C

    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_single_byte:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, p2, p3, v0, v1}, Lcom/mobipocket/common/parser/UnicodeUtils;->convertFromUnicodeIndexEncoding([BII[CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method convertToIndexEncoding(Ljava/lang/String;)[C
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 365
    const/16 v0, 0x4e4

    invoke-static {p1, v0}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringToEncoding(Ljava/lang/String;I)[B

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->ligTable:[B

    if-nez v1, :cond_1

    .line 368
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->createLigTable()V

    .line 369
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->ligTable:[B

    if-nez v1, :cond_1

    .line 371
    array-length v1, v0

    new-array v1, v1, [C

    move v2, v4

    .line 374
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 375
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 389
    :goto_1
    return-object v0

    .line 382
    :cond_1
    array-length v1, v0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->ligTable:[B

    const/4 v3, 0x1

    invoke-static {v0, v4, v1, v2, v3}, Lcom/mobipocket/common/parser/UnicodeUtils;->convertIndexEncodingFromWestern([BII[BZ)[B

    move-result-object v0

    .line 384
    array-length v1, v0

    new-array v1, v1, [C

    move v2, v4

    .line 385
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 386
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 389
    goto :goto_1
.end method

.method convertToUnicodeIndexEncoding(Ljava/lang/String;)[C
    .locals 2
    .parameter "str"

    .prologue
    .line 422
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_single_byte:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mobipocket/common/parser/UnicodeUtils;->convertToUnicodeIndexEncoding(Ljava/lang/String;Z[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getChildNBEntry(I)I
    .locals 3
    .parameter "childNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->getEndIdentifierEntryDataIndex(I)I

    move-result v0

    .line 406
    .local v0, beginNBEntryIndex:I
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->setPosition(I)V

    .line 407
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    return v1
.end method

.method public getIndexEncodedString([BII)[C
    .locals 4
    .parameter "bytes"
    .parameter "beginIndex"
    .parameter "length"

    .prologue
    .line 640
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->pMapTable:[C

    if-nez v2, :cond_0

    .line 641
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->createMapTable()V

    .line 644
    :cond_0
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab_size:I

    if-lez v2, :cond_1

    .line 645
    new-array v1, p3, [C

    .line 646
    .local v1, result:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_5

    .line 647
    add-int v2, v0, p2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    .end local v0           #i:I
    .end local v1           #result:[C
    :cond_1
    iget-boolean v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_collating:Z

    if-eqz v2, :cond_4

    .line 651
    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->unicode_single_byte:I

    if-eqz v2, :cond_2

    .line 652
    new-array v1, p3, [C

    .line 653
    .restart local v1       #result:[C
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, p3, :cond_5

    .line 654
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->pMapTable:[C

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 667
    .end local v0           #i:I
    .end local v1           #result:[C
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/mobipocket/common/parser/UnicodeUtils;->stringFromUTF16BE([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 668
    .restart local v1       #result:[C
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    div-int/lit8 v2, p3, 0x2

    if-ge v0, v2, :cond_5

    .line 669
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->pMapTable:[C

    if-eqz v2, :cond_3

    .line 670
    aget-char v2, v1, v0

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->pMapTable:[C

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 671
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->pMapTable:[C

    aget-char v3, v1, v0

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 668
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 678
    .end local v0           #i:I
    .end local v1           #result:[C
    :cond_4
    new-array v1, p3, [C

    .line 679
    .restart local v1       #result:[C
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p3, :cond_5

    .line 680
    add-int v2, v0, p2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 684
    :cond_5
    return-object v1
.end method

.method getNumberStringRecord()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->nb_string_recs:I

    return v0
.end method

.method getStringFromArray([C)Ljava/lang/String;
    .locals 3
    .parameter "a"

    .prologue
    .line 440
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 441
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 442
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    aget-char v2, p1, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_0
    return-object v1
.end method

.method protected init()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/indexes/IndexRecord;->init()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 168
    :goto_0
    return v0

    .line 110
    :cond_0
    const/16 v0, 0x1c

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->setPosition(I)V

    .line 111
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readHeaderIFV0Master()V

    .line 112
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->hsize:I

    const/16 v1, 0x38

    if-le v0, v1, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readHeaderIFV1()V

    .line 115
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->hsize:I

    const/16 v1, 0xa4

    if-le v0, v1, :cond_2

    .line 116
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readHeaderIFV2()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    .line 120
    :cond_2
    :goto_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab_size:I

    if-nez v0, :cond_4

    .line 125
    :cond_3
    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab:I

    .line 126
    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab_size:I

    .line 128
    :cond_4
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab:I

    if-eqz v0, :cond_5

    .line 130
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab:I

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->setPosition(I)V

    .line 132
    :try_start_1
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    sget v1, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->IDX_TYPE_LIGTAB:I

    if-eq v0, v1, :cond_5

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab:I

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab_size:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :cond_5
    :goto_2
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sort_tab:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0x100

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->in:[B

    array-length v1, v1

    if-le v0, v1, :cond_6

    .line 151
    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sort_tab:I

    .line 153
    :cond_6
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sort_tab:I

    if-eqz v0, :cond_7

    .line 155
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sort_tab:I

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->setPosition(I)V

    .line 157
    :try_start_2
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->readInt()I

    move-result v0

    sget v1, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->IDX_TYPE_ORDTAB:I

    if-eq v0, v1, :cond_7

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sort_tab:I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    .line 168
    :cond_7
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab:I

    .line 143
    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->lig_tab_size:I

    goto :goto_2

    .line 163
    :catch_1
    move-exception v0

    iput v2, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sort_tab:I

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public significativeLength([C)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 611
    move v1, v0

    .line 612
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 614
    aget-char v2, p1, v0

    .line 617
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 618
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    aget-char v2, v3, v2

    .line 628
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 629
    add-int/lit8 v1, v0, 0x1

    .line 612
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    :cond_2
    int-to-char v3, v2

    invoke-static {v3}, Lcom/mobipocket/common/parser/UnicodeUtils;->isOrdered(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    int-to-char v2, v2

    invoke-static {v2}, Lcom/mobipocket/common/parser/UnicodeUtils;->sortOrder(C)C

    move-result v2

    goto :goto_1

    .line 632
    :cond_3
    return v1
.end method

.method final sortOrder(CI)C
    .locals 1
    .parameter "a"
    .parameter "tableLength"

    .prologue
    .line 451
    if-ge p1, p2, :cond_0

    .line 452
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/MasterIndexRecord;->sortTable:[C

    aget-char v0, v0, p1

    .line 458
    :goto_0
    return v0

    .line 455
    :cond_0
    invoke-static {p1}, Lcom/mobipocket/common/parser/UnicodeUtils;->isOrdered(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    invoke-static {p1}, Lcom/mobipocket/common/parser/UnicodeUtils;->sortOrder(C)C

    move-result v0

    goto :goto_0

    :cond_1
    move v0, p1

    .line 458
    goto :goto_0
.end method
