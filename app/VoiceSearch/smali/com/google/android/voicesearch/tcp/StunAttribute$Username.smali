.class public Lcom/google/android/voicesearch/tcp/StunAttribute$Username;
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
    name = "Username"
.end annotation


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;->data:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public static fromByteArray([BII)Lcom/google/android/voicesearch/tcp/StunAttribute$Username;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;

    invoke-direct {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;-><init>()V

    .line 338
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    return-object v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 Encoding not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asByteArray()[B
    .locals 2

    .prologue
    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;->data:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 332
    return-object v0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 Encoding not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;->data:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    return v0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 Encoding not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;->data:Ljava/lang/String;

    return-object v0
.end method
