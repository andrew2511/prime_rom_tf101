.class public Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;
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
    name = "ErrorCode"
.end annotation


# instance fields
.field private errorCode:I

.field private errorReason:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    .line 401
    iput p1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    .line 402
    iput-object p2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    .line 403
    return-void
.end method

.method private equalsErrorCode(Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;)Z
    .locals 2
    .parameter

    .prologue
    .line 393
    iget v0, p1, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    iget v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    if-ne v0, v1, :cond_0

    .line 394
    const/4 v0, 0x1

    .line 396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromByteArray([BII)Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;

    invoke-direct {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;-><init>()V

    .line 427
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x64

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    .line 430
    const-string v1, ""

    iput-object v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    .line 432
    add-int/lit8 v1, p1, 0x4

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_0
    return-object v0
.end method


# virtual methods
.method public asByteArray()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->getLength()I

    move-result v0

    new-array v0, v0, [B

    .line 411
    aput-byte v4, v0, v4

    .line 412
    const/4 v1, 0x1

    aput-byte v4, v0, v1

    .line 413
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    div-int/lit8 v2, v2, 0x64

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 414
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    rem-int/lit8 v2, v2, 0x64

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 421
    :goto_0
    const/4 v2, 0x4

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    return-object v0

    .line 418
    :catch_0
    move-exception v1

    .line 419
    new-array v1, v4, [B

    goto :goto_0
.end method

.method public asSTUNError()Lcom/google/android/voicesearch/tcp/StunError;
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    invoke-static {v0}, Lcom/google/android/voicesearch/tcp/StunError;->fromErrorCode(I)Lcom/google/android/voicesearch/tcp/StunError;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 380
    instance-of v0, p1, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;

    if-eqz v0, :cond_0

    .line 381
    check-cast p1, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;

    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->equalsErrorCode(Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;)Z

    move-result v0

    .line 383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLength()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 442
    array-length v1, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    const/4 v3, 0x0

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x4

    sub-int v0, v4, v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x4

    .line 449
    :goto_0
    return v0

    .line 446
    :catch_0
    move-exception v0

    .line 448
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    move v0, v4

    .line 449
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->errorReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
