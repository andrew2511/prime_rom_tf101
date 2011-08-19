.class public final Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;
.super Ljava/lang/Object;
.source "ProtoBufUtil.java"


# static fields
.field public static isGzipResponseSeen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->isGzipResponseSeen:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;
    .registers 4
    .parameter "dataInput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 199
    .local v1, size:I
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;

    check-cast p0, Ljava/io/InputStream;

    .end local p0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v0, p0, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 202
    .local v0, is:Ljava/io/InputStream;
    if-gez v1, :cond_18

    .line 203
    const/4 v2, 0x1

    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->isGzipResponseSeen:Z

    .line 204
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 206
    :cond_18
    return-object v0
.end method

.method public static getProtoLongValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J
    .registers 6
    .parameter "proto"
    .parameter "tag"

    .prologue
    const-wide/16 v2, 0x0

    .line 138
    if-eqz p0, :cond_f

    :try_start_4
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_d} :catch_15

    move-result-wide v1

    .line 142
    :goto_e
    return-wide v1

    :cond_f
    move-wide v1, v2

    .line 138
    goto :goto_e

    .line 139
    :catch_11
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-wide v1, v2

    .line 140
    goto :goto_e

    .line 141
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_15
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move-wide v1, v2

    .line 142
    goto :goto_e
.end method

.method public static getProtoValueOrDefault(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)I
    .registers 5
    .parameter "proto"
    .parameter "tag"
    .parameter "defaultValue"

    .prologue
    .line 85
    if-eqz p0, :cond_d

    :try_start_2
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_b} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_13

    move-result v1

    .line 90
    :goto_c
    return v1

    :cond_d
    move v1, p2

    .line 85
    goto :goto_c

    .line 87
    :catch_f
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v1, p2

    .line 88
    goto :goto_c

    .line 89
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_13
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move v1, p2

    .line 90
    goto :goto_c
.end method

.method public static getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    .registers 4
    .parameter "proto"
    .parameter "tag"

    .prologue
    .line 32
    if-eqz p0, :cond_d

    :try_start_2
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    :goto_c
    return-object v1

    .line 32
    :cond_d
    const-string v1, ""
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_c

    .line 33
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 34
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v1, ""

    goto :goto_c
.end method

.method public static getProtoValueOrFalse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Z
    .registers 5
    .parameter "proto"
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 176
    if-eqz p0, :cond_e

    :try_start_3
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getBool(I)Z
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_c} :catch_10
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_c} :catch_14

    move-result v1

    .line 180
    :goto_d
    return v1

    :cond_e
    move v1, v2

    .line 176
    goto :goto_d

    .line 177
    :catch_10
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v1, v2

    .line 178
    goto :goto_d

    .line 179
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move v1, v2

    .line 180
    goto :goto_d
.end method

.method public static getProtoValueOrNegativeOne(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J
    .registers 6
    .parameter "proto"
    .parameter "tag"

    .prologue
    const-wide/16 v2, -0x1

    .line 157
    if-eqz p0, :cond_f

    :try_start_4
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_d} :catch_15

    move-result-wide v1

    .line 161
    :goto_e
    return-wide v1

    :cond_f
    move-wide v1, v2

    .line 157
    goto :goto_e

    .line 158
    :catch_11
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-wide v1, v2

    .line 159
    goto :goto_e

    .line 160
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_15
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move-wide v1, v2

    .line 161
    goto :goto_e
.end method

.method public static getProtoValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)I
    .registers 3
    .parameter "proto"
    .parameter "tag"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)I

    move-result v0

    return v0
.end method

.method public static getSubProtoOrNull(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "proto"
    .parameter "sub"

    .prologue
    .line 69
    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static getSubProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)Ljava/lang/String;
    .registers 5
    .parameter "proto"
    .parameter "sub"
    .parameter "tag"

    .prologue
    .line 61
    :try_start_0
    invoke-static {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 63
    :goto_8
    return-object v1

    .line 62
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 63
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v1, ""

    goto :goto_8
.end method

.method public static readProtoBufResponse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .registers 6
    .parameter "protoBufType"
    .parameter "dataInput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-direct {v1, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    .line 256
    .local v1, response:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v0

    .line 257
    .local v0, is:Ljava/io/InputStream;
    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    .line 258
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 259
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 261
    :cond_19
    return-object v1
.end method

.method public static writeProtoBufToOutput(Ljava/io/DataOutput;Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter "output"
    .parameter "protoBuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 350
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 351
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 352
    .local v1, bytes:[B
    array-length v2, v1

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 353
    invoke-interface {p0, v1}, Ljava/io/DataOutput;->write([B)V

    .line 354
    return-void
.end method
