.class public Lcom/android/vending/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field protected static final LOGD:Z

.field protected static final LOGV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "vending"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/vending/util/Log;->LOGV:Z

    .line 34
    sget-boolean v0, Lcom/android/vending/util/Log;->LOGV:Z

    if-nez v0, :cond_0

    const-string v0, "vending"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/util/Log;->LOGD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static varargs buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 11
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 168
    if-nez p0, :cond_0

    .line 169
    const-string p0, "null"

    .line 171
    :cond_0
    if-nez p1, :cond_2

    move-object v1, p0

    .line 172
    .local v1, msg:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 173
    .local v3, trace:[Ljava/lang/StackTraceElement;
    aget-object v2, v3, v9

    .line 174
    .local v2, ste:Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, className:Ljava/lang/String;
    const-string v4, "com.android.vending.util.Log"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    aget-object v2, v3, v10

    .line 181
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_1
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    const/16 v4, 0x24

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v4, "[%d] %s.%s(): %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v1, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 171
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #ste:Ljava/lang/StackTraceElement;
    .end local v3           #trace:[Ljava/lang/StackTraceElement;
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/vending/util/Log;->LOGD:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "vending"

    invoke-static {p0, p1}, Lcom/android/vending/util/Log;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 121
    const-string v0, "vending"

    invoke-static {v0, p0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 125
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/vending/util/Log;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public static varargs end(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/vending/util/Log;->LOGV:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "END %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_0
    return-void
.end method

.method public static varargs endBytes(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter "bytes"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/vending/util/Log;->LOGV:Z

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "END bytes %d %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_0
    return-void
.end method

.method public static varargs event(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 162
    sget-boolean v0, Lcom/android/vending/util/Log;->LOGV:Z

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "EVENT %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static getRequestLabel(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .locals 11
    .parameter "proto"

    .prologue
    const/4 v10, 0x2

    .line 201
    invoke-virtual {p0}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v8

    sget-object v9, Lcom/android/vending/model/ApiDefsMessageTypes;->REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    if-eq v8, v9, :cond_0

    .line 202
    const-string v8, "unexpected protobuf type"

    invoke-static {v8}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 204
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v6, packets:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 207
    .local v5, numRequests:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_1e

    .line 208
    invoke-virtual {p0, v10, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 209
    .local v7, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 210
    const-string v4, "J"

    .line 271
    .local v4, label:Ljava/lang/String;
    :goto_1
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 272
    .local v0, count:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 273
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 275
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v0           #count:Ljava/lang/Integer;
    .end local v4           #label:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 212
    const-string v4, "A"

    .restart local v4       #label:Ljava/lang/String;
    goto :goto_1

    .line 213
    .end local v4           #label:Ljava/lang/String;
    :cond_3
    const/16 v8, 0x1a

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 214
    const-string v4, "B"

    .restart local v4       #label:Ljava/lang/String;
    goto :goto_1

    .line 215
    .end local v4           #label:Ljava/lang/String;
    :cond_4
    const/16 v8, 0x21

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 216
    const-string v4, "H"

    .restart local v4       #label:Ljava/lang/String;
    goto :goto_1

    .line 217
    .end local v4           #label:Ljava/lang/String;
    :cond_5
    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 218
    const-string v4, "L"

    .restart local v4       #label:Ljava/lang/String;
    goto :goto_1

    .line 219
    .end local v4           #label:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 220
    const-string v4, "C"

    .restart local v4       #label:Ljava/lang/String;
    goto :goto_1

    .line 221
    .end local v4           #label:Ljava/lang/String;
    :cond_7
    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 222
    const-string v4, "s"

    .restart local v4       #label:Ljava/lang/String;
    goto :goto_1

    .line 223
    .end local v4           #label:Ljava/lang/String;
    :cond_8
    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 224
    const-string v4, "G"

    .restart local v4       #label:Ljava/lang/String;
    goto :goto_1

    .line 225
    .end local v4           #label:Ljava/lang/String;
    :cond_9
    const/16 v8, 0x16

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 226
    const-string v4, "i"

    .restart local v4       #label:Ljava/lang/String;
    goto :goto_1

    .line 227
    .end local v4           #label:Ljava/lang/String;
    :cond_a
    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 228
    const-string v4, "c"

    .restart local v4       #label:Ljava/lang/String;
    goto :goto_1

    .line 229
    .end local v4           #label:Ljava/lang/String;
    :cond_b
    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 230
    const-string v4, "I"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 231
    .end local v4           #label:Ljava/lang/String;
    :cond_c
    const/16 v8, 0x13

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 232
    const-string v4, "M"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 233
    .end local v4           #label:Ljava/lang/String;
    :cond_d
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 234
    const-string v4, "E"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 235
    .end local v4           #label:Ljava/lang/String;
    :cond_e
    const/16 v8, 0x1f

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 236
    const-string v4, "F"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 237
    .end local v4           #label:Ljava/lang/String;
    :cond_f
    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 238
    const-string v4, "m"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 239
    .end local v4           #label:Ljava/lang/String;
    :cond_10
    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 240
    const-string v4, "h"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 241
    .end local v4           #label:Ljava/lang/String;
    :cond_11
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 242
    const-string v4, "O"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 243
    .end local v4           #label:Ljava/lang/String;
    :cond_12
    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 244
    const-string v4, "P"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 245
    .end local v4           #label:Ljava/lang/String;
    :cond_13
    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 246
    const-string v4, "K"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 247
    .end local v4           #label:Ljava/lang/String;
    :cond_14
    const/16 v8, 0x19

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 248
    const-string v4, "Q"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 249
    .end local v4           #label:Ljava/lang/String;
    :cond_15
    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 250
    const-string v4, "r"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 251
    .end local v4           #label:Ljava/lang/String;
    :cond_16
    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 252
    const-string v4, "R"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 253
    .end local v4           #label:Ljava/lang/String;
    :cond_17
    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 254
    const-string v4, "N"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 255
    .end local v4           #label:Ljava/lang/String;
    :cond_18
    const/16 v8, 0x17

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 256
    const-string v4, "e"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 257
    .end local v4           #label:Ljava/lang/String;
    :cond_19
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 258
    const-string v4, "t"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 259
    .end local v4           #label:Ljava/lang/String;
    :cond_1a
    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 260
    const-string v4, "n"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 261
    .end local v4           #label:Ljava/lang/String;
    :cond_1b
    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 262
    const-string v4, "S"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 263
    .end local v4           #label:Ljava/lang/String;
    :cond_1c
    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 264
    const-string v4, "U"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 266
    .end local v4           #label:Ljava/lang/String;
    :cond_1d
    const-string v4, "u"

    .restart local v4       #label:Ljava/lang/String;
    goto/16 :goto_1

    .line 283
    .end local v4           #label:Ljava/lang/String;
    .end local v7           #request:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1e
    const-string v4, ""

    .line 284
    .restart local v4       #label:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    .local v3, i$:Ljava/util/Iterator;
    :cond_1f
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 285
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    .local v0, count:I
    const/4 v8, 0x1

    if-le v0, v8, :cond_1f

    .line 288
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 291
    .end local v0           #count:I
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_20
    return-object v4
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 80
    const-string v0, "vending"

    invoke-static {v0, p0}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/vending/util/Log;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public static logElapsed(JJLjava/lang/String;)V
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "action"

    .prologue
    .line 38
    sub-long v1, p2, p0

    long-to-int v0, v1

    .line 39
    .local v0, elapsed:I
    invoke-static {p4, v0}, Lcom/android/vending/EventLogTags;->writeMarketActionElapsed(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public static logElapsedBytes(JJLjava/lang/String;I)V
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "action"
    .parameter "bytes"

    .prologue
    .line 43
    sub-long v1, p2, p0

    long-to-int v0, v1

    .line 44
    .local v0, elapsed:I
    invoke-static {p4, v0, p5}, Lcom/android/vending/EventLogTags;->writeMarketActionElapsedBytes(Ljava/lang/String;II)V

    .line 45
    return-void
.end method

.method public static varargs start(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter "format"
    .parameter "args"

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/vending/util/Log;->LOGV:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "START %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/vending/util/Log;->LOGV:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "vending"

    invoke-static {p0, p1}, Lcom/android/vending/util/Log;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 92
    const-string v0, "vending"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/android/vending/util/Log;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 100
    const-string v0, "vending"

    invoke-static {v0, p0}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 104
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/vending/util/Log;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 113
    const-string v0, "vending"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/android/vending/util/Log;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    return-void
.end method
