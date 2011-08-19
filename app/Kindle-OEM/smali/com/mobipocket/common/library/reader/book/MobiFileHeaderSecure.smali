.class public Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;
.super Lcom/mobipocket/common/library/reader/book/MobiFileHeader;
.source "MobiFileHeaderSecure.java"


# static fields
.field private static final INTERNAL_READER_KEY:[B = null

.field private static final MBPCIPHER_KEY_SIZE:I = 0x10

.field private static final OE_SE_Corrupted:I = 0x8

.field private static final OE_SE_Expired:I = 0x6

.field private static final OE_SE_NeedNewerReader:I = 0xb

.field private static final OE_SE_None:I = 0x0

.field private static final OE_SE_NotYetActive:I = 0x7

.field private static final OE_SecurityNotPassed:I = 0x4

.field private static final OE_SecurityPasswd:I = 0x5

.field private static final OE_SecurityType:I = 0x3

.field private static OFFSET_VOUCHER_ENCRYPTED_PART:I = 0x0

.field private static final PRIVATE_KEY:[B = null

.field private static final SECURE_ALL:I = 0x7

.field private static final SECURE_ENCRYPT:I = 0x1

.field private static final SECURE_KEY_LENGTH:I = 0x11

.field private static final SECURE_PASSWORD:I = 0x2

.field private static final SECURE_SIGNATURE_LENGTH:I = 0x10

.field private static final SECURE_UNIQUEID:I = 0x4

.field private static final SGF_CD_MEDIA:I = 0x100

.field private static final SGF_DESKTOP_READABLE:I = 0x200

.field private static final SGF_HAS_PASSWORD:I = 0x1

.field public static final SGF_HAS_TIMEBOMB:I = 0x2

.field private static final SGF_KINDLE_READABLE:I = 0x800

.field private static final SGF_MC_MEDIA:I = 0x80

.field private static final SGF_PDA_READABLE:I = 0x400

.field private static final SGF_PRINTABLE:I = -0x80000000

.field private static SIZEOF_VOUCHER_ENCRYPTED_PART:I = 0x0

.field private static final SL_Content:I = 0x1

.field private static final SL_None:I = 0x0

.field private static final SL_Password:I = 0x2

.field private static final SL_Pid:I = 0x4

.field private static final SVF_CD_MEDIA:I = 0x100

.field private static final SVF_CRYPT_INTERNAL:I = 0x3

.field private static final SVF_CRYPT_MACHINEID:I = 0x1

.field private static final SVF_CRYPT_MASK:I = 0x1f

.field private static final SVF_CRYPT_PASSWORD:I = 0x10

.field private static final SVF_CRYPT_PUBLISHER:I = 0x4

.field private static final SVF_CRYPT_STORAGEID:I = 0x2

.field private static final SVF_DESKTOP_READABLE:I = 0x200

.field private static final SVF_ENCRYPTED:I = 0x40

.field private static final SVF_KINDLE_READABLE:I = 0x800

.field private static final SVF_MC_MEDIA:I = 0x80

.field private static final SVF_MEDIA_MASK:I = 0x180

.field private static final SVF_NONE:I = 0x0

.field private static final SVF_NOTARGET:I = 0x20

.field private static final SVF_PDA_READABLE:I = 0x400

.field private static final SVF_PLATFORM_MASK:I = 0xe00

.field private static final SVF_PRINTABLE:I = -0x80000000

.field private static final SVF_SAFE_UNKNOWN_FLAGS:I = 0x7f000000

.field private static final SVF_UNKNOWN_FLAGS:I = 0xfff1a0


# instance fields
.field private book_key:[B

.field private mHeader:[B

.field timebomb_start:I

.field timebomb_stop:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x10

    .line 21
    new-array v6, v9, [B

    fill-array-data v6, :array_0

    sput-object v6, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->PRIVATE_KEY:[B

    .line 27
    new-array v6, v9, [B

    fill-array-data v6, :array_1

    sput-object v6, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->INTERNAL_READER_KEY:[B

    .line 35
    const v4, 0x7b2d932a

    .line 36
    .local v4, xorKey:I
    const v5, -0x573db924

    .line 37
    .local v5, xorKey2:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v10, :cond_1

    .line 39
    and-int/lit16 v6, v4, 0xff

    int-to-byte v0, v6

    .line 40
    .local v0, b:B
    and-int/lit16 v6, v5, 0xff

    int-to-byte v1, v6

    .line 42
    .local v1, b2:B
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v10, :cond_0

    .line 44
    sget-object v6, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->INTERNAL_READER_KEY:[B

    shl-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v3

    aget-byte v8, v6, v7

    xor-int/2addr v8, v0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 45
    sget-object v6, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->PRIVATE_KEY:[B

    shl-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v3

    aget-byte v8, v6, v7

    xor-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 48
    :cond_0
    ushr-int/lit8 v4, v4, 0x8

    .line 49
    ushr-int/lit8 v5, v5, 0x8

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v0           #b:B
    .end local v1           #b2:B
    .end local v3           #j:I
    :cond_1
    sput v9, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->OFFSET_VOUCHER_ENCRYPTED_PART:I

    .line 154
    const/16 v6, 0x20

    sput v6, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->SIZEOF_VOUCHER_ENCRYPTED_PART:I

    return-void

    .line 21
    :array_0
    .array-data 0x1
        0x8dt
        0x98t
        0x9ft
        0x8at
        0x3t
        0x16t
        0xbt
        0x13t
        0xf4t
        0xf5t
        0xf7t
        0x90t
        0xfdt
        0xeat
        0xfbt
        0xf2t
    .end array-data

    .line 27
    :array_1
    .array-data 0x1
        0x58t
        0x12t
        0x19t
        0x9at
        0x27t
        0x61t
        0x70t
        0x59t
        0xf2t
        0x24t
        0x2ct
        0xfbt
        0x99t
        0x9bt
        0x44t
        0xedt
    .end array-data
.end method

.method public constructor <init>([B[BZ)V
    .locals 1
    .parameter "pdbHeader"
    .parameter "mobiHeader"
    .parameter "readAllData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;-><init>([B[BZ)V

    .line 158
    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->timebomb_start:I

    .line 159
    iput v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->timebomb_stop:I

    .line 167
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->mHeader:[B

    .line 168
    return-void
.end method

.method private final getPIDFromStorageSerial(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "serial"

    .prologue
    .line 735
    const-string v0, "-"

    .line 736
    .local v0, rep:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    return-object v0
.end method

.method private static getTamperProofKeys([Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;)[B
    .locals 3
    .parameter "xhd"

    .prologue
    .line 799
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eqz p0, :cond_1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 801
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getIdentifier()I

    move-result v1

    const/16 v2, 0xd1

    if-ne v1, v2, :cond_0

    .line 803
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v1

    .line 807
    :goto_1
    return-object v1

    .line 799
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 807
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getTamperProofValues([B[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;I)[[B
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 813
    move-object v0, v2

    check-cast v0, [[B

    move-object v1, v0

    .line 814
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 816
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_1

    .line 818
    check-cast v2, [[B

    move-object v1, v2

    .line 861
    :cond_0
    :goto_0
    return-object v1

    .line 823
    :cond_1
    array-length v1, p0

    div-int/lit8 v1, v1, 0x5

    new-array v1, v1, [I

    .line 824
    array-length v3, p0

    div-int/lit8 v3, v3, 0x5

    new-array v3, v3, [I

    move v4, v10

    .line 826
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_2

    .line 828
    div-int/lit8 v5, v4, 0x5

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v4, 0x4

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    aput v6, v1, v5

    .line 830
    div-int/lit8 v5, v4, 0x5

    aget-byte v6, p0, v4

    aput v6, v3, v5

    .line 831
    add-int/lit8 v4, v4, 0x5

    goto :goto_1

    .line 835
    :cond_2
    array-length v4, v1

    new-array v4, v4, [[B

    move v5, v10

    .line 836
    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_7

    .line 838
    aput-object v2, v4, v5

    move v6, v10

    .line 839
    :goto_3
    array-length v7, p1

    if-ge v6, v7, :cond_6

    .line 841
    aget-object v7, p1, v6

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getIdentifier()I

    move-result v7

    aget v8, v1, v5

    if-ne v7, v8, :cond_3

    .line 843
    aget v7, v3, v5

    if-nez v7, :cond_4

    .line 844
    aget-object v7, p1, v6

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v7

    aput-object v7, v4, v5

    .line 839
    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 849
    :cond_4
    :try_start_0
    new-instance v7, Ljava/lang/String;

    aget-object v8, p1, v6

    invoke-virtual {v8}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v8

    const/16 v9, 0x4e4

    if-ne p2, v9, :cond_5

    const-string v9, "WINDOWS-1252"

    :goto_5
    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 850
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    aput-object v7, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 854
    :catch_0
    move-exception v7

    aget-object v7, p1, v6

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;->getBinaryValue()[B

    move-result-object v7

    aput-object v7, v4, v5

    goto :goto_4

    .line 849
    :cond_5
    :try_start_1
    const-string v9, "UTF-8"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 836
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    move-object v1, v4

    goto/16 :goto_0
.end method

.method public static setVouchers([B[[B)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 747
    move v0, v6

    move v1, v6

    .line 748
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 750
    aget-object v2, p1, v0

    array-length v2, v2

    add-int/2addr v1, v2

    .line 751
    aget-object v2, p1, v0

    array-length v2, v2

    sget v3, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->OFFSET_VOUCHER_ENCRYPTED_PART:I

    sget v4, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->SIZEOF_VOUCHER_ENCRYPTED_PART:I

    add-int/2addr v3, v4

    if-eq v2, v3, :cond_0

    move v0, v6

    .line 794
    :goto_1
    return v0

    .line 748
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    :cond_1
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, p0, v3}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;-><init>([B[BZ)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    iget v2, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_len:I

    if-le v1, v2, :cond_2

    move v0, v6

    .line 767
    goto :goto_1

    .line 762
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_1

    .line 770
    :cond_2
    new-instance v1, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    invoke-direct {v1, p0, v7}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 771
    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 773
    :try_start_1
    array-length v2, p1

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt(I)V

    .line 774
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 775
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->getPosition()I

    move-result v1

    move v2, v6

    .line 776
    :goto_2
    if-ge v2, v5, :cond_3

    .line 778
    add-int v3, v1, v2

    array-length v4, p1

    sub-int/2addr v4, v7

    aget-object v4, p1, v4

    aget-byte v4, v4, v2

    aput-byte v4, p0, v3
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v1

    :cond_3
    move v1, v6

    .line 783
    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 787
    aget-object v2, p1, v1

    const/16 v3, 0x43

    invoke-static {v2, v6, v7, v3}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->writeInt([BIZI)V

    .line 788
    aget-object v2, p1, v1

    iget v3, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->vouchers_offset:I

    sget v4, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->OFFSET_VOUCHER_ENCRYPTED_PART:I

    sget v5, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->SIZEOF_VOUCHER_ENCRYPTED_PART:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    aget-object v4, p1, v1

    array-length v4, v4

    invoke-static {v2, v6, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v0, v7

    .line 794
    goto :goto_1
.end method

.method private test_security_level1([BIILcom/amazon/system/security/Security;)I
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 659
    const/16 v3, 0x33

    move/from16 v0, p3

    move v1, v3

    if-ge v0, v1, :cond_0

    .line 662
    const/16 v3, 0x8

    .line 730
    :goto_0
    return v3

    .line 666
    :cond_0
    const/16 v3, 0x11

    new-array v7, v3, [B

    .line 668
    const/16 v3, 0x22

    new-array v14, v3, [B

    .line 671
    add-int/lit8 v15, p2, 0x11

    .line 672
    new-instance v3, Lcom/mobipocket/common/util/Cipher;

    invoke-direct {v3}, Lcom/mobipocket/common/util/Cipher;-><init>()V

    .line 673
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 674
    sget-object v5, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->PRIVATE_KEY:[B

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v5, v6, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    const/4 v8, 0x0

    const/16 v9, 0x11

    const/4 v10, 0x1

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/mobipocket/common/util/Cipher;->code([B[BI[BIIZ)V

    .line 678
    const/4 v11, 0x0

    const/16 v12, 0x22

    const/4 v13, 0x1

    move-object v6, v3

    move-object/from16 v8, p1

    move v9, v15

    move-object v10, v14

    invoke-virtual/range {v6 .. v13}, Lcom/mobipocket/common/util/Cipher;->code([B[BI[BIIZ)V

    .line 679
    const/4 v3, 0x0

    aget-byte v3, v14, v3

    .line 681
    and-int/lit16 v4, v3, 0xff

    const/4 v5, 0x7

    if-le v4, v5, :cond_1

    .line 683
    const/16 v3, 0x8

    .line 684
    goto :goto_0

    .line 688
    :cond_1
    and-int/lit8 v4, v3, 0x1

    if-lez v4, :cond_2

    .line 690
    const/16 v4, 0x10

    new-array v4, v4, [B

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->book_key:[B

    .line 691
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->book_key:[B

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v8, 0x10

    invoke-static {v7, v4, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 699
    :goto_1
    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_7

    .line 703
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p4

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/amazon/system/security/Security;->getPassword(II)Ljava/lang/String;

    move-result-object v3

    .line 704
    if-eqz v3, :cond_7

    .line 707
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 708
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    const/16 v6, 0x10

    if-ge v5, v6, :cond_3

    .line 710
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 708
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 695
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->book_key:[B

    goto :goto_1

    .line 712
    :cond_3
    const/4 v3, 0x1

    .line 713
    const/4 v5, 0x0

    move/from16 v16, v5

    move v5, v3

    move/from16 v3, v16

    :goto_3
    const/16 v6, 0x10

    if-ge v3, v6, :cond_4

    .line 715
    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v14, v6

    if-nez v6, :cond_5

    .line 720
    :cond_4
    if-nez v5, :cond_7

    .line 722
    const/4 v3, 0x5

    .line 723
    goto/16 :goto_0

    .line 717
    :cond_5
    aget-byte v6, v4, v3

    add-int/lit8 v7, v3, 0x2

    aget-byte v7, v14, v7

    if-eq v6, v7, :cond_6

    .line 718
    const/4 v5, 0x0

    .line 713
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 729
    :cond_7
    const/4 v3, 0x0

    .line 730
    goto/16 :goto_0
.end method

.method private test_security_level2([BIIIILcom/amazon/system/security/Security;Ljava/lang/String;)I
    .locals 36
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v13, Lcom/mobipocket/common/util/Cipher;

    invoke-direct {v13}, Lcom/mobipocket/common/util/Cipher;-><init>()V

    .line 340
    const/4 v5, 0x0

    .line 341
    const/4 v6, 0x0

    .line 342
    const/4 v7, 0x2

    .line 343
    const/4 v8, 0x0

    .line 345
    const/4 v9, 0x0

    .line 346
    const/4 v10, 0x0

    .line 349
    and-int/lit8 v11, p5, 0x1

    if-eqz v11, :cond_1

    .line 351
    const/4 v5, 0x5

    .line 352
    const/4 v11, 0x2

    .line 354
    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p6

    move v1, v12

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/amazon/system/security/Security;->getPassword(II)Ljava/lang/String;

    move-result-object v12

    .line 355
    if-eqz v12, :cond_23

    .line 357
    const/16 v9, 0x10

    new-array v9, v9, [B

    .line 358
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v10, v14, :cond_0

    const/16 v14, 0x10

    if-ge v10, v14, :cond_0

    .line 360
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v9, v10

    .line 358
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 362
    :cond_0
    const/4 v10, 0x1

    :goto_1
    move-object v14, v9

    move v15, v10

    move/from16 v16, v5

    move v5, v11

    .line 371
    :goto_2
    sget v9, Lcom/amazon/system/security/Security;->STORAGE_TYPE_UNKNOW:I

    .line 374
    new-instance v10, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;

    invoke-direct {v10}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;-><init>()V

    .line 375
    const/4 v11, 0x0

    .line 378
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->mHeader:[B

    move-object v12, v0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->loadFromBookHeader(Lcom/mobipocket/common/library/reader/book/MobiFileHeader;[B)V

    .line 379
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;->getItems()[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object/from16 v17, v10

    .line 383
    :goto_3
    const/4 v10, 0x0

    move/from16 v18, v10

    move/from16 v19, v6

    move v6, v5

    move v5, v9

    move/from16 v34, v8

    move v8, v7

    move/from16 v7, v34

    .line 391
    :goto_4
    const/16 v9, 0x10

    move v0, v9

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 395
    packed-switch v8, :pswitch_data_0

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    .line 466
    :goto_5
    const/4 v5, 0x0

    move/from16 v25, v19

    move/from16 v19, v5

    .line 484
    :goto_6
    const/16 v26, 0x0

    .line 485
    if-eqz v15, :cond_9

    .line 487
    if-nez v19, :cond_8

    .line 489
    or-int/lit8 v27, v24, 0x10

    .line 490
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v7, v20

    move-object/from16 v9, v20

    invoke-virtual/range {v5 .. v12}, Lcom/mobipocket/common/util/Cipher;->code([B[BI[BIIZ)V

    move/from16 v5, v27

    .line 497
    :goto_7
    add-int/lit8 v6, v19, 0x1

    move/from16 v19, v6

    move/from16 v27, v5

    .line 503
    :goto_8
    const/4 v5, 0x0

    .line 504
    const/4 v6, 0x0

    move/from16 v28, v5

    move v5, v6

    :goto_9
    const/16 v6, 0x10

    if-ge v5, v6, :cond_a

    .line 505
    aget-byte v6, v20, v5

    add-int v6, v6, v28

    int-to-byte v6, v6

    .line 504
    add-int/lit8 v5, v5, 0x1

    move/from16 v28, v6

    goto :goto_9

    .line 367
    :cond_1
    const/4 v11, 0x4

    move-object v14, v10

    move v15, v9

    move/from16 v16, v11

    goto :goto_2

    :catch_0
    move-exception v10

    move-object/from16 v17, v11

    goto :goto_3

    .line 398
    :pswitch_0
    const/4 v5, 0x2

    .line 399
    const/4 v6, 0x1

    .line 400
    const/4 v7, 0x4

    .line 402
    invoke-virtual/range {p6 .. p7}, Lcom/amazon/system/security/Security;->getStorageType(Ljava/lang/String;)I

    move-result v8

    .line 403
    if-ltz v8, :cond_3

    .line 405
    invoke-virtual/range {p6 .. p7}, Lcom/amazon/system/security/Security;->getStorageSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 406
    if-eqz v9, :cond_3

    .line 408
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getPIDFromStorageSerial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 410
    const/4 v10, 0x0

    :goto_a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 412
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v20, v10

    .line 410
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 414
    :cond_2
    sget-object v9, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->INTERNAL_READER_KEY:[B

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, v9

    move-object/from16 v2, v20

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/util/Cipher;->code([B[BZ)[B

    move/from16 v21, v8

    move/from16 v22, v7

    move/from16 v23, v6

    move/from16 v24, v5

    .line 415
    goto :goto_5

    .line 419
    :cond_3
    sget v5, Lcom/amazon/system/security/Security;->STORAGE_TYPE_UNKNOW:I

    move/from16 v21, v5

    move/from16 v22, v7

    .line 424
    :goto_b
    const/16 v23, 0x1

    .line 425
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/system/security/Security;->getPID()Ljava/lang/String;

    move-result-object v7

    .line 429
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/system/security/Security;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v8

    .line 430
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/system/security/Security;->getAccountSecrets()[Ljava/lang/String;

    move-result-object v9

    .line 431
    invoke-static/range {v17 .. v17}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTamperProofKeys([Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;)[B

    move-result-object v10

    .line 432
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->encoding:I

    move v5, v0

    move-object v0, v10

    move-object/from16 v1, v17

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTamperProofValues([B[Lcom/mobipocket/common/library/reader/book/ExtraHeaderDataItem;I)[[B

    move-result-object v11

    .line 433
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/system/security/Security;->getSHA1MessageDigest()Lcom/amazon/system/security/IMessageDigest;

    move-result-object v5

    .line 434
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/system/security/Security;->getBase64()Lcom/amazon/system/security/IBase64;

    move-result-object v6

    .line 436
    invoke-static/range {v5 .. v11}, Lcom/amazon/system/security/Security;->getPids(Lcom/amazon/system/security/IMessageDigest;Lcom/amazon/system/security/IBase64;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[B[[B)[Ljava/lang/String;

    move-result-object v24

    .line 437
    if-eqz v24, :cond_6

    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_6

    aget-object v5, v24, v18

    if-eqz v5, :cond_6

    .line 440
    const/4 v5, 0x0

    :goto_c
    aget-object v6, v24, v18

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 442
    aget-object v6, v24, v18

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v20, v5

    .line 440
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 444
    :cond_4
    sget-object v6, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->INTERNAL_READER_KEY:[B

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move v11, v0

    const/4 v12, 0x0

    move-object v5, v13

    move-object/from16 v7, v20

    move-object/from16 v9, v20

    invoke-virtual/range {v5 .. v12}, Lcom/mobipocket/common/util/Cipher;->code([B[BI[BIIZ)V

    .line 445
    add-int/lit8 v5, v18, 0x1

    .line 446
    move-object/from16 v0, v24

    array-length v0, v0

    move v6, v0

    if-ge v5, v6, :cond_5

    .line 448
    const/4 v6, 0x1

    move/from16 v18, v5

    move/from16 v24, v23

    move/from16 v23, v6

    goto/16 :goto_5

    .line 452
    :cond_5
    const/4 v6, 0x3

    move/from16 v18, v5

    move/from16 v24, v23

    move/from16 v23, v6

    .line 454
    goto/16 :goto_5

    :cond_6
    move/from16 v5, v21

    move/from16 v6, v22

    .line 460
    :pswitch_1
    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    .line 461
    const/4 v6, 0x1

    .line 462
    :cond_7
    sget-object v7, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->INTERNAL_READER_KEY:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->INTERNAL_READER_KEY:[B

    array-length v10, v10

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v20

    move v3, v9

    move v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    const/4 v7, 0x3

    .line 465
    const/4 v8, 0x0

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v8

    move/from16 v24, v7

    goto/16 :goto_5

    .line 495
    :cond_8
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x1

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v7, v20

    move-object/from16 v9, v20

    invoke-virtual/range {v5 .. v12}, Lcom/mobipocket/common/util/Cipher;->code([B[BI[BIIZ)V

    move/from16 v5, v24

    goto/16 :goto_7

    :cond_9
    move/from16 v27, v24

    .line 500
    goto/16 :goto_8

    .line 507
    :cond_a
    const/4 v5, 0x0

    move/from16 v29, v5

    :goto_d
    move/from16 v0, v29

    move/from16 v1, p3

    if-ge v0, v1, :cond_22

    .line 509
    new-instance v5, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 510
    add-int v6, p2, v26

    invoke-virtual {v5, v6}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 511
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v30

    .line 512
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v31

    .line 513
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v6

    .line 514
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readByte()B

    move-result v5

    .line 516
    const/4 v7, 0x1

    if-le v6, v7, :cond_b

    .line 518
    const/16 v5, 0xb

    .line 653
    :goto_e
    return v5

    .line 522
    :cond_b
    move v0, v5

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    .line 525
    sget v5, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->SIZEOF_VOUCHER_ENCRYPTED_PART:I

    new-array v9, v5, [B

    .line 526
    add-int v5, p2, v26

    add-int/lit8 v8, v5, 0x10

    const/4 v10, 0x0

    sget v11, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->SIZEOF_VOUCHER_ENCRYPTED_PART:I

    const/4 v12, 0x1

    move-object v5, v13

    move-object/from16 v6, v20

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v12}, Lcom/mobipocket/common/util/Cipher;->code([B[BI[BIIZ)V

    .line 527
    new-instance v5, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v9, v6}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;-><init>([BZ)V

    .line 529
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v6

    .line 530
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v7

    .line 531
    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readVoid(I)V

    .line 532
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v8

    .line 533
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/book/ByteDataInputStream;->readInt()I

    move-result v5

    .line 535
    move v0, v6

    move/from16 v1, v30

    if-ne v0, v1, :cond_1d

    .line 539
    const/4 v6, 0x4

    move v0, v6

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    if-eqz v5, :cond_e

    const/4 v6, -0x1

    if-eq v8, v6, :cond_e

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v32, 0xea60

    div-long v10, v10, v32

    long-to-int v6, v10

    .line 545
    if-le v6, v8, :cond_c

    .line 547
    const/4 v5, 0x6

    .line 548
    goto :goto_e

    .line 550
    :cond_c
    if-ge v6, v5, :cond_d

    .line 552
    const/4 v5, 0x7

    .line 553
    goto :goto_e

    .line 556
    :cond_d
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->timebomb_start:I

    .line 557
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->timebomb_stop:I

    .line 561
    :cond_e
    and-int/lit8 v5, v7, 0x1f

    move v0, v5

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    .line 563
    const v5, 0xfff1a0

    and-int/2addr v5, v7

    if-eqz v5, :cond_f

    const/4 v5, 0x4

    move/from16 v0, v24

    move v1, v5

    if-eq v0, v1, :cond_f

    .line 566
    const/16 v5, 0xb

    .line 567
    goto :goto_e

    .line 569
    :cond_f
    const/4 v5, 0x2

    move/from16 v0, v22

    move v1, v5

    if-eq v0, v1, :cond_13

    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-eq v0, v1, :cond_13

    .line 571
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/system/security/Security;->customDrmOnly()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_12

    .line 573
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/system/security/Security;->customDrmOnly()I

    move-result v5

    .line 574
    const v6, 0x54f91ac3

    .line 575
    const v8, -0x37d19b4d

    .line 576
    const/4 v10, 0x0

    move/from16 v34, v10

    move v10, v5

    move/from16 v5, v34

    move/from16 v35, v6

    move v6, v8

    move/from16 v8, v35

    :goto_f
    const/4 v11, 0x4

    if-ge v5, v11, :cond_10

    .line 578
    xor-int/2addr v10, v8

    .line 579
    shl-int v11, v8, v5

    xor-int/2addr v6, v11

    .line 580
    ushr-int/lit8 v8, v8, 0x8

    .line 576
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 582
    :cond_10
    if-eq v10, v6, :cond_11

    .line 584
    const/4 v5, 0x3

    goto/16 :goto_e

    .line 587
    :cond_11
    and-int/lit16 v5, v7, 0x800

    const/16 v6, 0x800

    if-eq v5, v6, :cond_13

    .line 589
    const/4 v5, 0x3

    .line 590
    goto/16 :goto_e

    .line 595
    :cond_12
    and-int/lit16 v5, v7, 0x800

    const/16 v6, 0x800

    if-ne v5, v6, :cond_13

    .line 597
    const/4 v5, 0x3

    .line 598
    goto/16 :goto_e

    .line 603
    :cond_13
    const/4 v5, 0x1

    .line 604
    and-int/lit16 v6, v7, 0x180

    .line 605
    and-int/lit16 v8, v7, 0xe00

    .line 607
    if-eqz v6, :cond_16

    .line 611
    and-int/lit16 v5, v6, 0x100

    const/16 v10, 0x100

    if-ne v5, v10, :cond_14

    sget v5, Lcom/amazon/system/security/Security;->STORAGE_TYPE_CDROM:I

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_15

    :cond_14
    sget v5, Lcom/amazon/system/security/Security;->STORAGE_TYPE_REMOVABLE:I

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_1b

    and-int/lit16 v5, v6, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_1b

    :cond_15
    const/4 v5, 0x1

    .line 615
    :cond_16
    :goto_10
    if-eqz v5, :cond_17

    if-eqz v8, :cond_17

    .line 617
    const/16 v5, 0xc00

    .line 618
    and-int/2addr v5, v8

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    .line 621
    :cond_17
    :goto_11
    if-eqz v5, :cond_1d

    .line 624
    and-int/lit8 v5, v7, 0x40

    if-eqz v5, :cond_18

    .line 626
    const/16 v5, 0x10

    new-array v5, v5, [B

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->book_key:[B

    .line 627
    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->book_key:[B

    move-object v6, v0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v9, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    :cond_18
    const/4 v5, 0x1

    .line 644
    :goto_12
    if-nez v5, :cond_19

    const/4 v6, 0x2

    move/from16 v0, v19

    move v1, v6

    if-ge v0, v1, :cond_19

    if-nez v15, :cond_21

    .line 647
    :cond_19
    if-eqz v23, :cond_1a

    if-eqz v5, :cond_20

    .line 650
    :cond_1a
    if-eqz v5, :cond_1f

    .line 651
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 611
    :cond_1b
    const/4 v5, 0x0

    goto :goto_10

    .line 618
    :cond_1c
    const/4 v5, 0x0

    goto :goto_11

    .line 637
    :cond_1d
    add-int v5, v26, v31

    .line 640
    move v0, v5

    move/from16 v1, p4

    if-le v0, v1, :cond_1e

    move/from16 v5, v16

    .line 641
    goto/16 :goto_e

    .line 507
    :cond_1e
    add-int/lit8 v6, v29, 0x1

    move/from16 v26, v5

    move/from16 v29, v6

    goto/16 :goto_d

    :cond_1f
    move/from16 v5, v16

    goto/16 :goto_e

    :cond_20
    move/from16 v19, v5

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v23

    move/from16 v5, v21

    goto/16 :goto_4

    :cond_21
    move/from16 v25, v5

    goto/16 :goto_6

    :cond_22
    move/from16 v5, v25

    goto :goto_12

    :pswitch_2
    move/from16 v21, v5

    move/from16 v22, v6

    goto/16 :goto_b

    :cond_23
    move-object/from16 v34, v10

    move v10, v9

    move-object/from16 v9, v34

    goto/16 :goto_1

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final getKey()[B
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->book_key:[B

    return-object v0
.end method

.method public isAccepted([BLcom/amazon/system/security/Security;Ljava/lang/String;)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xe

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x2

    .line 185
    iget-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wVersion:S

    if-eq v0, v8, :cond_0

    iget-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wVersion:S

    if-eq v0, v2, :cond_0

    iget-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wVersion:S

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x48

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->BAD_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wSpare2:S

    if-eqz v0, :cond_6

    .line 189
    iget-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wSpare2:S

    if-eq v0, v2, :cond_1

    iget-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wSpare2:S

    if-eq v0, v8, :cond_1

    .line 190
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->BAD_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    if-nez p2, :cond_2

    move v0, v9

    .line 311
    :goto_0
    return v0

    .line 200
    :cond_2
    :try_start_0
    iget-short v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->wSpare2:S

    if-ne v0, v2, :cond_3

    .line 201
    iget v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->vouchers_offset:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->vouchers_tblen:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->vouchers_len:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->security_flags:I

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->test_security_level2([BIIIILcom/amazon/system/security/Security;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 222
    :goto_1
    if-eqz v0, :cond_6

    .line 225
    packed-switch v0, :pswitch_data_0

    .line 285
    :pswitch_0
    sget-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->UNKNOWN_ERROR:Ljava/lang/String;

    .line 288
    :goto_2
    new-instance v1, Lcom/mobipocket/common/library/reader/InvalidBookException;

    invoke-direct {v1, v0}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->version:I

    if-lt v0, v2, :cond_5

    .line 207
    array-length v0, p1

    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->hsize:I

    sub-int/2addr v0, v1

    const/16 v1, 0x10

    sub-int/2addr v0, v1

    .line 208
    iget v1, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->hsize:I

    add-int/lit8 v1, v1, 0x10

    .line 209
    iget v2, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->version:I

    if-lt v2, v10, :cond_4

    .line 210
    add-int/lit8 v1, v1, 0xc

    .line 211
    :cond_4
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->test_security_level1([BIILcom/amazon/system/security/Security;)I

    move-result v0

    goto :goto_1

    .line 214
    :cond_5
    const/16 v0, 0xe

    array-length v1, p1

    sub-int/2addr v1, v3

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->test_security_level1([BIILcom/amazon/system/security/Security;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->BAD_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :pswitch_1
    sget-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->SECURITY_NOT_HANDLED:Ljava/lang/String;

    goto :goto_2

    .line 241
    :pswitch_2
    sget-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->INVALID_PID:Ljava/lang/String;

    goto :goto_2

    .line 256
    :pswitch_3
    sget-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->WRONG_PASSWORD:Ljava/lang/String;

    goto :goto_2

    .line 260
    :pswitch_4
    sget-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->CORRUPTED:Ljava/lang/String;

    goto :goto_2

    .line 274
    :pswitch_5
    sget-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->BOOK_NOT_SUPPORTED:Ljava/lang/String;

    goto :goto_2

    .line 278
    :pswitch_6
    sget-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->NOT_YET_ACTIVE:Ljava/lang/String;

    goto :goto_2

    :pswitch_7
    move v0, v9

    .line 283
    goto :goto_0

    .line 292
    :cond_6
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->encoding:I

    const/16 v1, 0x4e4

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->encoding:I

    const v1, 0xfde9

    if-eq v0, v1, :cond_7

    .line 293
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->BOOK_NOT_SUPPORTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_7
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->version:I

    if-lt v0, v10, :cond_a

    .line 300
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->version:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_a

    .line 302
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getMasterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->idx_slaves:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 303
    :cond_8
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->MULTIPART:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_9
    iget v0, p0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->version:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_a

    .line 307
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->BOOK_NOT_SUPPORTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v0, v8

    .line 311
    goto/16 :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
