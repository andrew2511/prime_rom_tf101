.class public Lcom/google/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;
.source "ProtoBuf.java"


# static fields
.field public static final FALSE:Ljava/lang/Boolean;

.field private static SMALL_NUMBERS:[Ljava/lang/Long;

.field public static final TRUE:Ljava/lang/Boolean;


# instance fields
.field private msgType:Lcom/google/common/io/protocol/ProtoBufType;

.field private final values:Ljava/util/Vector;

.field private final wireTypes:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    .line 42
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v5}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Long;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x4

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x6

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x7

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x8

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x9

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xb

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xc

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xd

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xe

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xf

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBufType;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    .line 80
    iput-object p1, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    .line 81
    return-void
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .locals 5
    .parameter "tag"
    .parameter "object"

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v1

    .line 834
    .local v1, tagType:I
    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-nez v2, :cond_1

    .line 894
    .end local p2
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    .line 838
    .restart local p2
    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 839
    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 897
    .end local p2
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type mismatch type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 843
    .restart local p2
    :cond_3
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 844
    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_1

    .line 864
    :cond_4
    instance-of v2, p2, [B

    if-eqz v2, :cond_5

    .line 865
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 874
    :cond_5
    instance-of v2, p2, Lcom/google/common/io/protocol/ProtoBuf;

    if-eqz v2, :cond_6

    .line 875
    sparse-switch v1, :sswitch_data_1

    goto :goto_1

    .line 882
    :sswitch_1
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-eqz v2, :cond_0

    check-cast p2, Lcom/google/common/io/protocol/ProtoBuf;

    .end local p2
    iget-object v2, p2, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 888
    .restart local p2
    :cond_6
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 889
    sparse-switch v1, :sswitch_data_2

    goto :goto_1

    .line 844
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 865
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
    .end sparse-switch

    .line 875
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x1c -> :sswitch_1
    .end sparse-switch

    .line 889
    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1c -> :sswitch_0
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method private convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .parameter "obj"
    .parameter "tagType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1047
    packed-switch p2, :pswitch_data_0

    .line 1108
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unsupp.Type"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    move-object v4, p1

    .line 1105
    .end local p1
    :goto_0
    return-object v4

    .line 1052
    .restart local p1
    :pswitch_2
    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 1053
    goto :goto_0

    .line 1055
    :cond_0
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v4, v4

    packed-switch v4, :pswitch_data_1

    .line 1061
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Type mismatch"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1057
    :pswitch_3
    sget-object v4, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1059
    :pswitch_4
    sget-object v4, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1071
    .restart local p1
    :pswitch_5
    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 1072
    sget-object v4, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    :goto_1
    aget-object v4, v4, v5

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    .restart local p1
    :cond_2
    move-object v4, p1

    .line 1074
    goto :goto_0

    .line 1077
    :pswitch_6
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1078
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/google/common/io/protocol/ProtoBuf;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_0

    .line 1079
    .restart local p1
    :cond_3
    instance-of v4, p1, Lcom/google/common/io/protocol/ProtoBuf;

    if-eqz v4, :cond_4

    .line 1080
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1082
    .local v1, buf:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    check-cast p1, Lcom/google/common/io/protocol/ProtoBuf;

    .end local p1
    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 1083
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1084
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1085
    .local v3, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local p1
    :cond_4
    move-object v4, p1

    .line 1088
    goto :goto_0

    .line 1091
    :pswitch_7
    instance-of v4, p1, [B

    if-eqz v4, :cond_5

    .line 1092
    check-cast p1, [B

    .end local p1
    move-object v0, p1

    check-cast v0, [B

    move-object v2, v0

    .line 1093
    .local v2, data:[B
    array-length v4, v2

    invoke-static {v2, v6, v4, v7}, Lcom/google/common/io/protocol/ProtoBuf;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v2           #data:[B
    .restart local p1
    :cond_5
    move-object v4, p1

    .line 1095
    goto :goto_0

    .line 1098
    :pswitch_8
    instance-of v4, p1, [B

    if-eqz v4, :cond_6

    .line 1100
    :try_start_1
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {v4, p1}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_0

    .line 1101
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 1102
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v3           #e:Ljava/io/IOException;
    .restart local p1
    :cond_6
    move-object v4, p1

    .line 1105
    goto/16 :goto_0

    .line 1047
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

    .line 1055
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static decodeUtf8([BIIZ)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "start"
    .parameter "end"
    .parameter "tolerant"

    .prologue
    .line 1283
    new-instance v5, Ljava/lang/StringBuffer;

    sub-int v0, p2, p1

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1284
    .local v5, sb:Ljava/lang/StringBuffer;
    move p1, p1

    .line 1286
    .local p1, pos:I
    :goto_0
    if-ge p1, p2, :cond_c

    .line 1287
    add-int/lit8 v4, p1, 0x1

    .end local p1           #pos:I
    .local v4, pos:I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 1288
    .local p1, b:I
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 1289
    int-to-char p1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local p1           #b:I
    move p1, v4

    .end local v4           #pos:I
    .local p1, pos:I
    goto :goto_0

    .line 1290
    .restart local v4       #pos:I
    .local p1, b:I
    :cond_0
    const/16 v0, 0xf5

    if-lt p1, v0, :cond_2

    .line 1291
    if-nez p3, :cond_1

    .line 1292
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Invalid UTF8"

    .end local p1           #b:I
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1294
    .restart local p0
    .restart local p1       #b:I
    :cond_1
    int-to-char p1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local p1           #b:I
    move p1, v4

    .end local v4           #pos:I
    .local p1, pos:I
    goto :goto_0

    .line 1296
    .restart local v4       #pos:I
    .local p1, b:I
    :cond_2
    const/16 v0, 0xe0

    .line 1297
    .local v0, border:I
    const/4 v1, 0x1

    .line 1298
    .local v1, count:I
    const/16 v3, 0x80

    .line 1299
    .local v3, minCode:I
    const/16 v2, 0x1f

    .line 1300
    .local v2, mask:I
    :goto_1
    if-lt p1, v0, :cond_4

    .line 1301
    shr-int/lit8 v0, v0, 0x1

    or-int/lit16 v0, v0, 0x80

    .line 1302
    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    const/4 v6, 0x4

    :goto_2
    shl-int/2addr v3, v6

    .line 1303
    add-int/lit8 v1, v1, 0x1

    .line 1304
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1302
    :cond_3
    const/4 v6, 0x5

    goto :goto_2

    .line 1306
    :cond_4
    and-int/2addr p1, v2

    .line 1308
    .local p1, code:I
    const/4 v0, 0x0

    .end local v2           #mask:I
    .local v0, i:I
    :goto_3
    if-ge v0, v1, :cond_7

    .line 1309
    shl-int/lit8 p1, p1, 0x6

    .line 1310
    if-lt v4, p2, :cond_5

    .line 1311
    if-nez p3, :cond_d

    .line 1312
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Invalid UTF8"

    .end local p1           #code:I
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1316
    .restart local p0
    .restart local p1       #code:I
    :cond_5
    if-nez p3, :cond_6

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xc0

    const/16 v6, 0x80

    if-eq v2, v6, :cond_6

    .line 1317
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Invalid UTF8"

    .end local p1           #code:I
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1319
    .restart local p0
    .restart local p1       #code:I
    :cond_6
    add-int/lit8 v2, v4, 0x1

    .end local v4           #pos:I
    .local v2, pos:I
    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr p1, v4

    .line 1308
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v4, v2

    .end local v2           #pos:I
    .restart local v4       #pos:I
    goto :goto_3

    .line 1324
    :cond_7
    if-nez p3, :cond_8

    if-lt p1, v3, :cond_9

    :cond_8
    const v0, 0xd800

    if-lt p1, v0, :cond_a

    .end local v0           #i:I
    const v0, 0xdfff

    if-gt p1, v0, :cond_a

    .line 1325
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Invalid UTF8"

    .end local p1           #code:I
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1328
    .restart local p0
    .restart local p1       #code:I
    :cond_a
    const v0, 0xffff

    if-gt p1, v0, :cond_b

    .line 1329
    int-to-char p1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local p1           #code:I
    move p1, v4

    .end local v4           #pos:I
    .local p1, pos:I
    goto/16 :goto_0

    .line 1331
    .restart local v4       #pos:I
    .local p1, code:I
    :cond_b
    const/high16 v0, 0x1

    sub-int/2addr p1, v0

    .line 1332
    const v0, 0xd800

    shr-int/lit8 v1, p1, 0xa

    or-int/2addr v0, v1

    int-to-char v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1333
    .end local v1           #count:I
    const v0, 0xdc00

    and-int/lit16 p1, p1, 0x3ff

    or-int/2addr p1, v0

    int-to-char p1, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local p1           #code:I
    move p1, v4

    .end local v4           #pos:I
    .local p1, pos:I
    goto/16 :goto_0

    .line 1337
    .end local v3           #minCode:I
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    return-object p0

    .restart local v0       #i:I
    .restart local v1       #count:I
    .restart local v3       #minCode:I
    .restart local v4       #pos:I
    .restart local p0
    .local p1, code:I
    :cond_d
    move v2, v4

    .end local v4           #pos:I
    .restart local v2       #pos:I
    goto :goto_4
.end method

.method static encodeUtf8(Ljava/lang/String;[BI)I
    .locals 9
    .parameter "s"
    .parameter "buf"
    .parameter "pos"

    .prologue
    const v8, 0xd800

    const v7, 0xfc00

    .line 1210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1211
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_9

    .line 1212
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1215
    .local v0, code:I
    if-lt v0, v8, :cond_0

    const v5, 0xdfff

    if-gt v0, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_0

    .line 1216
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1221
    .local v2, codeLo:I
    and-int v5, v2, v7

    and-int v6, v0, v7

    xor-int/2addr v5, v6

    const/16 v6, 0x400

    if-ne v5, v6, :cond_0

    .line 1223
    add-int/lit8 v3, v3, 0x1

    .line 1226
    and-int v5, v2, v7

    if-ne v5, v8, :cond_2

    .line 1227
    move v1, v2

    .line 1228
    .local v1, codeHi:I
    move v2, v0

    .line 1232
    :goto_1
    and-int/lit16 v5, v1, 0x3ff

    shl-int/lit8 v5, v5, 0xa

    and-int/lit16 v6, v2, 0x3ff

    or-int/2addr v5, v6

    const/high16 v6, 0x1

    add-int v0, v5, v6

    .line 1235
    .end local v1           #codeHi:I
    .end local v2           #codeLo:I
    :cond_0
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_3

    .line 1236
    if-eqz p1, :cond_1

    .line 1237
    int-to-byte v5, v0

    aput-byte v5, p1, p2

    .line 1239
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 1211
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1230
    .restart local v2       #codeLo:I
    :cond_2
    move v1, v0

    .restart local v1       #codeHi:I
    goto :goto_1

    .line 1240
    .end local v1           #codeHi:I
    .end local v2           #codeLo:I
    :cond_3
    const/16 v5, 0x7ff

    if-gt v0, v5, :cond_5

    .line 1242
    if-eqz p1, :cond_4

    .line 1243
    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 1244
    add-int/lit8 v5, p2, 0x1

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1246
    :cond_4
    add-int/lit8 p2, p2, 0x2

    goto :goto_2

    .line 1247
    :cond_5
    const v5, 0xffff

    if-gt v0, v5, :cond_7

    .line 1249
    if-eqz p1, :cond_6

    .line 1250
    shr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 1251
    add-int/lit8 v5, p2, 0x1

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1252
    add-int/lit8 v5, p2, 0x2

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1254
    :cond_6
    add-int/lit8 p2, p2, 0x3

    goto :goto_2

    .line 1256
    :cond_7
    if-eqz p1, :cond_8

    .line 1257
    shr-int/lit8 v5, v0, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 1258
    add-int/lit8 v5, p2, 0x1

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1259
    add-int/lit8 v5, p2, 0x2

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1260
    add-int/lit8 v5, p2, 0x3

    and-int/lit8 v6, v0, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1262
    :cond_8
    add-int/lit8 p2, p2, 0x4

    goto :goto_2

    .line 1266
    .end local v0           #code:I
    :cond_9
    return p2
.end method

.method static encodeUtf8(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 1194
    const/4 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    .line 1195
    .local v0, len:I
    new-array v1, v0, [B

    .line 1196
    .local v1, result:[B
    invoke-static {p0, v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->encodeUtf8(Ljava/lang/String;[BI)I

    .line 1197
    return-object v1
.end method

.method private getDataSize(II)I
    .locals 7
    .parameter "tag"
    .parameter "i"

    .prologue
    .line 537
    shl-int/lit8 v5, p1, 0x3

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v2

    .line 539
    .local v2, tagSize:I
    invoke-direct {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 556
    :pswitch_0
    const/16 v5, 0x10

    invoke-direct {p0, p1, p2, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    .line 560
    .local v1, o:Ljava/lang/Object;
    instance-of v5, v1, [B

    if-eqz v5, :cond_1

    .line 561
    check-cast v1, [B

    .end local v1           #o:Ljava/lang/Object;
    check-cast v1, [B

    array-length v0, v1

    .line 568
    .local v0, contentSize:I
    :goto_0
    int-to-long v5, v0

    invoke-static {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v0

    .end local v0           #contentSize:I
    :goto_1
    return v5

    .line 541
    :pswitch_1
    add-int/lit8 v5, v2, 0x4

    goto :goto_1

    .line 543
    :pswitch_2
    add-int/lit8 v5, v2, 0x8

    goto :goto_1

    .line 545
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v3

    .line 546
    .local v3, value:J
    invoke-direct {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 547
    invoke-static {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v3

    .line 549
    :cond_0
    invoke-static {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v5

    add-int/2addr v5, v2

    goto :goto_1

    .line 552
    .end local v3           #value:J
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v2

    goto :goto_1

    .line 562
    .restart local v1       #o:Ljava/lang/Object;
    :cond_1
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 563
    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    .restart local v0       #contentSize:I
    goto :goto_0

    .line 565
    .end local v0           #contentSize:I
    .restart local v1       #o:Ljava/lang/Object;
    :cond_2
    check-cast v1, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v0

    .restart local v0       #contentSize:I
    goto :goto_0

    .line 539
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

.method private getDefault(I)Ljava/lang/Object;
    .locals 1
    .parameter "tag"

    .prologue
    .line 906
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 912
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 910
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 906
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method private getObject(II)Ljava/lang/Object;
    .locals 2
    .parameter "tag"
    .parameter "desiredType"

    .prologue
    .line 924
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 926
    .local v0, count:I
    if-nez v0, :cond_0

    .line 927
    invoke-direct {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v1

    .line 934
    :goto_0
    return-object v1

    .line 930
    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 931
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 934
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private getObject(III)Ljava/lang/Object;
    .locals 5
    .parameter "tag"
    .parameter "index"
    .parameter "desiredType"

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    if-lt p2, v4, :cond_0

    .line 945
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 948
    :cond_0
    iget-object v4, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 950
    .local v1, o:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 951
    .local v3, v:Ljava/util/Vector;
    instance-of v4, v1, Ljava/util/Vector;

    if-eqz v4, :cond_1

    .line 952
    move-object v0, v1

    check-cast v0, Ljava/util/Vector;

    move-object v3, v0

    .line 953
    invoke-virtual {v3, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 956
    :cond_1
    invoke-direct {p0, v1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 958
    .local v2, o2:Ljava/lang/Object;
    if-eq v2, v1, :cond_2

    if-eqz v1, :cond_2

    .line 959
    if-nez v3, :cond_3

    .line 960
    invoke-direct {p0, p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 966
    :cond_2
    :goto_0
    return-object v2

    .line 962
    :cond_3
    invoke-virtual {v3, v2, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private static getVarIntSize(J)I
    .locals 3
    .parameter "i"

    .prologue
    .line 576
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    .line 577
    const/16 v1, 0xa

    .line 584
    :goto_0
    return v1

    .line 579
    :cond_0
    const/4 v0, 0x1

    .line 580
    .local v0, size:I
    :goto_1
    const-wide/16 v1, 0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_1

    .line 581
    add-int/lit8 v0, v0, 0x1

    .line 582
    const/4 v1, 0x7

    shr-long/2addr p0, v1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 584
    goto :goto_0
.end method

.method private final getWireType(I)I
    .locals 5
    .parameter "tag"

    .prologue
    const/16 v4, 0x2f

    .line 976
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 978
    .local v0, tagType:I
    packed-switch v0, :pswitch_data_0

    .line 1013
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    move v1, v0

    .line 1011
    :goto_0
    return v1

    .line 995
    :pswitch_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1001
    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    .line 1005
    :pswitch_4
    const/4 v1, 0x1

    goto :goto_0

    .line 1009
    :pswitch_5
    const/4 v1, 0x5

    goto :goto_0

    .line 1011
    :pswitch_6
    const/4 v1, 0x3

    goto :goto_0

    .line 978
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
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
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private insertObject(IILjava/lang/Object;)V
    .locals 5
    .parameter "tag"
    .parameter "index"
    .parameter "o"

    .prologue
    .line 1022
    invoke-direct {p0, p1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1024
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 1026
    .local v1, count:I
    if-nez v1, :cond_0

    .line 1027
    invoke-direct {p0, p1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 1040
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget-object v4, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 1031
    .local v2, curr:Ljava/lang/Object;
    instance-of v4, v2, Ljava/util/Vector;

    if-eqz v4, :cond_1

    .line 1032
    move-object v0, v2

    check-cast v0, Ljava/util/Vector;

    move-object v3, v0

    .line 1038
    .local v3, v:Ljava/util/Vector;
    :goto_1
    invoke-virtual {v3, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1034
    .end local v3           #v:Ljava/util/Vector;
    :cond_1
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1035
    .restart local v3       #v:Ljava/util/Vector;
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1036
    iget-object v4, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v4, v3, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method private isZigZagEncodedType(I)Z
    .locals 2
    .parameter "tag"

    .prologue
    .line 665
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 666
    .local v0, declaredType:I
    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static readVarInt(Ljava/io/InputStream;Z)J
    .locals 7
    .parameter "is"
    .parameter "permitEOF"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    const-wide/16 v2, 0x0

    .line 1127
    .local v2, result:J
    const/4 v4, 0x0

    .line 1131
    .local v4, shift:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v5, 0xa

    if-ge v0, v5, :cond_2

    .line 1132
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1134
    .local v1, in:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 1135
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1136
    const-wide/16 v5, -0x1

    .line 1149
    .end local v1           #in:I
    :goto_1
    return-wide v5

    .line 1138
    .restart local v1       #in:I
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "EOF"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1141
    :cond_1
    and-int/lit8 v5, v1, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v4

    or-long/2addr v2, v5

    .line 1143
    and-int/lit16 v5, v1, 0x80

    if-nez v5, :cond_3

    .end local v1           #in:I
    :cond_2
    move-wide v5, v2

    .line 1149
    goto :goto_1

    .line 1147
    .restart local v1       #in:I
    :cond_3
    add-int/lit8 v4, v4, 0x7

    .line 1131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setObject(ILjava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "o"

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 1160
    :cond_0
    if-eqz p2, :cond_1

    .line 1161
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1163
    :cond_1
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1164
    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)V
    .locals 4
    .parameter "os"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1172
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    long-to-int v1, v2

    .line 1174
    .local v1, toWrite:I
    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    .line 1176
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 1177
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1183
    .end local v1           #toWrite:I
    :cond_0
    return-void

    .line 1180
    .restart local v1       #toWrite:I
    :cond_1
    or-int/lit16 v2, v1, 0x80

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static zigZagDecode(J)J
    .locals 4
    .parameter "v"

    .prologue
    .line 682
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long p0, v0, v2

    .line 683
    return-wide p0
.end method

.method private static zigZagEncode(J)J
    .locals 4
    .parameter "v"

    .prologue
    .line 674
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long p0, v0, v2

    .line 675
    return-wide p0
.end method


# virtual methods
.method public addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/io/protocol/ProtoBuf;->insertProtoBuf(IILcom/google/common/io/protocol/ProtoBuf;)V

    .line 145
    return-void
.end method

.method public addString(ILjava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/io/protocol/ProtoBuf;->insertString(IILjava/lang/String;)V

    .line 174
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 88
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 89
    return-void
.end method

.method public getCount(I)I
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 482
    iget-object v1, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    move v1, v2

    .line 489
    :goto_0
    return v1

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 486
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_1

    move v1, v2

    .line 487
    goto :goto_0

    .line 489
    :cond_1
    instance-of v1, v0, Ljava/util/Vector;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/Vector;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_0

    .restart local v0       #o:Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDataSize()I
    .locals 4

    .prologue
    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, size:I
    const/4 v2, 0x0

    .local v2, tag:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/io/protocol/ProtoBuf;->maxTag()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 525
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 526
    invoke-direct {p0, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 524
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    .end local v0           #i:I
    :cond_1
    return v1
.end method

.method public getInt(I)I
    .locals 2
    .parameter "tag"

    .prologue
    .line 210
    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(II)J
    .locals 2
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 232
    const/16 v0, 0x13

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1
    .parameter "tag"

    .prologue
    .line 267
    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 275
    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "tag"

    .prologue
    .line 283
    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 291
    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getType(I)I
    .locals 5
    .parameter "tag"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x10

    .line 500
    const/16 v1, 0x10

    .line 501
    .local v1, tagType:I
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    if-eqz v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, p1}, Lcom/google/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v1

    .line 505
    :cond_0
    if-ne v1, v3, :cond_1

    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 506
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 509
    :cond_1
    if-ne v1, v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    if-lez v2, :cond_3

    .line 510
    invoke-direct {p0, p1, v4, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    .line 512
    .local v0, o:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    :cond_2
    move v1, v4

    .line 516
    .end local v0           #o:Ljava/lang/Object;
    :cond_3
    :goto_0
    return v1

    .line 512
    .restart local v0       #o:Ljava/lang/Object;
    :cond_4
    const/4 v2, 0x2

    move v1, v2

    goto :goto_0
.end method

.method public has(I)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

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

.method public insertProtoBuf(IILcom/google/common/io/protocol/ProtoBuf;)V
    .locals 0
    .parameter "tag"
    .parameter "index"
    .parameter "pb"

    .prologue
    .line 820
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 821
    return-void
.end method

.method public insertString(IILjava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 827
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 828
    return-void
.end method

.method public maxTag()I
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public outputTo(Ljava/io/OutputStream;)V
    .locals 14
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    const/4 v8, 0x0

    .local v8, tag:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/io/protocol/ProtoBuf;->maxTag()I

    move-result v12

    if-gt v8, v12, :cond_6

    .line 595
    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v7

    .line 596
    .local v7, size:I
    invoke-direct {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v11

    .line 599
    .local v11, wireType:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_5

    .line 600
    shl-int/lit8 v12, v8, 0x3

    or-int/2addr v12, v11

    int-to-long v12, v12

    invoke-static {p1, v12, v13}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    .line 602
    packed-switch v11, :pswitch_data_0

    .line 646
    :pswitch_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 605
    :pswitch_1
    const/16 v12, 0x13

    invoke-direct {p0, v8, v4, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 607
    .local v9, v:J
    const/4 v12, 0x5

    if-ne v11, v12, :cond_0

    const/4 v12, 0x4

    move v2, v12

    .line 608
    .local v2, cnt:I
    :goto_2
    const/4 v1, 0x0

    .local v1, b:I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 609
    const-wide/16 v12, 0xff

    and-long/2addr v12, v9

    long-to-int v12, v12

    invoke-virtual {p1, v12}, Ljava/io/OutputStream;->write(I)V

    .line 610
    const/16 v12, 0x8

    shr-long/2addr v9, v12

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 607
    .end local v1           #b:I
    .end local v2           #cnt:I
    :cond_0
    const/16 v12, 0x8

    move v2, v12

    goto :goto_2

    .line 615
    .end local v9           #v:J
    :pswitch_2
    const/16 v12, 0x13

    invoke-direct {p0, v8, v4, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 616
    .restart local v9       #v:J
    invoke-direct {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 617
    invoke-static {v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v9

    .line 619
    :cond_1
    invoke-static {p1, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    .line 599
    .end local v9           #v:J
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 623
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v12

    const/16 v13, 0x1b

    if-ne v12, v13, :cond_3

    const/16 v12, 0x10

    :goto_5
    invoke-direct {p0, v8, v4, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v6

    .line 628
    .local v6, o:Ljava/lang/Object;
    instance-of v12, v6, [B

    if-eqz v12, :cond_4

    .line 629
    check-cast v6, [B

    .end local v6           #o:Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    .line 630
    .local v3, data:[B
    array-length v12, v3

    int-to-long v12, v12

    invoke-static {p1, v12, v13}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    .line 631
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4

    .line 623
    .end local v3           #data:[B
    :cond_3
    const/16 v12, 0x19

    goto :goto_5

    .line 633
    .restart local v6       #o:Ljava/lang/Object;
    :cond_4
    move-object v0, v6

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    move-object v5, v0

    .line 634
    .local v5, msg:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v5}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v12

    int-to-long v12, v12

    invoke-static {p1, v12, v13}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    .line 635
    invoke-virtual {v5, p1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    goto :goto_4

    .line 640
    .end local v5           #msg:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v6           #o:Ljava/lang/Object;
    :pswitch_4
    const/16 v12, 0x1a

    invoke-direct {p0, v8, v4, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 642
    shl-int/lit8 v12, v8, 0x3

    or-int/lit8 v12, v12, 0x4

    int-to-long v12, v12

    invoke-static {p1, v12, v13}, Lcom/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    goto :goto_4

    .line 594
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 650
    .end local v4           #i:I
    .end local v7           #size:I
    .end local v11           #wireType:I
    :cond_6
    return-void

    .line 602
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

.method public parse(Ljava/io/InputStream;I)I
    .locals 24
    .parameter "is"
    .parameter "available"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/io/protocol/ProtoBuf;->clear()V

    .line 367
    :goto_0
    if-lez p2, :cond_0

    .line 368
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v14

    .line 370
    .local v14, tagAndType:J
    const-wide/16 v21, -0x1

    cmp-long v21, v14, v21

    if-nez v21, :cond_1

    .line 453
    .end local v14           #tagAndType:J
    :cond_0
    if-gez p2, :cond_c

    .line 454
    new-instance v21, Ljava/io/IOException;

    invoke-direct/range {v21 .. v21}, Ljava/io/IOException;-><init>()V

    throw v21

    .line 373
    .restart local v14       #tagAndType:J
    :cond_1
    invoke-static {v14, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v21

    sub-int p2, p2, v21

    .line 374
    move-wide v0, v14

    long-to-int v0, v0

    move/from16 v21, v0

    and-int/lit8 v20, v21, 0x7

    .line 375
    .local v20, wireType:I
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 378
    const/16 v21, 0x3

    ushr-long v21, v14, v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move v13, v0

    .line 379
    .local v13, tag:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    move/from16 v0, v21

    move v1, v13

    if-gt v0, v1, :cond_2

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    move-object/from16 v21, v0

    const/16 v22, 0x10

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 382
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->wireTypes:Ljava/lang/StringBuffer;

    move-object/from16 v21, v0

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move v1, v13

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 386
    packed-switch v20, :pswitch_data_0

    .line 448
    :pswitch_0
    new-instance v21, Ljava/lang/RuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unsupp.Type"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 388
    :pswitch_1
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v17

    .line 389
    .local v17, v:J
    invoke-static/range {v17 .. v18}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v21

    sub-int p2, p2, v21

    .line 390
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 391
    invoke-static/range {v17 .. v18}, Lcom/google/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v17

    .line 393
    :cond_3
    const-wide/16 v21, 0x0

    cmp-long v21, v17, v21

    if-ltz v21, :cond_4

    sget-object v21, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v21, v17, v21

    if-gez v21, :cond_4

    sget-object v21, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v19, v21

    .line 450
    .end local v17           #v:J
    :goto_2
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v21

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v21

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 393
    .restart local v17       #v:J
    :cond_4
    new-instance v21, Ljava/lang/Long;

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v19, v21

    goto :goto_2

    .line 400
    .end local v17           #v:J
    :pswitch_2
    const-wide/16 v17, 0x0

    .line 401
    .restart local v17       #v:J
    const/4 v12, 0x0

    .line 402
    .local v12, shift:I
    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v21, 0x4

    move/from16 v4, v21

    .line 403
    .local v4, count:I
    :goto_3
    sub-int p2, p2, v4

    move v5, v4

    .line 405
    .end local v4           #count:I
    .local v5, count:I
    :goto_4
    add-int/lit8 v4, v5, -0x1

    .end local v5           #count:I
    .restart local v4       #count:I
    if-lez v5, :cond_6

    .line 406
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide v8, v0

    .line 407
    .local v8, l:J
    shl-long v21, v8, v12

    or-long v17, v17, v21

    .line 408
    add-int/lit8 v12, v12, 0x8

    move v5, v4

    .line 409
    .end local v4           #count:I
    .restart local v5       #count:I
    goto :goto_4

    .line 402
    .end local v5           #count:I
    .end local v8           #l:J
    :cond_5
    const/16 v21, 0x8

    move/from16 v4, v21

    goto :goto_3

    .line 411
    .restart local v4       #count:I
    :cond_6
    const-wide/16 v21, 0x0

    cmp-long v21, v17, v21

    if-ltz v21, :cond_7

    sget-object v21, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v21, v17, v21

    if-gez v21, :cond_7

    sget-object v21, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v19, v21

    .line 414
    .local v19, value:Ljava/lang/Long;
    :goto_5
    goto :goto_2

    .line 411
    .end local v19           #value:Ljava/lang/Long;
    :cond_7
    new-instance v21, Ljava/lang/Long;

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v19, v21

    goto :goto_5

    .line 417
    .end local v4           #count:I
    .end local v12           #shift:I
    .end local v17           #v:J
    :pswitch_3
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v16, v0

    .line 418
    .local v16, total:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Lcom/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v21

    sub-int p2, p2, v21

    .line 419
    sub-int p2, p2, v16

    .line 421
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v21

    const/16 v22, 0x1b

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 422
    new-instance v10, Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v10, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 423
    .local v10, msg:Lcom/google/common/io/protocol/ProtoBuf;
    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 424
    move-object/from16 v19, v10

    .line 425
    .local v19, value:Lcom/google/common/io/protocol/ProtoBuf;
    goto/16 :goto_2

    .line 426
    .end local v10           #msg:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v19           #value:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_8
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v6, v0

    .line 427
    .local v6, data:[B
    const/4 v11, 0x0

    .line 428
    .local v11, pos:I
    :goto_6
    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 429
    sub-int v21, v16, v11

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v11

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 430
    .restart local v4       #count:I
    if-gtz v4, :cond_9

    .line 431
    new-instance v21, Ljava/io/IOException;

    const-string v22, "Unexp.EOF"

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 433
    :cond_9
    add-int/2addr v11, v4

    goto :goto_6

    .line 435
    .end local v4           #count:I
    :cond_a
    move-object/from16 v19, v6

    .line 437
    .local v19, value:[B
    goto/16 :goto_2

    .line 440
    .end local v6           #data:[B
    .end local v11           #pos:I
    .end local v16           #total:I
    .end local v19           #value:[B
    :pswitch_4
    new-instance v7, Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    const/16 v21, 0x0

    :goto_7
    move-object v0, v7

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 443
    .local v7, group:Lcom/google/common/io/protocol/ProtoBuf;
    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    move-result p2

    .line 444
    move-object/from16 v19, v7

    .line 445
    .local v19, value:Lcom/google/common/io/protocol/ProtoBuf;
    goto/16 :goto_2

    .line 440
    .end local v7           #group:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v19           #value:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/io/protocol/ProtoBuf;->msgType:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v21, v4

    goto :goto_7

    .line 457
    .end local v13           #tag:I
    .end local v14           #tagAndType:J
    .end local v20           #wireType:I
    :cond_c
    return p2

    .line 386
    nop

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

.method public parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 350
    return-object p0
.end method

.method public parse([B)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 335
    return-object p0
.end method

.method public remove(II)V
    .locals 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 465
    .local v0, count:I
    if-lt p2, v0, :cond_0

    .line 466
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 468
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 469
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v2, p0, Lcom/google/common/io/protocol/ProtoBuf;->values:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 472
    .local v1, v:Ljava/util/Vector;
    invoke-virtual {v1, p2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method public setBool(IZ)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 708
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 709
    return-void

    .line 708
    :cond_0
    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setFloat(IF)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 744
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 745
    return-void
.end method

.method public setInt(II)V
    .locals 2
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 722
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 723
    return-void
.end method

.method public setLong(IJ)V
    .locals 2
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 729
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    sget-object v0, Lcom/google/common/io/protocol/ProtoBuf;->SMALL_NUMBERS:[Ljava/lang/Long;

    long-to-int v1, p2

    aget-object v0, v0, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 731
    return-void

    .line 729
    :cond_0
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0
.end method

.method public setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V
    .locals 0
    .parameter "tag"
    .parameter "pb"

    .prologue
    .line 751
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 752
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 770
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 771
    return-void
.end method
