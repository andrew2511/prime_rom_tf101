.class public final Ldalvik/system/SamplingProfiler$BinaryHprofWriter;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"

# interfaces
.implements Ldalvik/system/SamplingProfiler$HprofWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BinaryHprofWriter"
.end annotation


# instance fields
.field private final classNameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Ldalvik/system/SamplingProfiler$HprofData;

.field private nextClassId:I

.field private nextStackFrameId:I

.field private nextStringId:I

.field private final out:Ljava/io/DataOutputStream;

.field private final stackFrameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final stringToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldalvik/system/SamplingProfiler$HprofData;Ljava/io/OutputStream;)V
    .registers 4
    .parameter "data"
    .parameter "outputStream"

    .prologue
    const/4 v0, 0x1

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->nextStringId:I

    .line 604
    iput v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->nextClassId:I

    .line 605
    iput v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->nextStackFrameId:I

    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->stringToId:Ljava/util/Map;

    .line 607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    .line 608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    .line 615
    iput-object p1, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->data:Ldalvik/system/SamplingProfiler$HprofData;

    .line 616
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    .line 617
    return-void
.end method

.method private writeControlSettings(II)V
    .registers 7
    .parameter "flags"
    .parameter "depth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7fff

    .line 650
    if-le p2, v3, :cond_27

    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "depth too large for binary hprof: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_27
    sget-object v0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const/4 v1, 0x0

    sget-object v2, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    iget v2, v2, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v0, v1, v2}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;II)V

    .line 657
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 658
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    int-to-short v1, p2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 659
    return-void
.end method

.method private writeCpuSamples(ILjava/util/Set;)V
    .registers 9
    .parameter "totalSamples"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ldalvik/system/SamplingProfiler$HprofData$Sample;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    .local p2, samples:Ljava/util/Set;,"Ljava/util/Set<Ldalvik/system/SamplingProfiler$HprofData$Sample;>;"
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    .line 743
    .local v2, samplesCount:I
    if-nez v2, :cond_7

    .line 753
    :cond_6
    return-void

    .line 746
    :cond_7
    sget-object v3, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->CPU_SAMPLES:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const/4 v4, 0x0

    mul-int/lit8 v5, v2, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-direct {p0, v3, v4, v5}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;II)V

    .line 747
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 748
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 749
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/SamplingProfiler$HprofData$Sample;

    .line 750
    .local v1, sample:Ldalvik/system/SamplingProfiler$HprofData$Sample;
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v4, v1, Ldalvik/system/SamplingProfiler$HprofData$Sample;->count:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 751
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget-object v4, v1, Ldalvik/system/SamplingProfiler$HprofData$Sample;->stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    iget v4, v4, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1f
.end method

.method private writeHeader(J)V
    .registers 5
    .parameter "dumpTimeInMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    const-string v1, "JAVA PROFILE 1.0.2"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 645
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 646
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 647
    return-void
.end method

.method private writeId(I)V
    .registers 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 709
    return-void
.end method

.method private writeLoadClass(Ljava/lang/String;)I
    .registers 8
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 773
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 774
    .local v2, identifier:Ljava/lang/Integer;
    if-eqz v2, :cond_10

    .line 775
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 789
    :goto_f
    return v3

    .line 777
    :cond_10
    iget v1, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->nextClassId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->nextClassId:I

    .line 778
    .local v1, id:I
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->classNameToId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    invoke-direct {p0, p1}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v0

    .line 781
    .local v0, classNameId:I
    sget-object v3, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    sget-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    iget v4, v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;II)V

    .line 784
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 785
    invoke-direct {p0, v5}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeId(I)V

    .line 786
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 787
    invoke-direct {p0, v0}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeId(I)V

    move v3, v1

    .line 789
    goto :goto_f
.end method

.method private writeRecordHeader(Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;II)V
    .registers 7
    .parameter "hprofTag"
    .parameter "timeDeltaInMicroseconds"
    .parameter "recordLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p1, p3}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->checkSize(I)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 700
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 702
    :cond_c
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget-byte v2, p1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->tag:B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 703
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 704
    iget-object v1, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 705
    return-void
.end method

.method private writeStackFrame(Ljava/lang/StackTraceElement;)I
    .registers 10
    .parameter "stackFrame"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 793
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 794
    .local v2, identifier:Ljava/lang/Integer;
    if-eqz v2, :cond_10

    .line 795
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 814
    :goto_f
    return v5

    .line 798
    :cond_10
    iget v1, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->nextStackFrameId:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->nextStackFrameId:I

    .line 799
    .local v1, id:I
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->stackFrameToId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeLoadClass(Ljava/lang/String;)I

    move-result v0

    .line 802
    .local v0, classId:I
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v3

    .line 803
    .local v3, methodNameId:I
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v4

    .line 804
    .local v4, sourceId:I
    sget-object v5, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    sget-object v6, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    iget v6, v6, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v5, v7, v6}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;II)V

    .line 807
    invoke-direct {p0, v1}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeId(I)V

    .line 808
    invoke-direct {p0, v3}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeId(I)V

    .line 809
    invoke-direct {p0, v7}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeId(I)V

    .line 810
    invoke-direct {p0, v4}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeId(I)V

    .line 811
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 812
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v5, v1

    .line 814
    goto :goto_f
.end method

.method private writeStackTrace(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)V
    .registers 12
    .parameter "stackTrace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 756
    #getter for: Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;
    invoke-static {p1}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->access$200(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)[Ljava/lang/StackTraceElement;

    move-result-object v7

    array-length v1, v7

    .line 757
    .local v1, frames:I
    new-array v6, v1, [I

    .line 758
    .local v6, stackFrameIds:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_19

    .line 759
    #getter for: Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackFrames:[Ljava/lang/StackTraceElement;
    invoke-static {p1}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->access$200(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-direct {p0, v7}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeStackFrame(Ljava/lang/StackTraceElement;)I

    move-result v7

    aput v7, v6, v2

    .line 758
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 761
    :cond_19
    sget-object v7, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STACK_TRACE:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const/4 v8, 0x0

    mul-int/lit8 v9, v1, 0x4

    add-int/lit8 v9, v9, 0xc

    invoke-direct {p0, v7, v8, v9}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;II)V

    .line 764
    iget-object v7, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v8, p1, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->stackTraceId:I

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 765
    iget-object v7, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    #getter for: Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->threadId:I
    invoke-static {p1}, Ldalvik/system/SamplingProfiler$HprofData$StackTrace;->access$100(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 766
    iget-object v7, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 767
    move-object v0, v6

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3b
    if-ge v3, v4, :cond_45

    aget v5, v0, v3

    .line 768
    .local v5, stackFrameId:I
    invoke-direct {p0, v5}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeId(I)V

    .line 767
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 770
    .end local v5           #stackFrameId:I
    :cond_45
    return-void
.end method

.method private writeStartThread(Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;)V
    .registers 8
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 674
    iget-object v3, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadName:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v2

    .line 675
    .local v2, threadNameId:I
    iget-object v3, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->groupName:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v0

    .line 676
    .local v0, groupNameId:I
    iget-object v3, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->parentGroupName:Ljava/lang/String;

    invoke-direct {p0, v3}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeString(Ljava/lang/String;)I

    move-result v1

    .line 677
    .local v1, parentGroupNameId:I
    sget-object v3, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->START_THREAD:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    sget-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->START_THREAD:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    iget v4, v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;II)V

    .line 680
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v4, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 681
    iget v3, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->objectId:I

    invoke-direct {p0, v3}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeId(I)V

    .line 682
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 683
    invoke-direct {p0, v2}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeId(I)V

    .line 684
    invoke-direct {p0, v0}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeId(I)V

    .line 685
    invoke-direct {p0, v1}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeId(I)V

    .line 686
    return-void
.end method

.method private writeStopThread(Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;)V
    .registers 5
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    sget-object v0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->END_THREAD:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const/4 v1, 0x0

    sget-object v2, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->END_THREAD:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    iget v2, v2, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->maximumSize:I

    invoke-direct {p0, v0, v1, v2}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;II)V

    .line 692
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    iget v1, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->threadId:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 693
    return-void
.end method

.method private writeString(Ljava/lang/String;)I
    .registers 8
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 719
    if-nez p1, :cond_5

    move v3, v5

    .line 737
    :goto_4
    return v3

    .line 722
    :cond_5
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->stringToId:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 723
    .local v2, identifier:Ljava/lang/Integer;
    if-eqz v2, :cond_14

    .line 724
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    .line 727
    :cond_14
    iget v1, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->nextStringId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->nextStringId:I

    .line 728
    .local v1, id:I
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->stringToId:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 731
    .local v0, bytes:[B
    sget-object v3, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STRING_IN_UTF8:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    array-length v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v3, v5, v4}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeRecordHeader(Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;II)V

    .line 734
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 735
    iget-object v3, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    array-length v4, v0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/DataOutputStream;->write([BII)V

    move v3, v1

    .line 737
    goto :goto_4
.end method

.method private writeThreadEvent(Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;)V
    .registers 4
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$HprofData$ThreadEventType:[I

    iget-object v1, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->type:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 670
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;->type:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :pswitch_19
    invoke-direct {p0, p1}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeStartThread(Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;)V

    .line 668
    :goto_1c
    return-void

    .line 667
    :pswitch_1d
    invoke-direct {p0, p1}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeStopThread(Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;)V

    goto :goto_1c

    .line 662
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 819
    return-void
.end method

.method public write()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    :try_start_0
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->data:Ldalvik/system/SamplingProfiler$HprofData;

    invoke-virtual {v5}, Ldalvik/system/SamplingProfiler$HprofData;->getStartMillis()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeHeader(J)V

    .line 623
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->data:Ldalvik/system/SamplingProfiler$HprofData;

    invoke-virtual {v5}, Ldalvik/system/SamplingProfiler$HprofData;->getFlags()I

    move-result v5

    iget-object v6, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->data:Ldalvik/system/SamplingProfiler$HprofData;

    invoke-virtual {v6}, Ldalvik/system/SamplingProfiler$HprofData;->getDepth()I

    move-result v6

    invoke-direct {p0, v5, v6}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeControlSettings(II)V

    .line 625
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->data:Ldalvik/system/SamplingProfiler$HprofData;

    invoke-virtual {v5}, Ldalvik/system/SamplingProfiler$HprofData;->getThreadHistory()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;

    .line 626
    .local v0, event:Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    invoke-direct {p0, v0}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeThreadEvent(Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;)V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    goto :goto_22

    .line 638
    .end local v0           #event:Ldalvik/system/SamplingProfiler$HprofData$ThreadEvent;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_32
    move-exception v5

    iget-object v6, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    throw v5

    .line 629
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_39
    :try_start_39
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->data:Ldalvik/system/SamplingProfiler$HprofData;

    invoke-virtual {v5}, Ldalvik/system/SamplingProfiler$HprofData;->getSamples()Ljava/util/Set;

    move-result-object v3

    .line 630
    .local v3, samples:Ljava/util/Set;,"Ljava/util/Set<Ldalvik/system/SamplingProfiler$HprofData$Sample;>;"
    const/4 v4, 0x0

    .line 631
    .local v4, total:I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldalvik/system/SamplingProfiler$HprofData$Sample;

    .line 632
    .local v2, sample:Ldalvik/system/SamplingProfiler$HprofData$Sample;
    iget v5, v2, Ldalvik/system/SamplingProfiler$HprofData$Sample;->count:I

    add-int/2addr v4, v5

    .line 633
    iget-object v5, v2, Ldalvik/system/SamplingProfiler$HprofData$Sample;->stackTrace:Ldalvik/system/SamplingProfiler$HprofData$StackTrace;

    invoke-direct {p0, v5}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeStackTrace(Ldalvik/system/SamplingProfiler$HprofData$StackTrace;)V

    goto :goto_44

    .line 635
    .end local v2           #sample:Ldalvik/system/SamplingProfiler$HprofData$Sample;
    :cond_59
    invoke-direct {p0, v4, v3}, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->writeCpuSamples(ILjava/util/Set;)V
    :try_end_5c
    .catchall {:try_start_39 .. :try_end_5c} :catchall_32

    .line 638
    iget-object v5, p0, Ldalvik/system/SamplingProfiler$BinaryHprofWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 640
    return-void
.end method
