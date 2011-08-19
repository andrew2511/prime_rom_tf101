.class synthetic Ldalvik/system/SamplingProfiler$1;
.super Ljava/lang/Object;
.source "SamplingProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/SamplingProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

.field static final synthetic $SwitchMap$dalvik$system$SamplingProfiler$HprofData$ThreadEventType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 987
    invoke-static {}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->values()[Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    :try_start_9
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->CONTROL_SETTINGS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_ee

    :goto_14
    :try_start_14
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STRING_IN_UTF8:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_eb

    :goto_1f
    :try_start_1f
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->START_THREAD:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_e8

    :goto_2a
    :try_start_2a
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->END_THREAD:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_e5

    :goto_35
    :try_start_35
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->LOAD_CLASS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_e2

    :goto_40
    :try_start_40
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STACK_FRAME:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_df

    :goto_4b
    :try_start_4b
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->STACK_TRACE:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_dc

    :goto_56
    :try_start_56
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->CPU_SAMPLES:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_da

    :goto_62
    :try_start_62
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->UNLOAD_CLASS:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_d8

    :goto_6e
    :try_start_6e
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ALLOC_SITES:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_d6

    :goto_7a
    :try_start_7a
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->HEAP_SUMMARY:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_d4

    :goto_86
    :try_start_86
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->HEAP_DUMP:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_d2

    :goto_92
    :try_start_92
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->HEAP_DUMP_SEGMENT:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_d0

    :goto_9e
    :try_start_9e
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$BinaryHprof$Tag:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->HEAP_DUMP_END:Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$BinaryHprof$Tag;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_ce

    .line 166
    :goto_aa
    invoke-static {}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->values()[Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$HprofData$ThreadEventType:[I

    :try_start_b3
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$HprofData$ThreadEventType:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->START:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_be} :catch_cc

    :goto_be
    :try_start_be
    sget-object v0, Ldalvik/system/SamplingProfiler$1;->$SwitchMap$dalvik$system$SamplingProfiler$HprofData$ThreadEventType:[I

    sget-object v1, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->END:Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;

    invoke-virtual {v1}, Ldalvik/system/SamplingProfiler$HprofData$ThreadEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_c9} :catch_ca

    :goto_c9
    return-void

    :catch_ca
    move-exception v0

    goto :goto_c9

    :catch_cc
    move-exception v0

    goto :goto_be

    .line 987
    :catch_ce
    move-exception v0

    goto :goto_aa

    :catch_d0
    move-exception v0

    goto :goto_9e

    :catch_d2
    move-exception v0

    goto :goto_92

    :catch_d4
    move-exception v0

    goto :goto_86

    :catch_d6
    move-exception v0

    goto :goto_7a

    :catch_d8
    move-exception v0

    goto :goto_6e

    :catch_da
    move-exception v0

    goto :goto_62

    :catch_dc
    move-exception v0

    goto/16 :goto_56

    :catch_df
    move-exception v0

    goto/16 :goto_4b

    :catch_e2
    move-exception v0

    goto/16 :goto_40

    :catch_e5
    move-exception v0

    goto/16 :goto_35

    :catch_e8
    move-exception v0

    goto/16 :goto_2a

    :catch_eb
    move-exception v0

    goto/16 :goto_1f

    :catch_ee
    move-exception v0

    goto/16 :goto_14
.end method
