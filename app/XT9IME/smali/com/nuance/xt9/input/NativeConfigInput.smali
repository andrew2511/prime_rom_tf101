.class public final Lcom/nuance/xt9/input/NativeConfigInput;
.super Ljava/lang/Object;
.source "NativeConfigInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;
    }
.end annotation


# static fields
.field private static mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static createConfiInput()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-direct {v0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;-><init>()V

    sput-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    .line 20
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->access$000(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)V

    .line 21
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->access$100(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static getAvailableLanguagesOnDevice(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "databaseConfigFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->createConfiInput()V

    .line 28
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-static {v0, p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->access$200(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getT9TraceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->createConfiInput()V

    .line 63
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->access$900(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getT9WriteAlphaCoreVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->createConfiInput()V

    .line 68
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->access$1000(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getT9WriteChineseCoreVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->createConfiInput()V

    .line 73
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->access$1100(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXT9CoreVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->createConfiInput()V

    .line 58
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->access$800(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChineseInputBuildEnabled()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->createConfiInput()V

    .line 38
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->access$400(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Z

    move-result v0

    return v0
.end method

.method public static isChineseTraceEnabled()Z
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->createConfiInput()V

    .line 43
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->access$500(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Z

    move-result v0

    return v0
.end method

.method public static isTraceBuildEnabled()Z
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->createConfiInput()V

    .line 33
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->access$300(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Z

    move-result v0

    return v0
.end method

.method public static isWriteAlphaBuildEnabled()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->createConfiInput()V

    .line 53
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->access$700(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Z

    move-result v0

    return v0
.end method

.method public static isWriteChineseBuildEnabled()Z
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->createConfiInput()V

    .line 48
    sget-object v0, Lcom/nuance/xt9/input/NativeConfigInput;->mConfigInput:Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;

    invoke-static {v0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->access$600(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Z

    move-result v0

    return v0
.end method

.method public static native xt9input_config_getBuildInfo()Ljava/lang/String;
.end method

.method public static native xt9input_config_getCoreVersions()Ljava/lang/String;
.end method

.method public static native xt9input_config_getLanguagesOnDevice([IILjava/lang/String;)I
.end method
