.class public Lcom/mobipocket/common/library/reader/book/MobiFileHeader;
.super Ljava/lang/Object;
.source "MobiFileHeader.java"


# static fields
.field private static final BOOKTYPE_BOOK:I = 0x2

.field private static final BOOKTYPE_PALMDOC:I = 0x3

.field public static final BOOKTYPE_TEXT:I = 0x205

.field public static final CP_DocStd:I = 0x2

.field public static final CP_HuffDic:I = 0x48

.field public static final CP_None:I = 0x1

.field public static final CREATOR_MOBI:I = 0x4d4f4249

.field private static final CREATOR_READ:I = 0x52454164

.field public static final CT_TextHTML:I = 0x2

.field public static final CT_TextPlain:I = 0x1

.field public static final CT_Unknown:I = 0x0

.field public static final FFV_1:I = 0x1

.field public static final FFV_2:I = 0x2

.field public static final FFV_3:I = 0x3

.field public static final FFV_4:I = 0x4

.field public static final FFV_5:I = 0x5

.field public static final FFV_6:I = 0x6

.field public static final FFV_7:I = 0x7

.field public static final NONE32:I = -0x1

.field public static final NO_FFV:I = 0x0

.field protected static final REC_TYPE_CRYPTO:I = 0x43

.field public static final SIZEOF_DOCHEADERRECORD_V1:I = 0x10

.field private static final SIZEOF_MBPHEADERRECORD_V2:I = 0x18

.field protected static final SIZEOF_MBPHEADERRECORD_V3:I = 0x74

.field public static final SIZEOF_MBPHEADERRECORD_V4:I = 0xd0

.field private static final SIZEOF_MBPHEADERRECORD_V5:I = 0xe0

.field private static final SIZEOF_MBPHEADERRECORD_V6:I = 0xe4

.field private static final SIZEOF_MBPHEADERRECORD_V6_EXTENDED:I = 0xe8

.field public static final TB_EntryPositionInfo:I = 0x2

.field public static final TB_MultiBytesCharacters:I = 0x1

.field public static final TB_NonCrossablePoints:I = 0x4

.field public static final TB_Nothing:I = 0x0

.field private static final TYPE_BOOK:I = 0x424f4f4b

.field private static final TYPE_TEXT:I = 0x54455874


# instance fields
.field public additional_records:I

.field public additional_records_count:I

.field public base_language:I

.field public cmp_abspostbl:I

.field public cmp_abspostbllen:I

.field public cmp_hufdic:I

.field public cmp_hufdiclen:I

.field public content_type:I

.field public creator:I

.field public dic_info:S

.field public dic_lang_in:I

.field public dic_lang_ou:I

.field public dummy:S

.field public dwStoryLen:I

.field public embed_base:I

.field public embedded_objects_idx:I

.field public embedded_objects_types:I

.field public encoding:I

.field public flow_count:I

.field public flows:I

.field public frames_content:I

.field public frames_content_len:I

.field public frames_layout:I

.field public frames_layout_len:I

.field public hsize:I

.field public idx_dic:I

.field public idx_extra_0:I

.field public idx_extra_1:I

.field public idx_extra_2:I

.field public idx_extra_3:I

.field public idx_extra_4:I

.field public idx_extra_5:I

.field public idx_inflect:I

.field public idx_keys:I

.field public idx_names:I

.field public idx_slaves:I

.field public idx_toc:I

.field public index_base:I

.field public magic:I

.field public master_fname:I

.field public master_fname_len:I

.field public master_name_data:[B

.field public min_version:I

.field public modificationDate:I

.field private moreFFVData:[B

.field private pTextType:I

.field public pdbName:Ljava/lang/String;

.field public random_id:I

.field public refresh_url_len:I

.field public refresh_url_offset:I

.field public security_flags:I

.field public special_features:I

.field private title:Ljava/lang/String;

.field public title_len:I

.field public title_offset:I

.field public trailingByteTypes:I

.field public type:I

.field public version:I

.field public vouchers_len:I

.field public vouchers_offset:I

.field public vouchers_tblen:I

.field public wNumRecs:I

.field public wRecSize:S

.field public wSpare:S

.field public wSpare2:S

.field public wVersion:S


# direct methods
.method public constructor <init>(SIISSIIII)V
    .locals 3
    .parameter "compression"
    .parameter "storyLength"
    .parameter "nbTextRecords"
    .parameter "recordSize"
    .parameter "encryption"
    .parameter "contentType"
    .parameter "bookEncoding"
    .parameter "randomID"
    .parameter "ffv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/16 v0, 0x4e4

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->encoding:I

    .line 137
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->random_id:I

    .line 156
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->base_language:I

    .line 178
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->flow_count:I

    .line 194
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->trailingByteTypes:I

    .line 198
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_toc:I

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->moreFFVData:[B

    .line 210
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->pTextType:I

    .line 214
    iput-short v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_info:S

    .line 260
    iput-short p1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wVersion:S

    .line 261
    iput p2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dwStoryLen:I

    .line 262
    iput p3, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wNumRecs:I

    .line 263
    iput-short p4, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wRecSize:S

    .line 264
    iput-short p5, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wSpare2:S

    .line 266
    const v0, 0x4d4f4249

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->magic:I

    .line 267
    packed-switch p9, :pswitch_data_0

    .line 282
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->BOOK_NOT_SUPPORTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :pswitch_0
    const/16 v0, 0x18

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    .line 285
    :goto_0
    iput p6, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->content_type:I

    .line 286
    iput p7, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->encoding:I

    .line 287
    iput p8, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->random_id:I

    .line 288
    iput p9, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    .line 290
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_dic:I

    .line 291
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_inflect:I

    .line 292
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_names:I

    .line 293
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_keys:I

    .line 294
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_0:I

    .line 295
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_1:I

    .line 296
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_2:I

    .line 297
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_3:I

    .line 298
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_4:I

    .line 299
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_5:I

    .line 300
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->index_base:I

    .line 301
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_offset:I

    .line 302
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_len:I

    .line 303
    const-string v0, ""

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title:Ljava/lang/String;

    .line 304
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->base_language:I

    .line 305
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_lang_in:I

    .line 306
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_lang_ou:I

    .line 307
    const/4 v0, 0x4

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->min_version:I

    .line 308
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->embed_base:I

    .line 309
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_hufdic:I

    .line 310
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_hufdiclen:I

    .line 311
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_abspostbl:I

    .line 312
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_abspostbllen:I

    .line 313
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->special_features:I

    .line 315
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->master_name_data:[B

    .line 316
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_slaves:I

    .line 317
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_offset:I

    .line 318
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_tblen:I

    .line 319
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_len:I

    .line 320
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->security_flags:I

    .line 321
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->refresh_url_offset:I

    .line 322
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->refresh_url_len:I

    .line 323
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->flows:I

    .line 324
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->flow_count:I

    .line 325
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->frames_content:I

    .line 326
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->frames_content_len:I

    .line 327
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->frames_layout:I

    .line 328
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->frames_layout_len:I

    .line 329
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->master_fname:I

    .line 330
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->master_fname_len:I

    .line 333
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_toc:I

    .line 335
    return-void

    .line 273
    :pswitch_1
    const/16 v0, 0x74

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    goto :goto_0

    .line 276
    :pswitch_2
    const/16 v0, 0xd0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>([B[BZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/16 v0, 0x4e4

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->encoding:I

    .line 137
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->random_id:I

    .line 156
    iput v3, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->base_language:I

    .line 178
    iput v3, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->flow_count:I

    .line 194
    iput v3, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->trailingByteTypes:I

    .line 198
    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_toc:I

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->moreFFVData:[B

    .line 210
    iput v3, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->pTextType:I

    .line 214
    iput-short v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_info:S

    .line 346
    if-eqz p1, :cond_0

    .line 348
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-direct {v0, p1, v4}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 350
    const/16 v1, 0x20

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->pdbName:Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->pdbName:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title:Ljava/lang/String;

    .line 352
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 353
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->modificationDate:I

    .line 354
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 355
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->type:I

    .line 356
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->creator:I

    .line 357
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pdbName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->pdbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";modificationDate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->modificationDate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";type :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";creator :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->creator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    :goto_0
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-direct {v0, p2, v4}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 369
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->type:I

    const v2, 0x424f4f4b

    if-ne v1, v2, :cond_f

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->creator:I

    const v2, 0x4d4f4249

    if-ne v1, v2, :cond_f

    .line 371
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->readDocHeader(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V

    .line 372
    array-length v1, p2

    const/16 v2, 0x28

    if-lt v1, v2, :cond_e

    .line 375
    :try_start_1
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dummy:S
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    .line 378
    :goto_1
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->readFFV2(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V

    .line 381
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->magic:I

    const v2, 0x4d4f4249

    if-ne v1, v2, :cond_d

    .line 383
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_4

    .line 384
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    if-ge v1, v5, :cond_1

    .line 385
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->BAD_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :catch_0
    move-exception v0

    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->CORRUPTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    const v0, 0x424f4f4b

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->type:I

    .line 366
    const v0, 0x4d4f4249

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->creator:I

    goto :goto_0

    .line 387
    :cond_1
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    const/16 v2, 0x74

    if-ge v1, v2, :cond_2

    .line 388
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->CORRUPTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_2
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    const/16 v2, 0xd0

    if-ge v1, v2, :cond_3

    .line 391
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->CORRUPTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_3
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    if-lt v1, v6, :cond_5

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    const/16 v2, 0xe4

    if-ge v1, v2, :cond_5

    .line 396
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->CORRUPTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_4
    iput v5, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    .line 401
    :cond_5
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_6

    .line 402
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->readFFV3(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V

    .line 404
    :cond_6
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_7

    .line 405
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->readFFV4(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V

    .line 407
    :cond_7
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    if-ge v1, v6, :cond_8

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    const/16 v2, 0xe0

    if-lt v1, v2, :cond_9

    .line 410
    :cond_8
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->readFFV5(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V

    .line 413
    :cond_9
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    if-lt v1, v6, :cond_a

    .line 415
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->readFFV6(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V

    .line 417
    :cond_a
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    if-lt v1, v6, :cond_b

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    const/16 v2, 0xe8

    if-lt v1, v2, :cond_b

    .line 419
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->readFFV6Extended(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V

    .line 423
    :cond_b
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 424
    if-lez v1, :cond_c

    .line 430
    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->readMoreFFVData(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;I)V

    .line 461
    :cond_c
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    This book was FFV :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    return-void

    .line 435
    :cond_d
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->BAD_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_e
    iput v3, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    goto :goto_2

    .line 438
    :cond_f
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->type:I

    const v2, 0x54455874

    if-ne v1, v2, :cond_13

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->creator:I

    const v2, 0x52454164

    if-ne v1, v2, :cond_13

    .line 440
    array-length v1, p2

    const/16 v2, 0xa6

    if-le v1, v2, :cond_10

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getByte(I)B

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_10

    .line 441
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->readDocHeader(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V

    .line 442
    iput v4, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    .line 443
    iput v5, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->content_type:I

    .line 456
    :goto_3
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->content_type:I

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->computeTextType(I)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->pTextType:I

    goto :goto_2

    .line 444
    :cond_10
    array-length v1, p2

    const/16 v2, 0xe

    if-lt v1, v2, :cond_12

    .line 445
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->readDocHeader(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V

    .line 446
    iget-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wSpare2:S

    if-ne v0, v4, :cond_11

    .line 447
    iput v4, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    .line 448
    iput v5, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->content_type:I

    goto :goto_3

    .line 450
    :cond_11
    iput v3, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    .line 451
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->content_type:I

    goto :goto_3

    .line 454
    :cond_12
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->PALMDOC_WRONG_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_13
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->BAD_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method public static getGUID(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xa

    .line 549
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 550
    const/4 v1, 0x7

    :goto_0
    if-ltz v1, :cond_1

    .line 552
    shl-int/lit8 v2, v1, 0x2

    ushr-int v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    .line 553
    if-lt v2, v3, :cond_0

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x41

    :goto_1
    int-to-char v2, v2

    .line 554
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 550
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 553
    :cond_0
    add-int/lit8 v2, v2, 0x30

    goto :goto_1

    .line 557
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPdbName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 576
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 578
    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 580
    :cond_0
    const/4 v0, 0x0

    .line 583
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRandomId(Ljava/lang/String;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 564
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 566
    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 568
    :cond_0
    const/4 v0, -0x1

    .line 571
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static isValidEbook([B)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 219
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-direct {v0, p0, v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 220
    const/16 v1, 0x3c

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 224
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v1

    .line 225
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 229
    const v2, 0x424f4f4b

    if-ne v1, v2, :cond_0

    const v2, 0x4d4f4249

    if-eq v0, v2, :cond_1

    :cond_0
    const v2, 0x54455874

    if-ne v1, v2, :cond_2

    const v1, 0x52454164

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v3

    .line 236
    :goto_0
    return v0

    .line 227
    :catch_0
    move-exception v0

    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->CORRUPTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readDocHeader(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 590
    :try_start_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wVersion:S

    .line 591
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wSpare:S

    .line 592
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dwStoryLen:I

    .line 593
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wNumRecs:I

    .line 594
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wNumRecs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->embed_base:I

    .line 595
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wRecSize:S

    .line 596
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wSpare2:S

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wVersion:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  dwStoryLen :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dwStoryLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  wNumRecs :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wNumRecs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  wRecSize :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wRecSize:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  wSpare2 :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wSpare2:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readFFV2(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 607
    :try_start_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->magic:I

    .line 608
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    .line 609
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->content_type:I

    .line 610
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->content_type:I

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->computeTextType(I)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->pTextType:I

    .line 611
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->encoding:I

    .line 613
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->random_id:I

    .line 614
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "magic : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->magic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  hsize :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  type :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  content_type :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->content_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  encoding :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->encoding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->encoding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  random_id :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->random_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  version :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readFFV3(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 625
    :try_start_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_dic:I

    .line 626
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_inflect:I

    .line 627
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_names:I

    .line 628
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_keys:I

    .line 629
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_0:I

    .line 630
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_1:I

    .line 631
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_2:I

    .line 632
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_3:I

    .line 633
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_4:I

    .line 634
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_5:I

    .line 635
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->index_base:I

    .line 636
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_offset:I

    .line 637
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_len:I

    .line 638
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->base_language:I

    .line 642
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_lang_in:I

    .line 643
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_lang_ou:I

    .line 644
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_dic:I

    if-eq v0, v1, :cond_3

    .line 646
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_info:S

    .line 647
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_lang_in:I

    ushr-int/lit8 v0, v0, 0x1f

    if-nez v0, :cond_0

    .line 649
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_lang_in:I

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_info:S

    .line 650
    iget-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_info:S

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_lang_ou:I

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_info:S

    .line 658
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->min_version:I

    .line 659
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->embed_base:I

    .line 660
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_hufdic:I

    .line 661
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_hufdiclen:I

    .line 662
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_abspostbl:I

    .line 663
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_abspostbllen:I

    .line 664
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->special_features:I

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_dic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_inflect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_names:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_keys:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->index_base:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "titleOffset :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  title_len :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  title :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; minVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->min_version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; embedBase:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->embed_base:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Huffman : hufdic : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_hufdic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  hufdiclen :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_hufdiclen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";  absTable :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_abspostbl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; tableLen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_abspostbllen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 669
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->encoding:I

    const v1, 0xfde9

    if-ne v0, v1, :cond_4

    .line 671
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_offset:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_len:I

    invoke-virtual {p1, v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readUTF8String(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title:Ljava/lang/String;

    .line 679
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 683
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->pdbName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title:Ljava/lang/String;

    .line 685
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobipocket/common/parser/TernaryTree;->html_entities_code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title:Ljava/lang/String;

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New big title :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :goto_2
    return-void

    .line 655
    :cond_3
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_info:S

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 673
    :cond_4
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->encoding:I

    const/16 v1, 0x4e4

    if-ne v0, v1, :cond_1

    .line 675
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_offset:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_len:I

    invoke-virtual {p1, v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readWesternString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private readFFV4(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 696
    const/16 v0, 0x20

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->master_name_data:[B

    .line 697
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_slaves:I

    .line 698
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_offset:I

    .line 699
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_tblen:I

    .line 700
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_len:I

    .line 701
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->security_flags:I

    .line 702
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->refresh_url_offset:I

    .line 703
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->refresh_url_len:I

    .line 704
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->flows:I

    .line 705
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->flow_count:I

    .line 706
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->frames_content:I

    .line 707
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->frames_content_len:I

    .line 708
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->frames_layout:I

    .line 709
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->frames_layout_len:I

    .line 710
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->master_fname:I

    .line 711
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->master_fname_len:I

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FFV4: idx_slaves :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_slaves:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; voucherOffset :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; voucher_tblen :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_tblen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; voucher_len :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; flow_count :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->flow_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readFFV5(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 722
    :try_start_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->additional_records:I

    .line 723
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->additional_records_count:I

    .line 724
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->embedded_objects_idx:I

    .line 725
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->embedded_objects_types:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readFFV6(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 734
    :try_start_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->trailingByteTypes:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readFFV6Extended(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 744
    :try_start_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_toc:I

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "header FFV6, idx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_toc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readMoreFFVData(Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 754
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->moreFFVData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public computeTextType(I)I
    .locals 1
    .parameter "contentType"

    .prologue
    .line 471
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 473
    const/4 v0, 0x0

    .line 483
    :goto_0
    return v0

    .line 477
    :cond_0
    const/16 v0, 0x205

    if-ne p1, v0, :cond_1

    .line 479
    const/4 v0, 0x1

    goto :goto_0

    .line 483
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->pdbName:Ljava/lang/String;

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->random_id:I

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->getGUID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMasterName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 524
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->master_name_data:[B

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dwStoryLen:I

    return v0
.end method

.method public getTextType()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->pTextType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isStrictHTML()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 514
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->min_version:I

    if-eq v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextType(I)V
    .locals 0
    .parameter "textType"

    .prologue
    .line 495
    iput p1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->pTextType:I

    .line 496
    return-void
.end method

.method public write([BI)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 769
    new-instance v0, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 773
    :try_start_0
    iget-short v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wVersion:S

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeShort(S)V

    .line 774
    iget-short v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wSpare:S

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeShort(S)V

    .line 775
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dwStoryLen:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 776
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wNumRecs:I

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeShort(S)V

    .line 777
    iget-short v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wRecSize:S

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeShort(S)V

    .line 778
    iget-short v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->wSpare2:S

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeShort(S)V

    .line 780
    iget-short v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dummy:S

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeShort(S)V

    .line 782
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->magic:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 783
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 784
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->content_type:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 785
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->encoding:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 786
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->random_id:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 787
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 789
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 791
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v0

    .line 908
    :goto_0
    return v0

    .line 793
    :cond_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 795
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->moreFFVData:[B

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeBytes([B)V

    .line 796
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v0

    goto :goto_0

    .line 800
    :cond_1
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_dic:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 801
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_inflect:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 802
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_names:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 803
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_keys:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 804
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_0:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 805
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_1:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 806
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_2:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 807
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_3:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 808
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_4:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 809
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_extra_5:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 811
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->index_base:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 813
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_offset:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 814
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->title_len:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 816
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->base_language:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 817
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_lang_in:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 818
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_lang_ou:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 820
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->min_version:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 821
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->embed_base:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 822
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_hufdic:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 823
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_hufdiclen:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 824
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_abspostbl:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 825
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->cmp_abspostbllen:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 826
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->special_features:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 828
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 830
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v0

    goto/16 :goto_0

    .line 832
    :cond_2
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 834
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->moreFFVData:[B

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeBytes([B)V

    .line 835
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v0

    goto/16 :goto_0

    .line 839
    :cond_3
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->master_name_data:[B

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeBytes([B)V

    .line 840
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_slaves:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 841
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_offset:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 842
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_tblen:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 843
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_len:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 844
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->security_flags:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 845
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->refresh_url_offset:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 846
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->refresh_url_len:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 847
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->flows:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 848
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->flow_count:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 849
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->frames_content:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 850
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->frames_content_len:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 851
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->frames_layout:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 852
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->frames_layout_len:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 853
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->master_fname:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 854
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->master_fname_len:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 856
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v2

    if-gt v1, v2, :cond_4

    .line 858
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v0

    goto/16 :goto_0

    .line 860
    :cond_4
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 862
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->moreFFVData:[B

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeBytes([B)V

    .line 863
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v0

    goto/16 :goto_0

    .line 867
    :cond_5
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->additional_records:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 868
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->additional_records_count:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 869
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->embedded_objects_idx:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 870
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->embedded_objects_types:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 872
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v2

    if-gt v1, v2, :cond_6

    .line 874
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v0

    goto/16 :goto_0

    .line 876
    :cond_6
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 878
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->moreFFVData:[B

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeBytes([B)V

    .line 879
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v0

    goto/16 :goto_0

    .line 883
    :cond_7
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->trailingByteTypes:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 885
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    const/16 v2, 0xe8

    if-lt v1, v2, :cond_8

    .line 887
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_toc:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 889
    :cond_8
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v2

    if-gt v1, v2, :cond_9

    .line 891
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v0

    goto/16 :goto_0

    .line 893
    :cond_9
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->version:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_a

    .line 895
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->moreFFVData:[B

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeBytes([B)V

    .line 896
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v0

    goto/16 :goto_0

    .line 899
    :cond_a
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->hsize:I

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v2

    if-le v1, v2, :cond_b

    .line 901
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->moreFFVData:[B

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :cond_b
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v0

    goto/16 :goto_0

    .line 905
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto/16 :goto_0
.end method
