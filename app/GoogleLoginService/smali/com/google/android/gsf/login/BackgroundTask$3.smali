.class synthetic Lcom/google/android/gsf/login/BackgroundTask$3;
.super Ljava/lang/Object;
.source "BackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BackgroundTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

.field static final synthetic $SwitchMap$com$google$android$gsf$login$BackgroundTask$Action:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 706
    invoke-static {}, Lcom/google/android/gsf/login/BackgroundTask$Action;->values()[Lcom/google/android/gsf/login/BackgroundTask$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackgroundTask$Action:[I

    :try_start_0
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackgroundTask$Action:[I

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->LOGIN:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackgroundTask$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_17

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackgroundTask$Action:[I

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->CREATE_ACCOUNT:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackgroundTask$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_16

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackgroundTask$Action:[I

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->RATE_PASSWORD:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackgroundTask$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_15

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackgroundTask$Action:[I

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->CHECK_AVAIL:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackgroundTask$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_14

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackgroundTask$Action:[I

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->IDLE:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackgroundTask$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_13

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackgroundTask$Action:[I

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->GET_OAUTH_REQUEST_TOKEN:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackgroundTask$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_12

    .line 521
    :goto_5
    invoke-static {}, Lcom/google/android/gsf/login/BackendStub$Status;->values()[Lcom/google/android/gsf/login/BackendStub$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    :try_start_6
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->ACCOUNT_DISABLED:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_11

    :goto_6
    :try_start_7
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->ALREADY_HAS_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_10

    :goto_7
    :try_start_8
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_PASSWORD:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_f

    :goto_8
    :try_start_9
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_USERNAME:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_e

    :goto_9
    :try_start_a
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->LOGIN_FAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_d

    :goto_a
    :try_start_b
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->MISSING_APPS:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_c

    :goto_b
    :try_start_c
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->NO_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_b

    :goto_c
    :try_start_d
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->NOT_LOGGED_IN:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_a

    :goto_d
    :try_start_e
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->USERNAME_UNAVAILABLE:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_9

    :goto_e
    :try_start_f
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->SUCCESS:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_8

    :goto_f
    :try_start_10
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->CAPTCHA:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_7

    :goto_10
    :try_start_11
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->REQUEST_DENIED:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_6

    :goto_11
    :try_start_12
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_REQUEST:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_5

    :goto_12
    :try_start_13
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->SERVER_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_4

    :goto_13
    :try_start_14
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->SOCKET_TIMEOUT:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_3

    :goto_14
    :try_start_15
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->NETWORK_ERROR:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_2

    :goto_15
    :try_start_16
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->OAUTH_DENIED_BY_USER:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_1

    :goto_16
    :try_start_17
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->DELETED_GMAIL:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_0

    :goto_17
    return-void

    :catch_0
    move-exception v0

    goto :goto_17

    :catch_1
    move-exception v0

    goto :goto_16

    :catch_2
    move-exception v0

    goto :goto_15

    :catch_3
    move-exception v0

    goto :goto_14

    :catch_4
    move-exception v0

    goto :goto_13

    :catch_5
    move-exception v0

    goto :goto_12

    :catch_6
    move-exception v0

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_10

    :catch_8
    move-exception v0

    goto :goto_f

    :catch_9
    move-exception v0

    goto :goto_e

    :catch_a
    move-exception v0

    goto/16 :goto_d

    :catch_b
    move-exception v0

    goto/16 :goto_c

    :catch_c
    move-exception v0

    goto/16 :goto_b

    :catch_d
    move-exception v0

    goto/16 :goto_a

    :catch_e
    move-exception v0

    goto/16 :goto_9

    :catch_f
    move-exception v0

    goto/16 :goto_8

    :catch_10
    move-exception v0

    goto/16 :goto_7

    :catch_11
    move-exception v0

    goto/16 :goto_6

    .line 706
    :catch_12
    move-exception v0

    goto/16 :goto_5

    :catch_13
    move-exception v0

    goto/16 :goto_4

    :catch_14
    move-exception v0

    goto/16 :goto_3

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :catch_16
    move-exception v0

    goto/16 :goto_1

    :catch_17
    move-exception v0

    goto/16 :goto_0
.end method
