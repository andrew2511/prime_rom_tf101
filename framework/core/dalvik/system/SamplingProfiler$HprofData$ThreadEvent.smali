.class public final Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler$HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadEvent"
.end annotation


# instance fields
.field public final groupName:Ljava/lang/String;

.field public final objectId:I

.field public final parentGroupName:Ljava/lang/String;

.field public final threadId:I

.field public final threadName:Ljava/lang/String;

.field public final type:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;


# direct methods
.method private constructor <init>(Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;I)V
    .registers 5
    .parameter "type"
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->END:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->type:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->objectId:I

    .line 136
    iput p2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadId:I

    .line 137
    iput-object v1, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method private constructor <init>(Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "type"
    .parameter "objectId"
    .parameter "threadId"
    .parameter "threadName"
    .parameter "groupName"
    .parameter "parentGroupName"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    if-nez p4, :cond_d

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_d
    sget-object v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->START:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->type:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    .line 126
    iput p2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->objectId:I

    .line 127
    iput p3, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadId:I

    .line 128
    iput-object p4, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    .line 129
    iput-object p5, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    .line 130
    iput-object p6, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public static end(I)Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    .registers 3
    .parameter "threadId"

    .prologue
    .line 117
    new-instance v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;

    sget-object v1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->END:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    invoke-direct {v0, v1, p0}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;-><init>(Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;I)V

    return-object v0
.end method

.method public static start(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    .registers 12
    .parameter "objectId"
    .parameter "threadId"
    .parameter "threadName"
    .parameter "groupName"
    .parameter "parentGroupName"

    .prologue
    .line 112
    new-instance v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;

    sget-object v1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->START:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;-><init>(Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 153
    instance-of v2, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;

    if-nez v2, :cond_7

    move v2, v4

    .line 157
    :goto_6
    return v2

    .line 156
    :cond_7
    move-object v0, p1

    check-cast v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;

    move-object v1, v0

    .line 157
    .local v1, event:Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->type:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    iget-object v3, v1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->type:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    if-ne v2, v3, :cond_3d

    iget v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->objectId:I

    iget v3, v1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->objectId:I

    if-ne v2, v3, :cond_3d

    iget v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadId:I

    iget v3, v1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadId:I

    if-ne v2, v3, :cond_3d

    iget-object v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    iget-object v3, v1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    iget-object v3, v1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    iget-object v3, v1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    goto :goto_6

    :cond_3d
    move v2, v4

    goto :goto_6
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 143
    const/16 v0, 0x11

    .line 144
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v1, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->objectId:I

    add-int/lit16 v0, v1, 0x20f

    .line 145
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadId:I

    add-int v0, v1, v2

    .line 146
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    invoke-static {v2}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 147
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    invoke-static {v2}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 148
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    invoke-static {v2}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 149
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$HprofData$ThreadEventType:[I

    iget-object v1, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->type:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->type:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :pswitch_1b
    const-string v0, "THREAD START (obj=%d, id = %d, name=\"%s\", group=\"%s\")"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->objectId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_3e
    return-object v0

    :pswitch_3f
    const-string v0, "THREAD END (id = %d)"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 166
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_3f
    .end packed-switch
.end method
