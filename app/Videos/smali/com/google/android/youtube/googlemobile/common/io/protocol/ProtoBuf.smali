.class public Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$1;,
        Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/Boolean; = null

.field private static final MARKER_HOLDER:I = -0x1

.field private static final MSG_EOF:Ljava/lang/String; = "Unexp.EOF"

.field private static final MSG_MISMATCH:Ljava/lang/String; = "Type mismatch"

.field private static final MSG_UNSUPPORTED:Ljava/lang/String; = "Unsupp.Type"

.field private static final NULL_COUNTER:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter; = null

.field public static final TRUE:Ljava/lang/Boolean; = null

.field private static final VARINT_MAX_BYTES:I = 0xa

.field static final WIRETYPE_END_GROUP:I = 0x4

.field static final WIRETYPE_FIXED32:I = 0x5

.field static final WIRETYPE_FIXED64:I = 0x1

.field static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field static final WIRETYPE_START_GROUP:I = 0x3

.field static final WIRETYPE_VARINT:I


# instance fields
.field private cachedSize:I

.field private msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

.field private final values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

.field private final wireTypes:Lcom/google/android/youtube/googlemobile/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$1;)V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->NULL_COUNTER:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;->newIntMapForProtoBuf()Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;->newIntMapForProtoBuf()Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    goto :goto_0
.end method

.method private addObject(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

    return-void
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private static checkTag(I)V
    .locals 0

    return-void
.end method

.method private static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupp.Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object v0, p0

    :goto_0
    return-object v0

    :pswitch_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/youtube/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, p0

    goto :goto_0

    :pswitch_6
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/youtube/googlemobile/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    check-cast p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, p0

    goto :goto_0

    :pswitch_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    check-cast p0, [B

    check-cast p0, [B

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/IoUtil;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, p0

    goto :goto_0

    :pswitch_8
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    :try_start_1
    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;)V

    check-cast p0, [B

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v0, p0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCachedDataSize(IIZ)I
    .locals 4

    shl-int/lit8 v0, p1, 0x3

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0x10

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, [B

    if-eqz v1, :cond_1

    check-cast p0, [B

    check-cast p0, [B

    array-length v1, p0

    :goto_0
    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_1
    return v0

    :pswitch_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v1

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v1

    :cond_0
    invoke-static {v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v1, p3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v1

    goto :goto_0

    :cond_2
    check-cast p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;

    invoke-direct {p0, p3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCachedDataSize(Z)I
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->keys()Lcom/google/android/youtube/googlemobile/common/util/IntMap$KeyIterator;

    move-result-object v0

    move v1, v6

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/util/IntMap$KeyIterator;->next()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v4, v1

    move v1, v6

    :goto_2
    if-ge v1, v3, :cond_1

    invoke-direct {p0, v2, v1, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getCachedDataSize(IIZ)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    goto :goto_0
.end method

.method private static getCount(Ljava/lang/Object;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDefault(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method private getObject(II)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->checkTag(I)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private getObject(III)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->checkTag(I)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v1

    if-lt p2, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p4, Ljava/util/Vector;

    if-eqz v1, :cond_2

    check-cast p4, Ljava/util/Vector;

    invoke-virtual {p4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    move-object v0, p4

    :goto_0
    invoke-static {v1, p3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {v0, v2, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    move-object v1, p4

    goto :goto_0
.end method

.method private static getVarIntSize(J)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/16 v0, 0xa

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    move-wide v1, p0

    :goto_0
    const-wide/16 v3, 0x80

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x7

    shr-long/2addr v1, v3

    goto :goto_0
.end method

.method private final getWireType(I)I
    .locals 5

    const/16 v4, 0x2f

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private insertObject(IILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

    return-void
.end method

.method private insertObject(IILjava/lang/Object;Z)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->checkTag(I)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x0

    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/util/Vector;

    move-object v1, v0

    :cond_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->put(ILjava/lang/Object;)V

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private isZigZagEncodedType(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private outputField(ILcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    invoke-direct/range {p0 .. p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v6

    shl-int/lit8 v4, p1, 0x3

    or-int v7, v4, v6

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_5

    int-to-long v9, v7

    move-object/from16 v0, p2

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v9

    add-int/2addr v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->availableContent()I

    move-result v11

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :pswitch_1
    const/16 v4, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v4, 0x5

    if-ne v6, v4, :cond_0

    const/4 v4, 0x4

    :goto_1
    const/4 v14, 0x0

    move/from16 v17, v14

    move-wide/from16 v18, v12

    move-wide/from16 v13, v18

    move/from16 v12, v17

    :goto_2
    if-ge v12, v4, :cond_1

    const-wide/16 v15, 0xff

    and-long/2addr v15, v13

    long-to-int v15, v15

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->write(I)V

    const/16 v15, 0x8

    shr-long/2addr v13, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    const/16 v4, 0x8

    goto :goto_1

    :cond_1
    move v4, v10

    :goto_3
    if-nez v4, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->availableContent()I

    move-result v4

    sub-int/2addr v4, v11

    add-int/2addr v4, v9

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :pswitch_2
    const/16 v4, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v12, v13}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v12

    :cond_2
    move-object/from16 v0, p2

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move v4, v10

    goto :goto_3

    :pswitch_3
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v4

    const/16 v12, 0x1b

    if-ne v4, v12, :cond_3

    const/16 v4, 0x10

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v4

    instance-of v12, v4, [B

    if-eqz v12, :cond_4

    check-cast v4, [B

    check-cast v4, [B

    array-length v12, v4

    int-to-long v12, v12

    move-object/from16 v0, p2

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->write([B)V

    move v4, v10

    goto :goto_3

    :cond_3
    const/16 v4, 0x19

    goto :goto_5

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->availableContent()I

    move-result v10

    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->addMarker(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->numMarkers()I

    move-result v10

    const/4 v12, -0x1

    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->addMarker(I)V

    check-cast v4, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;)I

    move-result v4

    move-object/from16 v0, p2

    move v1, v10

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->setMarker(II)V

    int-to-long v12, v4

    invoke-static {v12, v13}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    const/4 v9, 0x1

    move/from16 v17, v9

    move v9, v4

    move/from16 v4, v17

    goto/16 :goto_3

    :pswitch_4
    const/16 v4, 0x1a

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;)I

    move-result v4

    add-int/2addr v4, v9

    shl-int/lit8 v9, p1, 0x3

    or-int/lit8 v9, v9, 0x4

    int-to-long v9, v9

    move-object/from16 v0, p2

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v9

    add-int/2addr v4, v9

    const/4 v9, 0x1

    move/from16 v17, v9

    move v9, v4

    move/from16 v4, v17

    goto/16 :goto_3

    :cond_5
    return v4

    :cond_6
    move v4, v9

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private outputTo(Ljava/io/OutputStream;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;

    invoke-direct {v2}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;-><init>()V

    invoke-direct {p0, v2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;)I

    move-result v3

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/io/DataOutput;

    move-object v1, v0

    invoke-interface {v1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->numMarkers()I

    move-result v1

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v5

    sub-int v6, v5, v4

    invoke-virtual {v2, p1, v4, v6}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v4

    int-to-long v6, v4

    invoke-static {p1, v6, v7}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    add-int/lit8 v3, v3, 0x2

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->availableContent()I

    move-result v1

    if-ge v4, v1, :cond_2

    invoke-virtual {v2}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->availableContent()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v2, p1, v4, v1}, Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    :cond_2
    return-void
.end method

.method private outputToInternal(Lcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->keys()Lcom/google/android/youtube/googlemobile/common/util/IntMap$KeyIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/util/IntMap$KeyIterator;->next()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->outputField(ILcom/google/android/youtube/googlemobile/common/io/MarkedOutputStream;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private parseInternal(Ljava/io/InputStream;IZLcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->clear()V

    :cond_0
    move v0, p2

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    invoke-static {p1, v1, p4}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    :cond_1
    if-gez v0, :cond_a

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_2
    iget v3, p4, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v0, v3

    long-to-int v3, v1

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    ushr-long/2addr v1, v4

    long-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->put(ILjava/lang/Object;)V

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reading garbage data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v2, 0x0

    invoke-static {p1, v2, p4}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v2

    iget v4, p4, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v0, v4

    invoke-direct {p0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v2

    :cond_3
    invoke-static {v2, v3}, Lcom/google/android/youtube/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :pswitch_2
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x5

    if-ne v3, v6, :cond_4

    const/4 v3, 0x4

    :goto_2
    sub-int/2addr v0, v3

    move v9, v3

    move v3, v2

    move v2, v9

    :goto_3
    add-int/lit8 v6, v2, -0x1

    if-lez v2, :cond_5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-long v7, v2

    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    add-int/lit8 v2, v3, 0x8

    move v3, v2

    move v2, v6

    goto :goto_3

    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    :cond_5
    invoke-static {v4, v5}, Lcom/google/android/youtube/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x0

    invoke-static {p1, v2, p4}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p4, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_6

    new-instance v3, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v4, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    invoke-direct {v3, p2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;)V

    const/4 v4, 0x0

    invoke-direct {v3, p1, v2, v4, p4}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move v2, v0

    move-object v0, v3

    goto :goto_1

    :cond_6
    new-array v3, v2, [B

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_8

    sub-int v5, v2, v4

    invoke-virtual {p1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_7

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    add-int/2addr v4, v5

    goto :goto_4

    :cond_8
    move v2, v0

    move-object v0, v3

    goto :goto_1

    :pswitch_4
    new-instance v2, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    if-nez v3, :cond_9

    const/4 v3, 0x0

    :goto_5
    invoke-direct {v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;)V

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3, p4}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    move-object v3, p2

    goto :goto_5

    :cond_a
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static readVarInt(Ljava/io/InputStream;Z)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->NULL_COUNTER:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;

    invoke-static {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readVarInt(Ljava/io/InputStream;ZLcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput v2, p2, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move v7, v2

    move v8, v2

    move-wide v2, v0

    move v0, v7

    move v1, v8

    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_2

    move-wide v1, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move-wide v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-wide v1, v2

    goto :goto_2
.end method

.method private setObject(ILjava/lang/Object;)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-wide v1, p1

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    const-wide/16 v3, 0x7f

    and-long/2addr v3, v1

    long-to-int v3, v3

    const/4 v4, 0x7

    ushr-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    :cond_1
    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static zigZagDecode(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static zigZagEncode(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addBool(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public addBytes(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void
.end method

.method public addDouble(ID)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->setLong(IJ)V

    return-void
.end method

.method public addFloat(IF)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->setInt(II)V

    return-void
.end method

.method public addInt(II)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->addLong(IJ)V

    return-void
.end method

.method public addLong(IJ)V
    .locals 1

    invoke-static {p2, p3}, Lcom/google/android/youtube/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void
.end method

.method public addProtoBuf(ILcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void
.end method

.method public addString(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->clear()V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->clear()V

    return-void
.end method

.method public createGroup(I)Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;
    .locals 2

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getType()Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;)V

    return-object v0
.end method

.method public getBool(I)Z
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBool(II)Z
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getBytes(II)[B
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(II)D
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getFloat(II)F
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2

    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getInt(II)I
    .locals 2

    const/16 v0, 0x15

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(II)J
    .locals 2

    const/16 v0, 0x13

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtoBuf(I)Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getProtoBuf(II)Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getType(I)I
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x10

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v0

    move v1, v0

    :goto_0
    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p1, v3, v2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    :cond_0
    move v0, v3

    :cond_1
    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getType()Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public has(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertBool(IIZ)V
    .locals 1

    if-eqz p3, :cond_0

    sget-object v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public insertBytes(II[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public insertDouble(IID)V
    .locals 2

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    return-void
.end method

.method public insertFloat(IIF)V
    .locals 1

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->insertInt(III)V

    return-void
.end method

.method public insertInt(III)V
    .locals 2

    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    return-void
.end method

.method public insertLong(IIJ)V
    .locals 1

    invoke-static {p3, p4}, Lcom/google/android/youtube/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public insertProtoBuf(IILcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public insertString(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public maxTag()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->maxKey()I

    move-result v0

    return v0
.end method

.method public outputTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public outputWithSizeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public parse(Ljava/io/InputStream;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-instance v1, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$1;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public parse([B)Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public remove(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lt p2, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->remove(I)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method public setBool(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setBytes(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setDouble(ID)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->setLong(IJ)V

    return-void
.end method

.method public setFloat(IF)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->setInt(II)V

    return-void
.end method

.method public setInt(II)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->setLong(IJ)V

    return-void
.end method

.method public setLong(IJ)V
    .locals 1

    invoke-static {p2, p3}, Lcom/google/android/youtube/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setProtoBuf(ILcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method setType(Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/youtube/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/util/IntMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    if-eq p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBufType;

    return-void
.end method

.method public toByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
