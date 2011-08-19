.class public Lcom/infraware/filemanager/zip/ZipDecryptInputStream;
.super Ljava/io/InputStream;
.source "ZipDecryptInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$filemanager$zip$ZipDecryptInputStream$State:[I = null

.field private static final CRC_TABLE:[I = null

.field private static final DECRYPT_HEADER_SIZE:I = 0xc

.field private static final LFH_SIGNATURE:[I = null

.field public static final MSG_NOT_ENC:Ljava/lang/String; = "NOT_ENC"

.field public static final MSG_UNSUPPORTIVE:Ljava/lang/String; = "UNSUPPORTIVE"


# instance fields
.field private compressedSize:I

.field private final delegate:Ljava/io/InputStream;

.field private final keys:[I

.field private final password:Ljava/lang/String;

.field private skipBytes:I

.field private state:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

.field private value:I

.field private valueInc:I

.field private valuePos:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$filemanager$zip$ZipDecryptInputStream$State()[I
    .locals 3

    .prologue
    .line 6
    sget-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->$SWITCH_TABLE$com$infraware$filemanager$zip$ZipDecryptInputStream$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->values()[Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->COMPRESSED_SIZE:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->DATA:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->EF_LENGTH:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->FLAGS:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->FN_LENGTH:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->HEADER:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->SIGNATURE:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->TAIL:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    invoke-virtual {v1}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->$SWITCH_TABLE$com$infraware$filemanager$zip$ZipDecryptInputStream$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    .line 9
    new-array v3, v5, [I

    sput-object v3, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->CRC_TABLE:[I

    .line 11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 26
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->LFH_SIGNATURE:[I

    .line 6
    return-void

    .line 12
    :cond_0
    move v2, v0

    .line 13
    .local v2, r:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    const/16 v3, 0x8

    if-lt v1, v3, :cond_1

    .line 21
    sget-object v3, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->CRC_TABLE:[I

    aput v2, v3, v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 15
    ushr-int/lit8 v3, v2, 0x1

    const v4, -0x12477ce0

    xor-int v2, v3, v4

    .line 13
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_2
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 26
    nop

    :array_0
    .array-data 0x4
        0x50t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "stream"
    .parameter "password"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    .line 32
    sget-object v0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->SIGNATURE:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    iput-object v0, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->state:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    .line 40
    iput-object p1, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->delegate:Ljava/io/InputStream;

    .line 41
    iput-object p2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->password:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private crc32(IB)I
    .locals 3
    .parameter "oldCrc"
    .parameter "charAt"

    .prologue
    .line 167
    ushr-int/lit8 v0, p1, 0x8

    sget-object v1, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->CRC_TABLE:[I

    xor-int v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private decryptByte()B
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    or-int/lit8 v0, v1, 0x2

    .line 163
    .local v0, temp:I
    xor-int/lit8 v1, v0, 0x1

    mul-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    return v1
.end method

.method private initKeys(Ljava/lang/String;)V
    .locals 4
    .parameter "password"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    const/4 v2, 0x0

    const v3, 0x12345678

    aput v3, v1, v2

    .line 147
    iget-object v1, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    const/4 v2, 0x1

    const v3, 0x23456789

    aput v3, v1, v2

    .line 148
    iget-object v1, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    const/4 v2, 0x2

    const v3, 0x34567890

    aput v3, v1, v2

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 152
    return-void

    .line 150
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->updateKeys(B)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateKeys(B)V
    .locals 6
    .parameter "charAt"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 155
    iget-object v0, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    iget-object v1, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    aget v1, v1, v4

    invoke-direct {p0, v1, p1}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->crc32(IB)I

    move-result v1

    aput v1, v0, v4

    .line 156
    iget-object v0, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    aget v1, v0, v3

    iget-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    aget v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aput v1, v0, v3

    .line 157
    iget-object v0, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    iget-object v1, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    aget v1, v1, v3

    const v2, 0x8088405

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 158
    iget-object v0, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    iget-object v1, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->keys:[I

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    invoke-direct {p0, v1, v2}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->crc32(IB)I

    move-result v1

    aput v1, v0, v5

    .line 159
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 142
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 143
    return-void
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    iget-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 47
    .local v1, result:I
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->skipBytes:I

    if-nez v2, :cond_9

    .line 48
    invoke-static {}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->$SWITCH_TABLE$com$infraware$filemanager$zip$ZipDecryptInputStream$State()[I

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->state:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    invoke-virtual {v3}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 50
    :pswitch_0
    sget-object v2, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->LFH_SIGNATURE:[I

    iget v3, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    aget v2, v2, v3

    if-eq v1, v2, :cond_1

    .line 51
    sget-object v2, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->TAIL:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->state:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    goto :goto_0

    .line 54
    :cond_1
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    .line 55
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    sget-object v3, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->LFH_SIGNATURE:[I

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 56
    const/4 v2, 0x2

    iput v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->skipBytes:I

    .line 57
    sget-object v2, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->FLAGS:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->state:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    goto :goto_0

    .line 62
    :pswitch_1
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    .line 63
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NOT_ENC"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_2
    and-int/lit8 v2, v1, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_3

    .line 66
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "UNSUPPORTIVE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_3
    and-int/lit8 v2, v1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 69
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "UNSUPPORTIVE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 72
    iput v4, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->compressedSize:I

    .line 73
    iput v4, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    .line 74
    iput v6, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valueInc:I

    .line 75
    sget-object v2, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->COMPRESSED_SIZE:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->state:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    .line 76
    const/16 v2, 0xb

    iput v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->skipBytes:I

    goto :goto_0

    .line 79
    :pswitch_2
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->compressedSize:I

    iget v3, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    mul-int/lit8 v3, v3, 0x8

    shl-int v3, v1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->compressedSize:I

    .line 80
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valueInc:I

    sub-int/2addr v1, v2

    .line 81
    if-gez v1, :cond_5

    .line 82
    iput v5, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valueInc:I

    .line 83
    add-int/lit16 v1, v1, 0x100

    .line 88
    :goto_1
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    .line 89
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 90
    iput v4, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    .line 91
    iput v4, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->value:I

    .line 92
    sget-object v2, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->FN_LENGTH:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->state:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    .line 93
    const/4 v2, 0x4

    iput v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->skipBytes:I

    goto/16 :goto_0

    .line 86
    :cond_5
    iput v4, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valueInc:I

    goto :goto_1

    .line 98
    :pswitch_3
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->value:I

    iget v3, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    mul-int/lit8 v3, v3, 0x8

    shl-int v3, v1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->value:I

    .line 99
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    if-ne v2, v5, :cond_7

    .line 100
    iput v4, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    .line 101
    iget-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->state:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    sget-object v3, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->FN_LENGTH:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    if-ne v2, v3, :cond_6

    .line 102
    sget-object v2, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->EF_LENGTH:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->state:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    goto/16 :goto_0

    .line 105
    :cond_6
    sget-object v2, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->HEADER:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->state:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    .line 106
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->value:I

    iput v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->skipBytes:I

    goto/16 :goto_0

    .line 110
    :cond_7
    iput v5, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    goto/16 :goto_0

    .line 114
    :pswitch_4
    iget-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->password:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->initKeys(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-lt v0, v6, :cond_8

    .line 119
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->compressedSize:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->compressedSize:I

    .line 120
    sget-object v2, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->DATA:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->state:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    .line 122
    .end local v0           #i:I
    :pswitch_5
    invoke-direct {p0}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->decryptByte()B

    move-result v2

    xor-int/2addr v2, v1

    and-int/lit16 v1, v2, 0xff

    .line 123
    int-to-byte v2, v1

    invoke-direct {p0, v2}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->updateKeys(B)V

    .line 124
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->compressedSize:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->compressedSize:I

    .line 125
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->compressedSize:I

    if-nez v2, :cond_0

    .line 126
    iput v4, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->valuePos:I

    .line 127
    sget-object v2, Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;->SIGNATURE:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    iput-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->state:Lcom/infraware/filemanager/zip/ZipDecryptInputStream$State;

    goto/16 :goto_0

    .line 116
    .restart local v0       #i:I
    :cond_8
    invoke-direct {p0}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->decryptByte()B

    move-result v2

    xor-int/2addr v2, v1

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->updateKeys(B)V

    .line 117
    iget-object v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 134
    .end local v0           #i:I
    :cond_9
    iget v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->skipBytes:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/infraware/filemanager/zip/ZipDecryptInputStream;->skipBytes:I

    goto/16 :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
