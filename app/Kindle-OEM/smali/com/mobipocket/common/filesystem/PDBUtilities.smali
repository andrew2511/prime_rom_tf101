.class public Lcom/mobipocket/common/filesystem/PDBUtilities;
.super Ljava/lang/Object;
.source "PDBUtilities.java"


# static fields
.field static final CREATION_DATE_HEADER_INDEX:I = 0x24

.field static final CREATORID_HEADER_INDEX:I = 0x40

.field static final FIRST_RECORD_INFORMATIONS_HEADER_INDEX:I = 0x4e

.field static final MAX_NAME_LENGTH:I = 0x20

.field static final MODIFICATION_DATE_HEADER_INDEX:I = 0x28

.field static final NUMBER_OF_RECORDS_HEADER_INDEX:I = 0x4c

.field static final RECORD_INFORMATIONS_SIZE:I = 0x8

.field static final TYPE_HEADER_INDEX:I = 0x3c

.field static final UNIQUE_ID_SEED_HEADER_INDEX:I = 0x44


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getID([BI)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    mul-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4e

    add-int/lit8 v0, v0, 0x5

    .line 143
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 146
    return v0
.end method

.method public static getLastModificationDate([B)I
    .locals 3
    .parameter

    .prologue
    .line 66
    const/16 v0, 0x28

    .line 67
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 71
    return v0
.end method

.method public static getNextRecordID([B)I
    .locals 3
    .parameter

    .prologue
    .line 94
    const/16 v0, 0x44

    .line 95
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 99
    return v0
.end method

.method public static getOffset([BI)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 126
    mul-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4e

    .line 127
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 131
    return v0
.end method

.method public static getPDBName([B)Ljava/lang/String;
    .locals 3
    .parameter "header"

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, nameLength:I
    :goto_0
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRecordCount([B)I
    .locals 2
    .parameter

    .prologue
    .line 111
    const/16 v0, 0x4c

    .line 112
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 114
    return v0
.end method

.method public static getType([B)Ljava/lang/String;
    .locals 3
    .parameter "header"

    .prologue
    .line 82
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x3c

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method
