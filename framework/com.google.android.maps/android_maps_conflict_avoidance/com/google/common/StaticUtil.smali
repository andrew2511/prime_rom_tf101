.class public final Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;
.super Ljava/lang/Object;
.source "StaticUtil.java"


# static fields
.field private static IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

.field private static emergencyMemory:[B

.field private static final outOfMemoryHandlers:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

    .line 62
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->allocateEmergencyMemory()V

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static allocateEmergencyMemory()V
    .registers 1

    .prologue
    .line 79
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->emergencyMemory:[B

    if-eqz v0, :cond_d

    .line 80
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 82
    const/16 v0, 0x1000

    :try_start_9
    new-array v0, v0, [B

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->emergencyMemory:[B
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_d} :catch_e

    .line 86
    :cond_d
    :goto_d
    return-void

    .line 83
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private static getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    .registers 1

    .prologue
    .line 121
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method

.method public static handleOutOfMemory()V
    .registers 1

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory(Z)V

    .line 430
    return-void
.end method

.method private static handleOutOfMemory(Z)V
    .registers 3
    .parameter

    .prologue
    .line 433
    const/4 v0, 0x0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->emergencyMemory:[B

    .line 437
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz p0, :cond_25

    const-string v1, "LowOnMemory"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 439
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;

    .line 441
    invoke-interface {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;->handleOutOfMemory(Z)V

    .line 438
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 437
    :cond_25
    const-string v1, "OutOfMemory"

    goto :goto_9

    .line 452
    :cond_28
    return-void
.end method

.method public static readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    .registers 4
    .parameter "preference"

    .prologue
    .line 271
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    .line 273
    .local v0, data:[B
    if-nez v0, :cond_c

    .line 274
    const/4 v1, 0x0

    .line 277
    :goto_b
    return-object v1

    :cond_c
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_b
.end method

.method private static readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 8
    .parameter "preference"
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 236
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    .line 237
    .local v1, input:Ljava/io/DataInput;
    if-nez v1, :cond_9

    move-object v2, v5

    .line 256
    :goto_8
    return-object v2

    .line 242
    :cond_9
    packed-switch p1, :pswitch_data_56

    .line 252
    :try_start_c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :catch_2f
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/IOException;
    move-object v2, v5

    .line 256
    goto :goto_8

    .line 244
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_33
    new-instance v2, Ljava/lang/Boolean;

    invoke-interface {v1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_8

    .line 246
    :pswitch_3d
    new-instance v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_8

    .line 248
    :pswitch_47
    new-instance v2, Ljava/lang/Long;

    invoke-interface {v1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    goto :goto_8

    .line 250
    :pswitch_51
    invoke-interface {v1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_54} :catch_2f

    move-result-object v2

    goto :goto_8

    .line 242
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_33
        :pswitch_3d
        :pswitch_47
        :pswitch_51
    .end packed-switch
.end method

.method public static readPreferenceAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "preference"

    .prologue
    .line 186
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static registerOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 397
    sget-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

    if-eqz v0, :cond_9

    .line 398
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 400
    :cond_9
    return-void
.end method

.method public static removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 408
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method private static savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .parameter "preference"
    .parameter "object"

    .prologue
    .line 151
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v3

    .line 152
    .local v3, store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    if-nez p1, :cond_f

    .line 153
    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    .line 179
    .end local p1
    :goto_e
    return-void

    .line 157
    .restart local p1
    :cond_f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 162
    .local v1, dataOut:Ljava/io/DataOutput;
    :try_start_19
    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_47

    .line 163
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v1, v4}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 175
    :goto_26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v3, p0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2d} :catch_2e

    goto :goto_e

    .line 176
    :catch_2e
    move-exception v4

    move-object v2, v4

    .line 177
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 164
    .end local v2           #e:Ljava/io/IOException;
    .restart local p1
    :cond_47
    :try_start_47
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_51

    .line 165
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-interface {v1, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_26

    .line 166
    .restart local p1
    :cond_51
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_5f

    .line 167
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_26

    .line 168
    .restart local p1
    :cond_5f
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_6d

    .line 169
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_26

    .line 171
    .restart local p1
    :cond_6d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_94} :catch_2e
.end method

.method public static savePreferenceAsString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 125
    invoke-static {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void
.end method
