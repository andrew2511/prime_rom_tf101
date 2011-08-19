.class public Ljava/util/jar/Attributes$Name;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation


# static fields
.field public static final CLASS_PATH:Ljava/util/jar/Attributes$Name;

.field public static final CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final MAIN_CLASS:Ljava/util/jar/Attributes$Name;

.field public static final MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

.field static final NAME:Ljava/util/jar/Attributes$Name;

.field public static final SEALED:Ljava/util/jar/Attributes$Name;

.field public static final SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;


# instance fields
.field private hashCode:I

.field private final name:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Class-Path"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    .line 66
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Manifest-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    .line 71
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Main-Class"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->MAIN_CLASS:Ljava/util/jar/Attributes$Name;

    .line 76
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Signature-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    .line 82
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

    .line 88
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Sealed"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    .line 94
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Title"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 101
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 108
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Vendor"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 115
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Specification-Title"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 122
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Specification-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 129
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Specification-Vendor"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 136
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-List"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    .line 142
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    .line 147
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-Installation"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

    .line 155
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Vendor-Id"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    .line 163
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-URL"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    .line 166
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "s"

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 185
    .local v1, i:I
    if-eqz v1, :cond_d

    const/16 v2, 0x46

    if-le v1, v2, :cond_13

    .line 186
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 189
    :cond_13
    new-array v2, v1, [B

    iput-object v2, p0, Ljava/util/jar/Attributes$Name;->name:[B

    .line 191
    :goto_17
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4b

    .line 192
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 193
    .local v0, ch:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_27

    const/16 v2, 0x7a

    if-le v0, v2, :cond_45

    :cond_27
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2f

    const/16 v2, 0x5a

    if-le v0, v2, :cond_45

    :cond_2f
    const/16 v2, 0x5f

    if-eq v0, v2, :cond_45

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_45

    const/16 v2, 0x30

    if-lt v0, v2, :cond_3f

    const/16 v2, 0x39

    if-le v0, v2, :cond_45

    .line 195
    :cond_3f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_45
    iget-object v2, p0, Ljava/util/jar/Attributes$Name;->name:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    goto :goto_17

    .line 199
    .end local v0           #ch:C
    :cond_4b
    return-void
.end method

.method constructor <init>([B)V
    .registers 2
    .parameter "buf"

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Ljava/util/jar/Attributes$Name;->name:[B

    .line 206
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 232
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/jar/Attributes$Name;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 234
    :cond_16
    const/4 v0, 0x0

    .line 237
    .end local p1
    :goto_17
    return v0

    .restart local p1
    :cond_18
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:[B

    check-cast p1, Ljava/util/jar/Attributes$Name;

    .end local p1
    iget-object v1, p1, Ljava/util/jar/Attributes$Name;->name:[B

    invoke-static {v0, v1}, Lorg/apache/harmony/archive/util/Util;->asciiEqualsIgnoreCase([B[B)Z

    move-result v0

    goto :goto_17
.end method

.method getBytes()[B
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 247
    iget v4, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    if-nez v4, :cond_1f

    .line 248
    const/4 v0, 0x0

    .local v0, hash:I
    const/4 v2, 0x1

    .line 249
    .local v2, multiplier:I
    iget-object v4, p0, Ljava/util/jar/Attributes$Name;->name:[B

    array-length v4, v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_c
    if-ltz v1, :cond_1d

    .line 251
    iget-object v4, p0, Ljava/util/jar/Attributes$Name;->name:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xdf

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    .line 252
    shl-int/lit8 v3, v2, 0x5

    .line 253
    .local v3, shifted:I
    sub-int v2, v3, v2

    .line 249
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 255
    .end local v3           #shifted:I
    :cond_1d
    iput v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    .line 257
    .end local v0           #hash:I
    .end local v1           #i:I
    .end local v2           #multiplier:I
    :cond_1f
    iget v4, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    return v4
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 219
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/util/jar/Attributes$Name;->name:[B

    sget-object v2, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
