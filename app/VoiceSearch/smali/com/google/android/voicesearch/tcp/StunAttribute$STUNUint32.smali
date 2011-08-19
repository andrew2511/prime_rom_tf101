.class public Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;
.super Ljava/lang/Object;
.source "StunAttribute.java"

# interfaces
.implements Lcom/google/android/voicesearch/tcp/StunAttributeData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/tcp/StunAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STUNUint32"
.end annotation


# instance fields
.field private data:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;->data:I

    .line 277
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;->data:I

    .line 272
    iput p1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;->data:I

    .line 273
    return-void
.end method

.method public static fromByteArray([BI)Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 289
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;

    invoke-direct {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;-><init>()V

    .line 290
    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;->data:I

    .line 293
    return-object v0
.end method


# virtual methods
.method public asByteArray()[B
    .locals 3

    .prologue
    .line 280
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 281
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;->data:I

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 282
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;->data:I

    ushr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 283
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;->data:I

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 284
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;->data:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 285
    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$STUNUint32;->data:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
