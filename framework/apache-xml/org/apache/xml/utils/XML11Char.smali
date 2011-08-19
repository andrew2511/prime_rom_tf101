.class public Lorg/apache/xml/utils/XML11Char;
.super Ljava/lang/Object;
.source "XML11Char.java"


# static fields
.field public static final MASK_XML11_CONTENT:I = 0x20

.field public static final MASK_XML11_CONTENT_INTERNAL:I = 0x30

.field public static final MASK_XML11_CONTROL:I = 0x10

.field public static final MASK_XML11_NAME:I = 0x8

.field public static final MASK_XML11_NAME_START:I = 0x4

.field public static final MASK_XML11_NCNAME:I = 0x80

.field public static final MASK_XML11_NCNAME_START:I = 0x40

.field public static final MASK_XML11_SPACE:I = 0x2

.field public static final MASK_XML11_VALID:I = 0x1

.field private static final XML11CHARS:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x11

    const/16 v5, -0x57

    const/16 v4, -0x13

    const/16 v3, 0x21

    .line 48
    const/high16 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    .line 86
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x9

    invoke-static {v0, v7, v1, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 87
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x9

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 88
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xa

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 89
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xb

    const/16 v2, 0xd

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 90
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xd

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 91
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xe

    const/16 v2, 0x20

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 92
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x20

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 93
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x26

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 94
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x26

    aput-byte v7, v0, v1

    .line 95
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x27

    const/16 v2, 0x2d

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 96
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2d

    const/16 v2, 0x2f

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 97
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2f

    aput-byte v3, v0, v1

    .line 98
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x30

    const/16 v2, 0x3a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 99
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3a

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    .line 100
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    .line 101
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3c

    aput-byte v7, v0, v1

    .line 102
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3d

    const/16 v2, 0x41

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 103
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x41

    const/16 v2, 0x5b

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 104
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x5b

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 105
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x5d

    aput-byte v7, v0, v1

    .line 106
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    .line 107
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x5f

    aput-byte v4, v0, v1

    .line 108
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    .line 109
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x61

    const/16 v2, 0x7b

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 110
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x7b

    const/16 v2, 0x7f

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 111
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x7f

    const/16 v2, 0x85

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 112
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x85

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 113
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x86

    const/16 v2, 0xa0

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 114
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xa0

    const/16 v2, 0xb7

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 115
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xb7

    aput-byte v5, v0, v1

    .line 116
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xb8

    const/16 v2, 0xc0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 117
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xc0

    const/16 v2, 0xd7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 118
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    .line 119
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xd8

    const/16 v2, 0xf7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 120
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xf7

    aput-byte v3, v0, v1

    .line 121
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xf8

    const/16 v2, 0x300

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 122
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x300

    const/16 v2, 0x370

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 123
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x370

    const/16 v2, 0x37e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 124
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x37e

    aput-byte v3, v0, v1

    .line 125
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x37f

    const/16 v2, 0x2000

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 126
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2000

    const/16 v2, 0x200c

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 127
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x200c

    const/16 v2, 0x200e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 128
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x200e

    const/16 v2, 0x2028

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 129
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2028

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 130
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2029

    const/16 v2, 0x203f

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 131
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x203f

    const/16 v2, 0x2041

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 132
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2041

    const/16 v2, 0x2070

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 133
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2070

    const/16 v2, 0x2190

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 134
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2190

    const/16 v2, 0x2c00

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 135
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2c00

    const/16 v2, 0x2ff0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 136
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2ff0

    const/16 v2, 0x3001

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 137
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3001

    const v2, 0xd800

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 138
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const v1, 0xe000

    const v2, 0xf900

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 139
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const v1, 0xf900

    const v2, 0xfdd0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 140
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const v1, 0xfdd0

    const v2, 0xfdf0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 141
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    const v1, 0xfdf0

    const v2, 0xfffe

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isXML11Content(I)Z
    .registers 3
    .parameter "c"

    .prologue
    const/high16 v1, 0x1

    .line 203
    if-ge p0, v1, :cond_c

    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_13

    :cond_c
    if-gt v1, p0, :cond_15

    const v0, 0x10ffff

    if-gt p0, v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static isXML11InternalEntityContent(I)Z
    .registers 3
    .parameter "c"

    .prologue
    const/high16 v1, 0x1

    .line 214
    if-ge p0, v1, :cond_c

    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_13

    :cond_c
    if-gt v1, p0, :cond_15

    const v0, 0x10ffff

    if-gt p0, v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static isXML11Invalid(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 180
    invoke-static {p0}, Lorg/apache/xml/utils/XML11Char;->isXML11Valid(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isXML11NCName(I)Z
    .registers 3
    .parameter "c"

    .prologue
    const/high16 v1, 0x1

    .line 262
    if-ge p0, v1, :cond_c

    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_12

    :cond_c
    if-gt v1, p0, :cond_14

    const/high16 v0, 0xf

    if-ge p0, v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isXML11NCNameStart(I)Z
    .registers 3
    .parameter "c"

    .prologue
    const/high16 v1, 0x1

    .line 250
    if-ge p0, v1, :cond_c

    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_12

    :cond_c
    if-gt v1, p0, :cond_14

    const/high16 v0, 0xf

    if-ge p0, v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isXML11Name(I)Z
    .registers 3
    .parameter "c"

    .prologue
    const/high16 v1, 0x1

    .line 238
    if-ge p0, v1, :cond_c

    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_12

    :cond_c
    if-lt p0, v1, :cond_14

    const/high16 v0, 0xf

    if-ge p0, v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isXML11NameHighSurrogate(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 275
    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdb7f

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isXML11NameStart(I)Z
    .registers 3
    .parameter "c"

    .prologue
    const/high16 v1, 0x1

    .line 226
    if-ge p0, v1, :cond_c

    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_12

    :cond_c
    if-gt v1, p0, :cond_14

    const/high16 v0, 0xf

    if-ge p0, v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isXML11Space(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 156
    const/high16 v0, 0x1

    if-ge p0, v0, :cond_e

    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isXML11Valid(I)Z
    .registers 3
    .parameter "c"

    .prologue
    const/high16 v1, 0x1

    .line 170
    if-ge p0, v1, :cond_c

    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_13

    :cond_c
    if-gt v1, p0, :cond_15

    const v0, 0x10ffff

    if-gt p0, v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static isXML11ValidLiteral(I)Z
    .registers 3
    .parameter "c"

    .prologue
    const/high16 v1, 0x1

    .line 192
    if-ge p0, v1, :cond_14

    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1b

    :cond_14
    if-gt v1, p0, :cond_1d

    const v0, 0x10ffff

    if-gt p0, v0, :cond_1d

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static isXML11ValidNCName(Ljava/lang/String;)Z
    .registers 8
    .parameter "ncName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 340
    .local v3, length:I
    if-nez v3, :cond_a

    move v4, v5

    .line 373
    :goto_9
    return v4

    .line 342
    :cond_a
    const/4 v2, 0x1

    .line 343
    .local v2, i:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 344
    .local v0, ch:C
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NCNameStart(I)Z

    move-result v4

    if-nez v4, :cond_34

    .line 345
    if-le v3, v6, :cond_60

    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 346
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 347
    .local v1, ch2:C
    invoke-static {v1}, Lorg/apache/xml/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-static {v0, v1}, Lorg/apache/xml/utils/XMLChar;->supplemental(CC)I

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/XML11Char;->isXML11NCNameStart(I)Z

    move-result v4

    if-nez v4, :cond_33

    :cond_31
    move v4, v5

    .line 349
    goto :goto_9

    .line 351
    :cond_33
    const/4 v2, 0x2

    .line 357
    .end local v1           #ch2:C
    :cond_34
    :goto_34
    if-ge v2, v3, :cond_67

    .line 358
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 359
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NCName(I)Z

    move-result v4

    if-nez v4, :cond_64

    .line 360
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_62

    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 361
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 362
    .restart local v1       #ch2:C
    invoke-static {v1}, Lorg/apache/xml/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-static {v0, v1}, Lorg/apache/xml/utils/XMLChar;->supplemental(CC)I

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/XML11Char;->isXML11NCName(I)Z

    move-result v4

    if-nez v4, :cond_64

    :cond_5e
    move v4, v5

    .line 364
    goto :goto_9

    .end local v1           #ch2:C
    :cond_60
    move v4, v5

    .line 354
    goto :goto_9

    :cond_62
    move v4, v5

    .line 368
    goto :goto_9

    .line 371
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_67
    move v4, v6

    .line 373
    goto :goto_9
.end method

.method public static isXML11ValidName(Ljava/lang/String;)Z
    .registers 8
    .parameter "name"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 290
    .local v3, length:I
    if-nez v3, :cond_a

    move v4, v5

    .line 323
    :goto_9
    return v4

    .line 292
    :cond_a
    const/4 v2, 0x1

    .line 293
    .local v2, i:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 294
    .local v0, ch:C
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NameStart(I)Z

    move-result v4

    if-nez v4, :cond_34

    .line 295
    if-le v3, v6, :cond_60

    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 296
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 297
    .local v1, ch2:C
    invoke-static {v1}, Lorg/apache/xml/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-static {v0, v1}, Lorg/apache/xml/utils/XMLChar;->supplemental(CC)I

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/XML11Char;->isXML11NameStart(I)Z

    move-result v4

    if-nez v4, :cond_33

    :cond_31
    move v4, v5

    .line 299
    goto :goto_9

    .line 301
    :cond_33
    const/4 v2, 0x2

    .line 307
    .end local v1           #ch2:C
    :cond_34
    :goto_34
    if-ge v2, v3, :cond_67

    .line 308
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 309
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11Name(I)Z

    move-result v4

    if-nez v4, :cond_64

    .line 310
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_62

    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 311
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 312
    .restart local v1       #ch2:C
    invoke-static {v1}, Lorg/apache/xml/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-static {v0, v1}, Lorg/apache/xml/utils/XMLChar;->supplemental(CC)I

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/XML11Char;->isXML11Name(I)Z

    move-result v4

    if-nez v4, :cond_64

    :cond_5e
    move v4, v5

    .line 314
    goto :goto_9

    .end local v1           #ch2:C
    :cond_60
    move v4, v5

    .line 304
    goto :goto_9

    :cond_62
    move v4, v5

    .line 318
    goto :goto_9

    .line 321
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_67
    move v4, v6

    .line 323
    goto :goto_9
.end method

.method public static isXML11ValidNmtoken(Ljava/lang/String;)Z
    .registers 7
    .parameter "nmtoken"

    .prologue
    const/4 v5, 0x0

    .line 387
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 388
    .local v3, length:I
    if-nez v3, :cond_9

    move v4, v5

    .line 405
    :goto_8
    return v4

    .line 390
    :cond_9
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_3b

    .line 391
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 392
    .local v0, ch:C
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11Name(I)Z

    move-result v4

    if-nez v4, :cond_38

    .line 393
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_36

    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 394
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 395
    .local v1, ch2:C
    invoke-static {v1}, Lorg/apache/xml/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-static {v0, v1}, Lorg/apache/xml/utils/XMLChar;->supplemental(CC)I

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/utils/XML11Char;->isXML11Name(I)Z

    move-result v4

    if-nez v4, :cond_38

    :cond_34
    move v4, v5

    .line 397
    goto :goto_8

    .end local v1           #ch2:C
    :cond_36
    move v4, v5

    .line 401
    goto :goto_8

    .line 390
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 405
    .end local v0           #ch:C
    :cond_3b
    const/4 v4, 0x1

    goto :goto_8
.end method

.method public static isXML11ValidQName(Ljava/lang/String;)Z
    .registers 7
    .parameter "str"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 415
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 417
    .local v0, colon:I
    if-eqz v0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    if-ne v0, v3, :cond_13

    :cond_11
    move v3, v4

    .line 427
    :goto_12
    return v3

    .line 421
    :cond_13
    if-lez v0, :cond_2f

    .line 422
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, prefix:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, localPart:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {v1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move v3, v5

    goto :goto_12

    :cond_2d
    move v3, v4

    goto :goto_12

    .line 427
    .end local v1           #localPart:Ljava/lang/String;
    .end local v2           #prefix:Ljava/lang/String;
    :cond_2f
    invoke-static {p0}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v3

    goto :goto_12
.end method
