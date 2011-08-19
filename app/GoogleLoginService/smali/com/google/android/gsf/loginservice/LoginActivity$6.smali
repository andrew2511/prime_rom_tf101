.class synthetic Lcom/google/android/gsf/loginservice/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$gsf$LoginData$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/google/android/gsf/LoginData$Status;->values()[Lcom/google/android/gsf/LoginData$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gsf/loginservice/LoginActivity$6;->$SwitchMap$com$google$android$gsf$LoginData$Status:[I

    :try_start_0
    sget-object v0, Lcom/google/android/gsf/loginservice/LoginActivity$6;->$SwitchMap$com$google$android$gsf$LoginData$Status:[I

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/gsf/loginservice/LoginActivity$6;->$SwitchMap$com$google$android$gsf$LoginData$Status:[I

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->SERVER_ERROR:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/gsf/loginservice/LoginActivity$6;->$SwitchMap$com$google$android$gsf$LoginData$Status:[I

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->CAPTCHA:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
