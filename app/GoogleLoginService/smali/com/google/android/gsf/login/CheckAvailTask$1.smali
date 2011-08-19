.class synthetic Lcom/google/android/gsf/login/CheckAvailTask$1;
.super Ljava/lang/Object;
.source "CheckAvailTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/CheckAvailTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/google/android/gsf/login/BackendStub$Status;->values()[Lcom/google/android/gsf/login/BackendStub$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gsf/login/CheckAvailTask$1;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    :try_start_0
    sget-object v0, Lcom/google/android/gsf/login/CheckAvailTask$1;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->USERNAME_UNAVAILABLE:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
