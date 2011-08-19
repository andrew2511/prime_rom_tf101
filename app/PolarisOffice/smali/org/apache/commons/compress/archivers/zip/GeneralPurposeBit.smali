.class public final Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
.super Ljava/lang/Object;
.source "GeneralPurposeBit.java"


# static fields
.field private static final DATA_DESCRIPTOR_FLAG:I = 0x8

.field private static final ENCRYPTION_FLAG:I = 0x1

.field private static final STRONG_ENCRYPTION_FLAG:I = 0x40

.field public static final UFT8_NAMES_FLAG:I = 0x800


# instance fields
.field private dataDescriptorFlag:Z

.field private encryptionFlag:Z

.field private languageEncodingFlag:Z

.field private strongEncryptionFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    .line 53
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    .line 54
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 55
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    .line 58
    return-void
.end method

.method public static parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .locals 5
    .parameter "data"
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    .line 143
    .local v1, generalPurposeFlag:I
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    .line 144
    .local v0, b:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    .line 145
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    .line 146
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useStrongEncryption(Z)V

    .line 148
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_3

    move v2, v4

    :goto_3
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useEncryption(Z)V

    .line 149
    return-object v0

    :cond_0
    move v2, v3

    .line 144
    goto :goto_0

    :cond_1
    move v2, v3

    .line 145
    goto :goto_1

    :cond_2
    move v2, v3

    .line 146
    goto :goto_2

    :cond_3
    move v2, v3

    .line 148
    goto :goto_3
.end method


# virtual methods
.method public encode()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x800

    :goto_1
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    or-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x40

    :goto_3
    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 160
    instance-of v2, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    if-nez v2, :cond_0

    move v2, v4

    .line 164
    :goto_0
    return v2

    .line 163
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-object v1, v0

    .line 164
    .local v1, g:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    iget-boolean v2, v1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, v1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, v1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, v1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    mul-int/lit8 v0, v0, 0x11

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xd

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public useDataDescriptor(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    .line 88
    return-void
.end method

.method public useEncryption(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 102
    return-void
.end method

.method public useStrongEncryption(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 115
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    .line 116
    if-eqz p1, :cond_0

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useEncryption(Z)V

    .line 119
    :cond_0
    return-void
.end method

.method public useUTF8ForNames(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    .line 72
    return-void
.end method

.method public usesDataDescriptor()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    return v0
.end method

.method public usesEncryption()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    return v0
.end method

.method public usesStrongEncryption()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usesUTF8ForNames()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    return v0
.end method
