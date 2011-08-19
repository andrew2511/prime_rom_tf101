.class public final Ldalvik/system/SamplingProfiler$BinaryHprofReader;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BinaryHprofReader"
.end annotation


# static fields
.field private static final TRACE:Z


# instance fields
.field private final hprofData:Ldalvik/system/SamplingProfiler$HprofData;

.field private final idToClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final idToStackFrame:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final idToStackTrace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ldalvik/system/SamplingProfiler$HprofData$StackTrace;",
            ">;"
        }
    .end annotation
.end field

.field private final idToString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/DataInputStream;

.field private final stackTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ldalvik/system/SamplingProfiler$HprofData$StackTrace;",
            "[I>;"
        }
    .end annotation
.end field

.field private strict:Z

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->strict:Z

    .line 852
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->stackTraces:Ljava/util/Map;

    .line 855
    new-instance v0, Ldalvik/system/SamplingProfiler$HprofData;

    iget-object v1, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->stackTraces:Ljava/util/Map;

    invoke-direct {v0, v1}, Ldalvik/system/SamplingProfiler$HprofData;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    .line 857
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->idToString:Ljava/util/Map;

    .line 858
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->idToClassName:Ljava/util/Map;

    .line 859
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->idToStackFrame:Ljava/util/Map;

    .line 861
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->idToStackTrace:Ljava/util/Map;

    .line 869
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    .line 870
    return-void
.end method

.method private checkRead()V
    .registers 3

    .prologue
    .line 887
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->version:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 888
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data access before read()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_c
    return-void
.end method

.method private parseControlSettings()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1041
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1042
    .local v1, flags:I
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 1047
    .local v0, depth:S
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    invoke-virtual {v2, v1}, Ldalvik/system/SamplingProfiler$HprofData;->setFlags(I)V

    .line 1048
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    invoke-virtual {v2, v0}, Ldalvik/system/SamplingProfiler$HprofData;->setDepth(I)V

    .line 1049
    return-void
.end method

.method private parseCpuSamples(I)V
    .registers 16
    .parameter "recordLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1220
    iget-object v9, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 1221
    .local v8, totalSamples:I
    iget-object v9, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 1226
    .local v4, samplesCount:I
    mul-int/lit8 v9, v4, 0x8

    add-int/lit8 v2, v9, 0x8

    .line 1227
    .local v2, expectedLength:I
    if-eq p1, v2, :cond_3d

    .line 1228
    new-instance v9, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected CPU samples record of size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " based on number of samples but header "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "specified a length of  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v9

    .line 1233
    :cond_3d
    const/4 v7, 0x0

    .line 1234
    .local v7, total:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3f
    if-ge v3, v4, :cond_d8

    .line 1235
    iget-object v9, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1236
    .local v0, count:I
    iget-object v9, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 1241
    .local v6, stackTraceId:I
    iget-object v9, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->idToStackTrace:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    .line 1242
    .local v5, stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    if-nez v5, :cond_74

    .line 1243
    new-instance v9, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown stack trace id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v9

    .line 1245
    :cond_74
    if-nez v0, :cond_8f

    .line 1246
    new-instance v9, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Zero sample count for stack trace "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v9

    .line 1249
    :cond_8f
    iget-object v9, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->stackTraces:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1250
    .local v1, countCell:[I
    iget-boolean v9, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->strict:Z

    if-eqz v9, :cond_ce

    .line 1251
    aget v9, v1, v13

    if-eqz v9, :cond_d1

    .line 1252
    new-instance v9, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting sample count of stack trace "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " found it was already initialized to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v1, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v9

    .line 1260
    :cond_ce
    aget v9, v1, v13

    add-int/2addr v0, v9

    .line 1262
    :cond_d1
    aput v0, v1, v13

    .line 1263
    add-int/2addr v7, v0

    .line 1234
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3f

    .line 1265
    .end local v0           #count:I
    .end local v1           #countCell:[I
    .end local v5           #stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    .end local v6           #stackTraceId:I
    :cond_d8
    iget-boolean v9, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->strict:Z

    if-eqz v9, :cond_101

    if-eq v8, v7, :cond_101

    .line 1266
    new-instance v9, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected a total of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " samples but saw "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v9

    .line 1269
    :cond_101
    return-void
.end method

.method private parseEndThread()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1138
    .local v1, threadId:I
    invoke-static {v1}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->end(I)Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;

    move-result-object v0

    .line 1139
    .local v0, event:Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    invoke-virtual {v2, v0}, Ldalvik/system/SamplingProfiler$HprofData;->addThreadEvent(Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;)V

    .line 1140
    return-void
.end method

.method private parseHeader()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 914
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseVersion()V

    .line 915
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseIdSize()V

    .line 916
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseTime()V

    .line 917
    return-void
.end method

.method private parseIdSize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 940
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 944
    .local v0, idSize:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_23

    .line 945
    new-instance v1, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported identifier size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v1

    .line 947
    :cond_23
    return-void
.end method

.method private parseLoadClass()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1066
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1067
    .local v0, classId:I
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readId()I

    move-result v2

    .line 1070
    .local v2, classObjectId:I
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 1071
    .local v4, stackTraceSerialNumber:I
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1078
    .local v1, className:Ljava/lang/String;
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->idToClassName:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1079
    .local v3, old:Ljava/lang/String;
    if-eqz v3, :cond_3c

    .line 1080
    new-instance v5, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate class id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v5

    .line 1082
    :cond_3c
    return-void
.end method

.method private parseRecord()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 968
    iget-object v6, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 969
    .local v4, tagOrEOF:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_c

    .line 970
    const/4 v6, 0x0

    .line 1025
    :goto_b
    return v6

    .line 972
    :cond_c
    int-to-byte v3, v4

    .line 973
    .local v3, tag:B
    iget-object v6, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 974
    .local v5, timeDeltaInMicroseconds:I
    iget-object v6, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 975
    .local v2, recordLength:I
    invoke-static {v3}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->get(B)Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    move-result-object v1

    .line 979
    .local v1, hprofTag:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;
    if-nez v1, :cond_25

    .line 980
    int-to-long v6, v2

    invoke-direct {p0, v1, v6, v7}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->skipRecord(Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;J)V

    move v6, v8

    .line 981
    goto :goto_b

    .line 983
    :cond_25
    invoke-virtual {v1, v2}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->checkSize(I)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 985
    new-instance v6, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v6

    .line 987
    :cond_32
    sget-object v6, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_6c

    .line 1024
    int-to-long v6, v2

    invoke-direct {p0, v1, v6, v7}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->skipRecord(Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;J)V

    move v6, v8

    .line 1025
    goto :goto_b

    .line 989
    :pswitch_43
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseControlSettings()V

    move v6, v8

    .line 990
    goto :goto_b

    .line 993
    :pswitch_48
    invoke-direct {p0, v2}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseStringInUtf8(I)V

    move v6, v8

    .line 994
    goto :goto_b

    .line 997
    :pswitch_4d
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseStartThread()V

    move v6, v8

    .line 998
    goto :goto_b

    .line 1000
    :pswitch_52
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseEndThread()V

    move v6, v8

    .line 1001
    goto :goto_b

    .line 1004
    :pswitch_57
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseLoadClass()V

    move v6, v8

    .line 1005
    goto :goto_b

    .line 1007
    :pswitch_5c
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseStackFrame()V

    move v6, v8

    .line 1008
    goto :goto_b

    .line 1010
    :pswitch_61
    invoke-direct {p0, v2}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseStackTrace(I)V

    move v6, v8

    .line 1011
    goto :goto_b

    .line 1014
    :pswitch_66
    invoke-direct {p0, v2}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseCpuSamples(I)V

    move v6, v8

    .line 1015
    goto :goto_b

    .line 987
    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_43
        :pswitch_48
        :pswitch_4d
        :pswitch_52
        :pswitch_57
        :pswitch_5c
        :pswitch_61
        :pswitch_66
    .end packed-switch
.end method

.method private parseRecords()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    :cond_0
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    return-void
.end method

.method private parseStackFrame()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1143
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readId()I

    move-result v7

    .line 1144
    .local v7, stackFrameId:I
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1145
    .local v3, methodName:Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1146
    .local v4, methodSignature:Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1147
    .local v1, file:Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readClass()Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, className:Ljava/lang/String;
    iget-object v8, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1157
    .local v2, line:I
    new-instance v6, Ljava/lang/StackTraceElement;

    invoke-direct {v6, v0, v3, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1158
    .local v6, stackFrame:Ljava/lang/StackTraceElement;
    iget-object v8, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->idToStackFrame:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    .line 1159
    .local v5, old:Ljava/lang/StackTraceElement;
    if-eqz v5, :cond_47

    .line 1160
    new-instance v8, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate stack frame id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v8

    .line 1162
    :cond_47
    return-void
.end method

.method private parseStackTrace(I)V
    .registers 16
    .parameter "recordLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    iget-object v11, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 1166
    .local v9, stackTraceId:I
    iget-object v11, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 1167
    .local v10, threadId:I
    iget-object v11, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1173
    .local v2, frames:I
    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v1, v11, 0xc

    .line 1174
    .local v1, expectedLength:I
    if-eq p1, v1, :cond_42

    .line 1175
    new-instance v11, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected stack trace record of size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " based on number of frames but header "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "specified a length of  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v11

    .line 1180
    :cond_42
    new-array v7, v2, [Ljava/lang/StackTraceElement;

    .line 1181
    .local v7, stackFrames:[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_45
    if-ge v3, v2, :cond_78

    .line 1182
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readId()I

    move-result v6

    .line 1183
    .local v6, stackFrameId:I
    iget-object v11, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->idToStackFrame:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    .line 1188
    .local v5, stackFrame:Ljava/lang/StackTraceElement;
    if-nez v5, :cond_73

    .line 1189
    new-instance v11, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown stack frame id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v11

    .line 1191
    :cond_73
    aput-object v5, v7, v3

    .line 1181
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 1194
    .end local v5           #stackFrame:Ljava/lang/StackTraceElement;
    .end local v6           #stackFrameId:I
    :cond_78
    new-instance v8, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    invoke-direct {v8, v9, v10, v7}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;-><init>(II[Ljava/lang/StackTraceElement;)V

    .line 1196
    .local v8, stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    iget-boolean v11, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->strict:Z

    if-eqz v11, :cond_b1

    .line 1197
    iget-object v11, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    const/4 v12, 0x1

    new-array v12, v12, [I

    invoke-virtual {v11, v8, v12}, Ldalvik/system/SamplingProfiler$HprofData;->addStackTrace(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;[I)V

    .line 1212
    :cond_89
    :goto_89
    iget-object v11, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->idToStackTrace:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    .line 1213
    .local v4, old:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    if-eqz v4, :cond_c4

    .line 1214
    new-instance v11, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Duplicate stack trace id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v11

    .line 1206
    .end local v4           #old:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    :cond_b1
    iget-object v11, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->stackTraces:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1207
    .local v0, countCell:[I
    if-nez v0, :cond_89

    .line 1208
    iget-object v11, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    const/4 v12, 0x1

    new-array v12, v12, [I

    invoke-virtual {v11, v8, v12}, Ldalvik/system/SamplingProfiler$HprofData;->addStackTrace(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;[I)V

    goto :goto_89

    .line 1217
    .end local v0           #countCell:[I
    .restart local v4       #old:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;
    :cond_c4
    return-void
.end method

.method private parseStartThread()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1110
    iget-object v7, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 1111
    .local v5, threadId:I
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readId()I

    move-result v2

    .line 1115
    .local v2, objectId:I
    iget-object v7, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 1116
    .local v4, stackTraceSerialNumber:I
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1117
    .local v6, threadName:Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, groupName:Ljava/lang/String;
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1127
    .local v3, parentGroupName:Ljava/lang/String;
    invoke-static {v2, v5, v6, v1, v3}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->start(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;

    move-result-object v0

    .line 1130
    .local v0, event:Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    iget-object v7, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    invoke-virtual {v7, v0}, Ldalvik/system/SamplingProfiler$HprofData;->addThreadEvent(Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;)V

    .line 1131
    return-void
.end method

.method private parseStringInUtf8(I)V
    .registers 9
    .parameter "recordLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1052
    iget-object v4, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 1053
    .local v3, stringId:I
    const/4 v4, 0x4

    sub-int v4, p1, v4

    new-array v0, v4, [B

    .line 1054
    .local v0, bytes:[B
    iget-object v4, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 1055
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1059
    .local v2, string:Ljava/lang/String;
    iget-object v4, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->idToString:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1060
    .local v1, old:Ljava/lang/String;
    if-eqz v1, :cond_3f

    .line 1061
    new-instance v4, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate string id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v4

    .line 1063
    :cond_3f
    return-void
.end method

.method private parseTime()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 950
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 954
    .local v0, time:J
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    invoke-virtual {v2, v0, v1}, Ldalvik/system/SamplingProfiler$HprofData;->setStartMillis(J)V

    .line 955
    return-void
.end method

.method private parseVersion()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 920
    const/16 v4, 0x200

    new-array v1, v4, [B

    .line 921
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    array-length v4, v1

    if-ge v2, v4, :cond_42

    .line 922
    iget-object v4, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 923
    .local v0, b:B
    if-nez v0, :cond_3d

    .line 924
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    invoke-direct {v3, v1, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 928
    .local v3, version:Ljava/lang/String;
    const-string v4, "JAVA PROFILE "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 929
    new-instance v4, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v4

    .line 931
    :cond_3a
    iput-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->version:Ljava/lang/String;

    .line 932
    return-void

    .line 934
    .end local v3           #version:Ljava/lang/String;
    :cond_3d
    aput-byte v0, v1, v2

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 936
    .end local v0           #b:B
    :cond_42
    new-instance v4, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    const-string v5, "Could not find HPROF version"

    invoke-direct {v4, v5, v7}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v4
.end method

.method private readClass()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1101
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readId()I

    move-result v0

    .line 1102
    .local v0, id:I
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->idToClassName:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1103
    .local v1, string:Ljava/lang/String;
    if-nez v1, :cond_2c

    .line 1104
    new-instance v2, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown class id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v2

    .line 1106
    :cond_2c
    return-object v1
.end method

.method private readId()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1085
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private readString()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1089
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->readId()I

    move-result v0

    .line 1090
    .local v0, id:I
    if-nez v0, :cond_9

    move-object v2, v5

    .line 1097
    :goto_8
    return-object v2

    .line 1093
    :cond_9
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->idToString:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1094
    .local v1, string:Ljava/lang/String;
    if-nez v1, :cond_30

    .line 1095
    new-instance v2, Ldalvik/system/SamplingProfiler$MalformedHprofException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown string id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Ldalvik/system/SamplingProfiler$MalformedHprofException;-><init>(Ljava/lang/String;Ldalvik/system/SamplingProfiler$1;)V

    throw v2

    :cond_30
    move-object v2, v1

    .line 1097
    goto :goto_8
.end method

.method private skipRecord(Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;J)V
    .registers 9
    .parameter "hprofTag"
    .parameter "recordLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1033
    iget-object v2, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2, p2, p3}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v0

    .line 1034
    .local v0, skipped:J
    cmp-long v2, v0, p2

    if-eqz v2, :cond_33

    .line 1035
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected to skip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes but only skipped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1038
    :cond_33
    return-void
.end method


# virtual methods
.method public getHprofData()Ldalvik/system/SamplingProfiler$HprofData;
    .registers 2

    .prologue
    .line 898
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->checkRead()V

    .line 899
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->hprofData:Ldalvik/system/SamplingProfiler$HprofData;

    return-object v0
.end method

.method public getStrict()Z
    .registers 2

    .prologue
    .line 873
    iget-boolean v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->strict:Z

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 893
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->checkRead()V

    .line 894
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->version:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseHeader()V

    .line 907
    invoke-direct {p0}, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->parseRecords()V

    .line 908
    return-void
.end method

.method public setStrict(Z)V
    .registers 4
    .parameter "strict"

    .prologue
    .line 877
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->version:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 878
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot set strict after read()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_c
    iput-boolean p1, p0, Ldalvik/system/SamplingProfiler$BinaryHprofReader;->strict:Z

    .line 881
    return-void
.end method
