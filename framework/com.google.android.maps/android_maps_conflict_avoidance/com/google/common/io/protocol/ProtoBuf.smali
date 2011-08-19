.class public Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;,
        Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;
    }
.end annotation


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final FALSE:Ljava/lang/Boolean;

.field private static final NULL_COUNTER:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

.field public static final TRUE:Ljava/lang/Boolean;


# instance fields
.field private cachedSize:I

.field private msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

.field private final values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

.field private wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 52
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    .line 53
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    .line 54
    new-array v0, v2, [B

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    .line 381
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->NULL_COUNTER:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/high16 v0, -0x8000

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->cachedSize:I

    .line 96
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    .line 97
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    .line 98
    return-void
.end method

.method private addObject(ILjava/lang/Object;)V
    .registers 5
    .parameter "tag"
    .parameter "o"

    .prologue
    .line 1249
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

    .line 1250
    return-void
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .registers 3
    .parameter "tag"
    .parameter "object"

    .prologue
    .line 1009
    return-void
.end method

.method private static checkTag(I)V
    .registers 1
    .parameter "tag"

    .prologue
    .line 1101
    return-void
.end method

.method private static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 9
    .parameter "obj"
    .parameter "tagType"

    .prologue
    .line 1257
    packed-switch p1, :pswitch_data_a6

    .line 1318
    :pswitch_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unsupp.Type"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_b
    move-object v4, p0

    .line 1315
    .end local p0
    :goto_c
    return-object v4

    .line 1262
    .restart local p0
    :pswitch_d
    instance-of v4, p0, Ljava/lang/Boolean;

    if-eqz v4, :cond_13

    move-object v4, p0

    .line 1263
    goto :goto_c

    .line 1265
    :cond_13
    check-cast p0, Ljava/lang/Long;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v4, v4

    packed-switch v4, :pswitch_data_d4

    .line 1271
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Type mismatch"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1267
    :pswitch_25
    sget-object v4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    .line 1269
    :pswitch_28
    sget-object v4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    .line 1281
    .restart local p0
    :pswitch_2b
    instance-of v4, p0, Ljava/lang/Boolean;

    if-eqz v4, :cond_41

    .line 1282
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3e

    const-wide/16 v4, 0x1

    :goto_39
    invoke-static {v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_c

    :cond_3e
    const-wide/16 v4, 0x0

    goto :goto_39

    .restart local p0
    :cond_41
    move-object v4, p0

    .line 1284
    goto :goto_c

    .line 1287
    :pswitch_43
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_4e

    .line 1288
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_c

    .line 1289
    .restart local p0
    :cond_4e
    instance-of v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    if-eqz v4, :cond_6d

    .line 1290
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1292
    .local v1, buf:Ljava/io/ByteArrayOutputStream;
    :try_start_57
    check-cast p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    .end local p0
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 1293
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5f} :catch_61

    move-result-object v4

    goto :goto_c

    .line 1294
    :catch_61
    move-exception v4

    move-object v3, v4

    .line 1295
    .local v3, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local p0
    :cond_6d
    move-object v4, p0

    .line 1298
    goto :goto_c

    .line 1301
    :pswitch_6f
    instance-of v4, p0, [B

    if-eqz v4, :cond_81

    .line 1302
    check-cast p0, [B

    .end local p0
    move-object v0, p0

    check-cast v0, [B

    move-object v2, v0

    .line 1303
    .local v2, data:[B
    const/4 v4, 0x0

    array-length v5, v2

    const/4 v6, 0x1

    invoke-static {v2, v4, v5, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .end local v2           #data:[B
    .restart local p0
    :cond_81
    move-object v4, p0

    .line 1305
    goto :goto_c

    .line 1308
    :pswitch_83
    instance-of v4, p0, [B

    if-eqz v4, :cond_a3

    .line 1310
    :try_start_87
    new-instance v4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    invoke-virtual {v4, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse([B)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_94} :catch_97

    move-result-object v4

    goto/16 :goto_c

    .line 1311
    :catch_97
    move-exception v4

    move-object v3, v4

    .line 1312
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v3           #e:Ljava/io/IOException;
    .restart local p0
    :cond_a3
    move-object v4, p0

    .line 1315
    goto/16 :goto_c

    .line 1257
    :pswitch_data_a6
    .packed-switch 0x10
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_2b
        :pswitch_3
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_d
        :pswitch_43
        :pswitch_83
        :pswitch_83
        :pswitch_6f
        :pswitch_3
        :pswitch_3
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_43
        :pswitch_6f
    .end packed-switch

    .line 1265
    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method private static getCount(Ljava/lang/Object;)I
    .registers 2
    .parameter "o"

    .prologue
    .line 533
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .end local p0
    :goto_3
    return v0

    .restart local p0
    :cond_4
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/util/Vector;

    .end local p0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_3

    .restart local p0
    :cond_f
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private getDefault(I)Ljava/lang/Object;
    .registers 3
    .parameter "tag"

    .prologue
    .line 1084
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    .line 1090
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0

    .line 1088
    :sswitch_e
    const/4 v0, 0x0

    goto :goto_d

    .line 1084
    :sswitch_data_10
    .sparse-switch
        0x10 -> :sswitch_e
        0x1a -> :sswitch_e
        0x1b -> :sswitch_e
    .end sparse-switch
.end method

.method private getObject(II)Ljava/lang/Object;
    .registers 6
    .parameter "tag"
    .parameter "desiredType"

    .prologue
    .line 1110
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->checkTag(I)V

    .line 1111
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1112
    .local v1, o:Ljava/lang/Object;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    .line 1114
    .local v0, count:I
    if-nez v0, :cond_14

    .line 1115
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v2

    .line 1121
    :goto_13
    return-object v2

    .line 1118
    :cond_14
    const/4 v2, 0x1

    if-le v0, v2, :cond_1d

    .line 1119
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1121
    :cond_1d
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, p2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_13
.end method

.method private getObject(III)Ljava/lang/Object;
    .registers 7
    .parameter "tag"
    .parameter "index"
    .parameter "desiredType"

    .prologue
    .line 1130
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->checkTag(I)V

    .line 1131
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1132
    .local v1, o:Ljava/lang/Object;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    .line 1134
    .local v0, count:I
    if-lt p2, v0, :cond_15

    .line 1135
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1137
    :cond_15
    invoke-direct {p0, p1, p2, p3, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .parameter "tag"
    .parameter "index"
    .parameter "desiredType"
    .parameter "o"

    .prologue
    .line 1145
    const/4 v2, 0x0

    .line 1146
    .local v2, v:Ljava/util/Vector;
    instance-of v3, p4, Ljava/util/Vector;

    if-eqz v3, :cond_d

    .line 1147
    move-object v0, p4

    check-cast v0, Ljava/util/Vector;

    move-object v2, v0

    .line 1148
    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p4

    .line 1151
    :cond_d
    invoke-static {p4, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 1153
    .local v1, o2:Ljava/lang/Object;
    if-eq v1, p4, :cond_1a

    if-eqz p4, :cond_1a

    .line 1154
    if-nez v2, :cond_1b

    .line 1155
    invoke-direct {p0, p1, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 1160
    :cond_1a
    :goto_1a
    return-object v1

    .line 1157
    :cond_1b
    invoke-virtual {v2, v1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1a
.end method

.method private static getVarIntSize(J)I
    .registers 5
    .parameter "i"

    .prologue
    .line 666
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_9

    .line 667
    const/16 v1, 0xa

    .line 674
    :goto_8
    return v1

    .line 669
    :cond_9
    const/4 v0, 0x1

    .line 670
    .local v0, size:I
    :goto_a
    const-wide/16 v1, 0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_15

    .line 671
    add-int/lit8 v0, v0, 0x1

    .line 672
    const/4 v1, 0x7

    shr-long/2addr p0, v1

    goto :goto_a

    :cond_15
    move v1, v0

    .line 674
    goto :goto_8
.end method

.method private final getWireType(I)I
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x2f

    .line 1170
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 1172
    packed-switch v0, :pswitch_data_3e

    .line 1207
    :pswitch_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

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

    .line 1189
    :pswitch_34
    const/4 v0, 0x0

    .line 1205
    :goto_35
    :pswitch_35
    return v0

    .line 1195
    :pswitch_36
    const/4 v0, 0x2

    goto :goto_35

    .line 1199
    :pswitch_38
    const/4 v0, 0x1

    goto :goto_35

    .line 1203
    :pswitch_3a
    const/4 v0, 0x5

    goto :goto_35

    .line 1205
    :pswitch_3c
    const/4 v0, 0x3

    goto :goto_35

    .line 1172
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_9
        :pswitch_35
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_35
        :pswitch_38
        :pswitch_3a
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_38
        :pswitch_3a
        :pswitch_34
        :pswitch_36
        :pswitch_3c
        :pswitch_36
        :pswitch_36
        :pswitch_34
        :pswitch_34
        :pswitch_3a
        :pswitch_38
        :pswitch_34
        :pswitch_34
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method private insertObject(IILjava/lang/Object;Z)V
    .registers 9
    .parameter "tag"
    .parameter "index"
    .parameter "o"
    .parameter "appendToEnd"

    .prologue
    .line 1225
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->checkTag(I)V

    .line 1226
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v3, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1227
    .local v1, current:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1228
    .local v2, v:Ljava/util/Vector;
    instance-of v3, v1, Ljava/util/Vector;

    if-eqz v3, :cond_12

    .line 1229
    move-object v0, v1

    check-cast v0, Ljava/util/Vector;

    move-object v2, v0

    .line 1231
    :cond_12
    if-eqz v1, :cond_1c

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_20

    .line 1232
    :cond_1c
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 1246
    :goto_1f
    return-void

    .line 1234
    :cond_20
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1235
    if-nez v2, :cond_32

    .line 1236
    new-instance v2, Ljava/util/Vector;

    .end local v2           #v:Ljava/util/Vector;
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1237
    .restart local v2       #v:Ljava/util/Vector;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1238
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v3, p1, v2}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    .line 1240
    :cond_32
    if-eqz p4, :cond_38

    .line 1241
    invoke-virtual {v2, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1f

    .line 1243
    :cond_38
    invoke-virtual {v2, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1f
.end method

.method private isZigZagEncodedType(I)Z
    .registers 4
    .parameter "tag"

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 850
    .local v0, declaredType:I
    const/16 v1, 0x21

    if-eq v0, v1, :cond_c

    const/16 v1, 0x22

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private outputField(ILandroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I
    .registers 24
    .parameter "tag"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v12

    .line 764
    .local v12, size:I
    invoke-direct/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v17

    .line 765
    .local v17, wireType:I
    shl-int/lit8 v19, p1, 0x3

    or-int v18, v19, v17

    .line 768
    .local v18, wireTypeTag:I
    const/4 v14, 0x0

    .line 770
    .local v14, totalSize:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_e
    if-ge v9, v12, :cond_141

    .line 771
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v19

    add-int v14, v14, v19

    .line 772
    const/4 v4, 0x0

    .line 773
    .local v4, added:Z
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v7

    .line 774
    .local v7, contentStart:I
    packed-switch v17, :pswitch_data_142

    .line 827
    :pswitch_27
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 777
    :pswitch_2d
    const/16 v19, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v9

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 779
    .local v15, v:J
    const/16 v19, 0x5

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_66

    const/16 v19, 0x4

    move/from16 v6, v19

    .line 780
    .local v6, cnt:I
    :goto_4c
    const/4 v5, 0x0

    .local v5, b:I
    :goto_4d
    if-ge v5, v6, :cond_8e

    .line 781
    const-wide/16 v19, 0xff

    and-long v19, v19, v15

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->write(I)V

    .line 782
    const/16 v19, 0x8

    shr-long v15, v15, v19

    .line 780
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 779
    .end local v5           #b:I
    .end local v6           #cnt:I
    :cond_66
    const/16 v19, 0x8

    move/from16 v6, v19

    goto :goto_4c

    .line 787
    .end local v15           #v:J
    :pswitch_6b
    const/16 v19, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v9

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 788
    .restart local v15       #v:J
    invoke-direct/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v19

    if-eqz v19, :cond_88

    .line 789
    invoke-static/range {v15 .. v16}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v15

    .line 791
    :cond_88
    move-object/from16 v0, p2

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    .line 829
    .end local v15           #v:J
    :cond_8e
    :goto_8e
    if-nez v4, :cond_98

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v19

    sub-int v19, v19, v7

    add-int v14, v14, v19

    .line 770
    :cond_98
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_e

    .line 795
    :pswitch_9c
    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v19

    const/16 v20, 0x1b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d9

    const/16 v19, 0x10

    :goto_aa
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v9

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v10

    .line 800
    .local v10, o:Ljava/lang/Object;
    move-object v0, v10

    instance-of v0, v0, [B

    move/from16 v19, v0

    if-eqz v19, :cond_dc

    .line 801
    check-cast v10, [B

    .end local v10           #o:Ljava/lang/Object;
    move-object v0, v10

    check-cast v0, [B

    move-object v8, v0

    .line 802
    .local v8, data:[B
    move-object v0, v8

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    .line 803
    move-object/from16 v0, p2

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->write([B)V

    goto :goto_8e

    .line 795
    .end local v8           #data:[B
    :cond_d9
    const/16 v19, 0x19

    goto :goto_aa

    .line 805
    .restart local v10       #o:Ljava/lang/Object;
    :cond_dc
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->addMarker(I)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->numMarkers()I

    move-result v13

    .line 808
    .local v13, tmpPos:I
    const/16 v19, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->addMarker(I)V

    .line 809
    check-cast v10, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    .end local v10           #o:Ljava/lang/Object;
    move-object v0, v10

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    move-result v11

    .line 811
    .local v11, protoSize:I
    move-object/from16 v0, p2

    move v1, v13

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->setMarker(II)V

    .line 813
    move v0, v11

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v19

    add-int v19, v19, v11

    add-int v14, v14, v19

    .line 814
    const/4 v4, 0x1

    .line 816
    goto/16 :goto_8e

    .line 820
    .end local v11           #protoSize:I
    .end local v13           #tmpPos:I
    :pswitch_113
    const/16 v19, 0x1a

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v9

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #added:Z
    check-cast v4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    move-result v19

    add-int v14, v14, v19

    .line 822
    shl-int/lit8 v19, p1, 0x3

    or-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v19

    add-int v14, v14, v19

    .line 823
    const/4 v4, 0x1

    .line 824
    .restart local v4       #added:Z
    goto/16 :goto_8e

    .line 833
    .end local v4           #added:Z
    .end local v7           #contentStart:I
    :cond_141
    return v14

    .line 774
    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_2d
        :pswitch_9c
        :pswitch_113
        :pswitch_27
        :pswitch_2d
    .end packed-switch
.end method

.method private outputTo(Ljava/io/OutputStream;Z)V
    .registers 12
    .parameter "os"
    .parameter "addSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;

    invoke-direct {v3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;-><init>()V

    .line 718
    .local v3, mos:Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;
    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    move-result v6

    .line 720
    .local v6, size:I
    if-eqz p2, :cond_12

    .line 722
    move-object v0, p1

    check-cast v0, Ljava/io/DataOutput;

    move-object v7, v0

    invoke-interface {v7, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 725
    :cond_12
    const/4 v5, 0x0

    .line 726
    .local v5, previous:I
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->numMarkers()I

    move-result v4

    .local v4, n:I
    :goto_18
    if-ge v2, v4, :cond_31

    .line 727
    invoke-virtual {v3, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v1

    .line 728
    .local v1, current:I
    sub-int v7, v1, v5

    invoke-virtual {v3, p1, v5, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    .line 729
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v7

    int-to-long v7, v7

    invoke-static {p1, v7, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    .line 730
    move v5, v1

    .line 726
    add-int/lit8 v2, v2, 0x2

    goto :goto_18

    .line 732
    .end local v1           #current:I
    :cond_31
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v7

    if-ge v5, v7, :cond_3f

    .line 733
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v3, p1, v5, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    .line 735
    :cond_3f
    return-void
.end method

.method private outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I
    .registers 6
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->keys()Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;

    move-result-object v0

    .line 745
    .local v0, itr:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;
    const/4 v2, 0x0

    .line 746
    .local v2, totalSize:I
    :goto_7
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 747
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->next()I

    move-result v1

    .line 748
    .local v1, tag:I
    invoke-direct {p0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputField(ILandroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    move-result v3

    add-int/2addr v2, v3

    .line 749
    goto :goto_7

    .line 750
    .end local v1           #tag:I
    :cond_17
    return v2
.end method

.method private parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    if-eqz p3, :cond_5

    .line 416
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->clear()V

    :cond_5
    move v0, p2

    .line 418
    :goto_6
    if-lez v0, :cond_13

    .line 419
    const/4 v1, 0x1

    invoke-static {p1, v1, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v1

    .line 421
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1b

    .line 509
    :cond_13
    if-gez v0, :cond_10a

    .line 510
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 424
    :cond_1b
    iget v3, p4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v0, v3

    .line 425
    long-to-int v3, v1

    and-int/lit8 v3, v3, 0x7

    .line 426
    const/4 v4, 0x4

    if-eq v3, v4, :cond_13

    .line 429
    const/4 v4, 0x3

    ushr-long/2addr v1, v4

    long-to-int v1, v1

    .line 431
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v2

    .line 432
    const/16 v4, 0x10

    if-ne v2, v4, :cond_44

    .line 433
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    if-nez v2, :cond_3a

    .line 434
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-direct {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>()V

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    .line 436
    :cond_3a
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    move v2, v3

    .line 442
    :cond_44
    packed-switch v3, :pswitch_data_10c

    .line 503
    :pswitch_47
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

    .line 444
    :pswitch_66
    const/4 v2, 0x0

    invoke-static {p1, v2, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v2

    .line 445
    iget v4, p4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v0, v4

    .line 446
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 447
    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v2

    .line 449
    :cond_78
    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 506
    :goto_7f
    invoke-direct {p0, v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    move v0, v2

    .line 507
    goto :goto_6

    .line 455
    :pswitch_84
    const-wide/16 v4, 0x0

    .line 456
    const/4 v2, 0x0

    .line 457
    const/4 v6, 0x5

    if-ne v3, v6, :cond_9f

    const/4 v3, 0x4

    .line 458
    :goto_8b
    sub-int/2addr v0, v3

    move v9, v3

    move v3, v2

    move v2, v9

    .line 460
    :goto_8f
    add-int/lit8 v6, v2, -0x1

    if-lez v2, :cond_a2

    .line 461
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-long v7, v2

    .line 462
    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    .line 463
    add-int/lit8 v2, v3, 0x8

    move v3, v2

    move v2, v6

    .line 464
    goto :goto_8f

    .line 457
    :cond_9f
    const/16 v3, 0x8

    goto :goto_8b

    .line 466
    :cond_a2
    invoke-static {v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 467
    goto :goto_7f

    .line 470
    :pswitch_aa
    const/4 v3, 0x0

    invoke-static {p1, v3, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 471
    iget v4, p4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v0, v4

    .line 472
    sub-int/2addr v0, v3

    .line 474
    const/16 v4, 0x1b

    if-ne v2, v4, :cond_cd

    .line 475
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v4, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    .line 477
    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 479
    goto :goto_7f

    .line 480
    :cond_cd
    if-nez v3, :cond_e4

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    .line 481
    :goto_d1
    const/4 v4, 0x0

    .line 482
    :goto_d2
    if-ge v4, v3, :cond_e9

    .line 483
    sub-int v5, v3, v4

    invoke-virtual {p1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 484
    if-gtz v5, :cond_e7

    .line 485
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_e4
    new-array v2, v3, [B

    goto :goto_d1

    .line 487
    :cond_e7
    add-int/2addr v4, v5

    goto :goto_d2

    :cond_e9
    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 491
    goto :goto_7f

    .line 494
    :pswitch_ed
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    if-nez v3, :cond_100

    const/4 v3, 0x0

    :goto_f4
    invoke-direct {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    .line 498
    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 500
    goto :goto_7f

    .line 494
    :cond_100
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    move-object v3, p2

    goto :goto_f4

    .line 513
    :cond_10a
    return v0

    .line 442
    nop

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_66
        :pswitch_84
        :pswitch_aa
        :pswitch_ed
        :pswitch_47
        :pswitch_84
    .end packed-switch
.end method

.method private static readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1355
    const-wide/16 v0, 0x0

    .line 1358
    iput v2, p2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move v7, v2

    move v8, v2

    move-wide v2, v0

    move v0, v7

    move v1, v8

    .line 1362
    :goto_a
    const/16 v4, 0xa

    if-ge v0, v4, :cond_39

    .line 1363
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1365
    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    .line 1366
    if-nez v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 1367
    const-wide/16 v0, -0x1

    .line 1381
    :goto_1b
    return-wide v0

    .line 1369
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1372
    :cond_24
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long/2addr v2, v5

    .line 1374
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_34

    move-wide v1, v2

    .line 1380
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move-wide v0, v1

    .line 1381
    goto :goto_1b

    .line 1378
    :cond_34
    add-int/lit8 v1, v1, 0x7

    .line 1362
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_39
    move-wide v1, v2

    goto :goto_2e
.end method

.method private setObject(ILjava/lang/Object;)V
    .registers 4
    .parameter "tag"
    .parameter "o"

    .prologue
    .line 1389
    if-gez p1, :cond_8

    .line 1390
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1392
    :cond_8
    if-eqz p2, :cond_d

    .line 1393
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1395
    :cond_d
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    .line 1396
    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)I
    .registers 7
    .parameter "os"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1405
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1f

    .line 1407
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    long-to-int v1, v2

    .line 1409
    .local v1, toWrite:I
    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    .line 1411
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_17

    .line 1412
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1413
    add-int/lit8 v2, v0, 0x1

    .line 1418
    .end local v1           #toWrite:I
    :goto_16
    return v2

    .line 1415
    .restart local v1       #toWrite:I
    :cond_17
    or-int/lit16 v2, v1, 0x80

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #toWrite:I
    :cond_1f
    move v2, v0

    .line 1418
    goto :goto_16
.end method

.method private static zigZagDecode(J)J
    .registers 6
    .parameter "v"

    .prologue
    .line 866
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long p0, v0, v2

    .line 867
    return-wide p0
.end method

.method private static zigZagEncode(J)J
    .registers 6
    .parameter "v"

    .prologue
    .line 858
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long p0, v0, v2

    .line 859
    return-wide p0
.end method


# virtual methods
.method public addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->clear()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    .line 106
    return-void
.end method

.method public getBool(I)Z
    .registers 3
    .parameter "tag"

    .prologue
    .line 177
    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .registers 3
    .parameter "tag"

    .prologue
    .line 193
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getCount(I)I
    .registers 3
    .parameter "tag"

    .prologue
    .line 548
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 4
    .parameter "tag"

    .prologue
    .line 207
    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "tag"

    .prologue
    .line 222
    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "tag"

    .prologue
    .line 272
    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 280
    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "tag"

    .prologue
    .line 288
    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getString(II)Ljava/lang/String;
    .registers 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 296
    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getType(I)I
    .registers 8
    .parameter "tag"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10

    .line 559
    const/16 v1, 0x10

    .line 560
    .local v1, tagType:I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    if-eqz v3, :cond_f

    .line 561
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v1

    .line 564
    :cond_f
    if-ne v1, v4, :cond_24

    .line 565
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v3, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    .line 566
    .local v2, tagTypeObj:Ljava/lang/Integer;
    :goto_1e
    if-eqz v2, :cond_24

    .line 567
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 571
    .end local v2           #tagTypeObj:Ljava/lang/Integer;
    :cond_24
    if-ne v1, v4, :cond_39

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-lez v3, :cond_39

    .line 572
    invoke-direct {p0, p1, v5, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    .line 574
    .local v0, o:Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/Long;

    if-nez v3, :cond_38

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_3d

    :cond_38
    move v1, v5

    .line 578
    .end local v0           #o:Ljava/lang/Object;
    :cond_39
    :goto_39
    return v1

    .line 565
    :cond_3a
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_1e

    .line 574
    .restart local v0       #o:Ljava/lang/Object;
    :cond_3d
    const/4 v3, 0x2

    move v1, v3

    goto :goto_39
.end method

.method public has(I)Z
    .registers 3
    .parameter "tag"

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-gtz v0, :cond_c

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public outputTo(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    .line 697
    return-void
.end method

.method public outputWithSizeTo(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    .line 687
    return-void
.end method

.method public parse(Ljava/io/InputStream;I)I
    .registers 6
    .parameter "is"
    .parameter "available"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x1

    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 367
    return-object p0
.end method

.method public parse([B)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 352
    return-object p0
.end method

.method public setInt(II)V
    .registers 5
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 906
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 907
    return-void
.end method

.method public setLong(IJ)V
    .registers 5
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 913
    invoke-static {p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 914
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 943
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 944
    return-void
.end method
