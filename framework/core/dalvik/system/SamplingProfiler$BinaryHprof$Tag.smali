.class public final enum Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;
.super Ljava/lang/Enum;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler$BinaryHprof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum ALLOC_SITES:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field private static final BYTE_TO_TAG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CONTROL_SETTINGS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum CPU_SAMPLES:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum END_THREAD:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum HEAP_DUMP:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum HEAP_DUMP_END:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum HEAP_DUMP_SEGMENT:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum HEAP_SUMMARY:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum LOAD_CLASS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum STACK_FRAME:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum STACK_TRACE:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum START_THREAD:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum STRING_IN_UTF8:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

.field public static final enum UNLOAD_CLASS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;


# instance fields
.field public final maximumSize:I

.field public final minimumSize:I

.field public final tag:B


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x6

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 515
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "STRING_IN_UTF8"

    const/4 v6, -0x4

    invoke-direct {v4, v5, v9, v12, v6}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STRING_IN_UTF8:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 516
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "LOAD_CLASS"

    const/16 v6, 0x10

    invoke-direct {v4, v5, v12, v13, v6}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 517
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "UNLOAD_CLASS"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v13, v6, v10}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->UNLOAD_CLASS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 518
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "STACK_FRAME"

    const/4 v6, 0x3

    const/16 v7, 0x18

    invoke-direct {v4, v5, v6, v10, v7}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 519
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "STACK_TRACE"

    const/4 v6, 0x5

    const/16 v7, -0xc

    invoke-direct {v4, v5, v10, v6, v7}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STACK_TRACE:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 520
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "ALLOC_SITES"

    const/4 v6, 0x5

    const/16 v7, -0x22

    invoke-direct {v4, v5, v6, v11, v7}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ALLOC_SITES:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 521
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "HEAP_SUMMARY"

    const/4 v6, 0x7

    const/16 v7, 0x18

    invoke-direct {v4, v5, v11, v6, v7}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->HEAP_SUMMARY:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 522
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "START_THREAD"

    const/4 v6, 0x7

    const/16 v7, 0xa

    const/16 v8, 0x18

    invoke-direct {v4, v5, v6, v7, v8}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->START_THREAD:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 523
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "END_THREAD"

    const/16 v6, 0x8

    const/16 v7, 0xb

    invoke-direct {v4, v5, v6, v7, v10}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->END_THREAD:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 524
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "HEAP_DUMP"

    const/16 v6, 0x9

    const/16 v7, 0xc

    invoke-direct {v4, v5, v6, v7, v9}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->HEAP_DUMP:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 525
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "HEAP_DUMP_SEGMENT"

    const/16 v6, 0xa

    const/16 v7, 0x1c

    invoke-direct {v4, v5, v6, v7, v9}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->HEAP_DUMP_SEGMENT:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 526
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "HEAP_DUMP_END"

    const/16 v6, 0xb

    const/16 v7, 0x2c

    invoke-direct {v4, v5, v6, v7, v9}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->HEAP_DUMP_END:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 527
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "CPU_SAMPLES"

    const/16 v6, 0xc

    const/16 v7, 0xd

    const/4 v8, -0x8

    invoke-direct {v4, v5, v6, v7, v8}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->CPU_SAMPLES:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 528
    new-instance v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    const-string v5, "CONTROL_SETTINGS"

    const/16 v6, 0xd

    const/16 v7, 0xe

    invoke-direct {v4, v5, v6, v7, v11}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 513
    const/16 v4, 0xe

    new-array v4, v4, [Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    sget-object v5, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STRING_IN_UTF8:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v5, v4, v9

    sget-object v5, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v5, v4, v12

    sget-object v5, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->UNLOAD_CLASS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v5, v4, v13

    const/4 v5, 0x3

    sget-object v6, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v6, v4, v5

    sget-object v5, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STACK_TRACE:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v5, v4, v10

    const/4 v5, 0x5

    sget-object v6, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ALLOC_SITES:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v6, v4, v5

    sget-object v5, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->HEAP_SUMMARY:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v5, v4, v11

    const/4 v5, 0x7

    sget-object v6, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->START_THREAD:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->END_THREAD:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->HEAP_DUMP:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->HEAP_DUMP_SEGMENT:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->HEAP_DUMP_END:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->CPU_SAMPLES:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget-object v6, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    aput-object v6, v4, v5

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->$VALUES:[Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    .line 555
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->BYTE_TO_TAG:Ljava/util/Map;

    .line 559
    invoke-static {}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->values()[Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    move-result-object v0

    .local v0, arr$:[Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_10b
    if-ge v1, v2, :cond_11d

    aget-object v3, v0, v1

    .line 560
    .local v3, v:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;
    sget-object v4, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->BYTE_TO_TAG:Ljava/util/Map;

    iget-byte v5, v3, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->tag:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_10b

    .line 562
    .end local v3           #v:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;
    :cond_11d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .parameter
    .parameter
    .parameter "tag"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 542
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 543
    int-to-byte v0, p3

    iput-byte v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->tag:B

    .line 544
    if-lez p4, :cond_d

    .line 546
    iput p4, p0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->minimumSize:I

    .line 547
    iput p4, p0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->maximumSize:I

    .line 553
    :goto_c
    return-void

    .line 550
    :cond_d
    neg-int v0, p4

    iput v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->minimumSize:I

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->maximumSize:I

    goto :goto_c
.end method

.method public static get(B)Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;
    .registers 3
    .parameter "tag"

    .prologue
    .line 565
    sget-object v0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->BYTE_TO_TAG:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;
    .registers 2
    .parameter "name"

    .prologue
    .line 513
    const-class v0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    return-object p0
.end method

.method public static values()[Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;
    .registers 1

    .prologue
    .line 513
    sget-object v0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->$VALUES:[Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v0}, [Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    return-object v0
.end method


# virtual methods
.method public checkSize(I)Ljava/lang/String;
    .registers 4
    .parameter "actual"

    .prologue
    const/4 v1, 0x0

    .line 573
    iget v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->minimumSize:I

    if-ge p1, v0, :cond_2f

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected a minimial record size of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->minimumSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    :goto_2e
    return-object v0

    .line 577
    :cond_2f
    iget v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->maximumSize:I

    if-nez v0, :cond_35

    move-object v0, v1

    .line 578
    goto :goto_2e

    .line 580
    :cond_35
    iget v0, p0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->maximumSize:I

    if-le p1, v0, :cond_63

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected a maximum record size of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->maximumSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_63
    move-object v0, v1

    .line 584
    goto :goto_2e
.end method
