.class public final Lcom/skyhookwireless/wps/_sdkab;
.super Lcom/skyhookwireless/wps/_sdkz;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdkc:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkd:Ljava/lang/String;

.field private _sdke:Ljava/nio/ByteBuffer;

.field private _sdkf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkbb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x29

    const/16 v11, 0xf

    const/16 v10, 0xc

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Xy\'L"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_8

    move v3, v8

    :cond_0
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v13, v3

    move-object v3, v1

    move v1, v13

    :goto_0
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_0

    move v7, v10

    :goto_1
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_1

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_0

    :cond_1
    move v2, v4

    move-object v13, v3

    move v3, v1

    move-object v1, v13

    :goto_2
    if-gt v2, v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "/@\u001a^\u007fcH\u0016^"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_7

    move v3, v8

    :cond_2
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v13, v3

    move-object v3, v1

    move v1, v13

    :goto_3
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_1

    move v7, v10

    :goto_4
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_3

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_3

    :cond_3
    move v2, v4

    move-object v13, v3

    move v3, v1

    move-object v1, v13

    :goto_5
    if-gt v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const/4 v1, 0x2

    const-string v2, "NyT\u0012c`B\u0001\u000e,iH\u001d\u0012ik\t\u0012\u0011~/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v9, :cond_6

    move v4, v8

    :cond_4
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v13, v4

    move-object v4, v2

    move v2, v13

    :goto_6
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2

    move v8, v10

    :goto_7
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_5

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_6

    :cond_5
    move v3, v5

    move-object v13, v4

    move v4, v2

    move-object v2, v13

    :goto_8
    if-gt v3, v4, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/wps/_sdkab;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v11

    goto/16 :goto_1

    :pswitch_1
    move v7, v12

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x74

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x7e

    goto/16 :goto_1

    :pswitch_4
    move v7, v11

    goto :goto_4

    :pswitch_5
    move v7, v12

    goto :goto_4

    :pswitch_6
    const/16 v7, 0x74

    goto :goto_4

    :pswitch_7
    const/16 v7, 0x7e

    goto :goto_4

    :pswitch_8
    move v8, v11

    goto :goto_7

    :pswitch_9
    move v8, v12

    goto :goto_7

    :pswitch_a
    const/16 v8, 0x74

    goto :goto_7

    :pswitch_b
    const/16 v8, 0x7e

    goto :goto_7

    :cond_6
    move v4, v8

    goto :goto_8

    :cond_7
    move v3, v8

    goto :goto_5

    :cond_8
    move v3, v8

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/skyhookwireless/wps/_sdkc;
        }
    .end annotation

    sget-boolean v9, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    invoke-direct/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkz;-><init>()V

    const-class v3, Lcom/skyhookwireless/wps/_sdkab;

    invoke-static {v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/skyhookwireless/wps/_sdkab;->_sdkc:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/skyhookwireless/wps/_sdkab;->_sdkd:Ljava/lang/String;

    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/io/File;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    long-to-int v7, v7

    int-to-long v7, v7

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/skyhookwireless/wps/_sdkab;->_sdke:Ljava/nio/ByteBuffer;

    invoke-direct/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdkab;->_sdka()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkab;->_sdke:Ljava/nio/ByteBuffer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkab;->_sdke:Ljava/nio/ByteBuffer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/16 v4, 0x10

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    new-instance v3, Lcom/skyhookwireless/wps/_sdkc;

    invoke-direct {v3}, Lcom/skyhookwireless/wps/_sdkc;-><init>()V

    throw v3

    :cond_0
    const/4 v4, 0x2

    sub-int v4, v3, v4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkab;->_sdka(II)Lcom/skyhookwireless/wps/_sdka;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/wps/_sdka;->_sdkb(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x4

    const/4 v6, 0x2

    sub-int/2addr v3, v6

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    move v1, v3

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkab;->_sdka(II)Lcom/skyhookwireless/wps/_sdka;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/skyhookwireless/wps/_sdkab;->_sdkf:Ljava/util/ArrayList;

    sget-object v5, Lcom/skyhookwireless/wps/_sdkab;->z:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    const/4 v7, 0x0

    move/from16 v17, v7

    move-wide/from16 v18, v5

    move-wide/from16 v6, v18

    move/from16 v5, v17

    :cond_1
    if-ge v5, v4, :cond_2

    const/16 v8, 0x20

    invoke-virtual {v3, v8}, Lcom/skyhookwireless/wps/_sdka;->_sdkc(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkab;->_sdkf:Ljava/util/ArrayList;

    move-object v8, v0

    new-instance v12, Lcom/skyhookwireless/wps/_sdkbb;

    new-instance v13, Lcom/skyhookwireless/wps/_sdkb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkab;->_sdke:Ljava/nio/ByteBuffer;

    move-object v14, v0

    long-to-int v15, v6

    move-wide v0, v10

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/skyhookwireless/wps/_sdkb;-><init>(Ljava/nio/ByteBuffer;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkab;->_sdkd:Ljava/lang/String;

    move-object v14, v0

    invoke-direct {v12, v13, v14, v5}, Lcom/skyhookwireless/wps/_sdkbb;-><init>(Lcom/skyhookwireless/wps/_sdkb;Ljava/lang/String;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    if-eqz v9, :cond_1

    :cond_2
    return-void
.end method

.method private _sdka(II)Lcom/skyhookwireless/wps/_sdka;
    .locals 3

    new-instance v0, Lcom/skyhookwireless/wps/_sdka;

    new-instance v1, Lcom/skyhookwireless/wps/_sdkb;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkab;->_sdke:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v2, p1, p2}, Lcom/skyhookwireless/wps/_sdkb;-><init>(Ljava/nio/ByteBuffer;II)V

    invoke-direct {v0, v1}, Lcom/skyhookwireless/wps/_sdka;-><init>(Lcom/skyhookwireless/wps/_sdkb;)V

    return-object v0
.end method

.method private _sdka()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/skyhookwireless/wps/_sdkc;
        }
    .end annotation

    const/16 v4, 0x10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkab;->_sdke:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sget-object v1, Lcom/skyhookwireless/wps/_sdkab;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/skyhookwireless/wps/_sdkc;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkc;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkab;->_sdke:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    aget-byte v1, v0, v3

    const/16 v2, 0x57

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    const/16 v2, 0x53

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Lcom/skyhookwireless/wps/_sdkc;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkc;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Lcom/skyhookwireless/wps/_sdkw;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkw;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkab;->z:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkab;->_sdkd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/wps/_sdkw;->_sdka([B)V

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkw;->_sdka()[B

    move-result-object v0

    new-array v1, v4, [B

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkab;->_sdke:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkab;->_sdke:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkab;->_sdke:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/skyhookwireless/wps/_sdkc;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkc;-><init>()V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public _sdka(Lcom/skyhookwireless/_sdkyb;)Lcom/skyhookwireless/wps/_sdkcb;
    .locals 8

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkz;->_sdkb:Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkab;->_sdkf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkbb;

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdkbb;->_sdka(Lcom/skyhookwireless/_sdkyb;)Lcom/skyhookwireless/wps/_sdkcb;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkab;->_sdkc:Lcom/skyhookwireless/_sdkcb;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/skyhookwireless/wps/_sdkab;->z:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/skyhookwireless/wps/_sdkab;->z:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkbb;->_sdka()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _sdka(Ljava/lang/String;Ljava/lang/String;)Lcom/skyhookwireless/wps/_sdkz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/skyhookwireless/wps/_sdkc;
        }
    .end annotation

    new-instance v0, Lcom/skyhookwireless/wps/_sdkab;

    invoke-direct {v0, p1, p2}, Lcom/skyhookwireless/wps/_sdkab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkab;->_sdke:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkab;->_sdkf:Ljava/util/ArrayList;

    return-void
.end method
