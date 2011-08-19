.class public Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;
.super Lcom/nuance/xt9/input/Input;
.source "NativeConfigInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/NativeConfigInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputConfig"
.end annotation


# instance fields
.field private mAvailableLanguagesOnDevice:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBuildInfo:Ljava/lang/String;

.field private mChineseInputEnabled:Z

.field private mChineseTraceBuildEnabled:Z

.field private mCoreVersionStrings:Ljava/lang/String;

.field private mT9TraceCoreVersion:Ljava/lang/String;

.field private mT9WriteAlphaCoreVersion:Ljava/lang/String;

.field private mT9WriteChineseCoreVersion:Ljava/lang/String;

.field private mTraceBuildEnabled:Z

.field private mWriteAlphaBuildEnabled:Z

.field private mWriteChineseBuildEnabled:Z

.field private mXT9CoreVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/nuance/xt9/input/Input;-><init>()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->getBuildInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->getCoverVersions()V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mT9WriteAlphaCoreVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mT9WriteChineseCoreVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->getAvailableLanguagesOnDevice(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->isTraceBuildEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->isChineseInputBuildEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->isChineseTraceEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->isWriteChineseBuildEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->isWriteAlphaBuildEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mXT9CoreVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mT9TraceCoreVersion:Ljava/lang/String;

    return-object v0
.end method

.method private getAvailableLanguagesOnDevice(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
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
    const/16 v4, 0x40

    .line 194
    iget-object v3, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mAvailableLanguagesOnDevice:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 195
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mAvailableLanguagesOnDevice:Ljava/util/Map;

    .line 196
    new-array v2, v4, [I

    .line 198
    .local v2, languages:[I
    const/4 v1, 0x0

    .line 200
    .local v1, index:I
    invoke-static {v2, v4, p1}, Lcom/nuance/xt9/input/NativeConfigInput;->xt9input_config_getLanguagesOnDevice([IILjava/lang/String;)I

    move-result v0

    .line 201
    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 202
    iget-object v3, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mAvailableLanguagesOnDevice:Ljava/util/Map;

    aget v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v0           #count:I
    .end local v1           #index:I
    .end local v2           #languages:[I
    :cond_0
    iget-object v3, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mAvailableLanguagesOnDevice:Ljava/util/Map;

    return-object v3
.end method

.method private getBuildInfo()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->xt9input_config_getBuildInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    const-string v1, "trace:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mTraceBuildEnabled:Z

    .line 174
    iget-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    const-string v1, "chinese_input:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mChineseInputEnabled:Z

    .line 175
    iget-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    const-string v1, "write_alpha:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mWriteAlphaBuildEnabled:Z

    .line 176
    iget-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    const-string v1, "write_chinese:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mWriteChineseBuildEnabled:Z

    .line 177
    iget-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    const-string v1, "chinese_trace:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mChineseTraceBuildEnabled:Z

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mBuildInfo:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FAILED to get XT9 Build Info "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCoverVersions()V
    .locals 9

    .prologue
    .line 121
    iget-object v6, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mCoreVersionStrings:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 122
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->xt9input_config_getCoreVersions()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mCoreVersionStrings:Ljava/lang/String;

    .line 124
    iget-object v6, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mCoreVersionStrings:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 128
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v6, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mCoreVersionStrings:Ljava/lang/String;

    const-string v7, ":"

    invoke-direct {v4, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v4, token:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 131
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, version:Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 137
    .local v2, index:I
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, coreName:Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, coreVersion:Ljava/lang/String;
    const-string v6, "xt9core_version"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 141
    iput-object v1, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mXT9CoreVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v0           #coreName:Ljava/lang/String;
    .end local v1           #coreVersion:Ljava/lang/String;
    .end local v2           #index:I
    .end local v5           #version:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 154
    .local v3, nfe:Ljava/lang/NumberFormatException;
    const-string v6, "xt9input"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing keycodes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mCoreVersionStrings:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    .restart local v0       #coreName:Ljava/lang/String;
    .restart local v1       #coreVersion:Ljava/lang/String;
    .restart local v2       #index:I
    .restart local v5       #version:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "t9trace_version"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    iput-object v1, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mT9TraceCoreVersion:Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_2
    const-string v6, "t9write_alpha_version"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 147
    iput-object v1, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mT9WriteAlphaCoreVersion:Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_3
    const-string v6, "t9write_chinese_version"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    iput-object v1, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mT9WriteChineseCoreVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 165
    .end local v0           #coreName:Ljava/lang/String;
    .end local v1           #coreVersion:Ljava/lang/String;
    .end local v2           #index:I
    .end local v4           #token:Ljava/util/StringTokenizer;
    .end local v5           #version:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private isChineseInputBuildEnabled()Z
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->getBuildInfo()V

    .line 101
    iget-boolean v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mChineseInputEnabled:Z

    return v0
.end method

.method private isChineseTraceEnabled()Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->getBuildInfo()V

    .line 111
    iget-boolean v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mChineseTraceBuildEnabled:Z

    return v0
.end method

.method private isTraceBuildEnabled()Z
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->getBuildInfo()V

    .line 96
    iget-boolean v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mTraceBuildEnabled:Z

    return v0
.end method

.method private isWriteAlphaBuildEnabled()Z
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->getBuildInfo()V

    .line 116
    iget-boolean v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mWriteAlphaBuildEnabled:Z

    return v0
.end method

.method private isWriteChineseBuildEnabled()Z
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->getBuildInfo()V

    .line 106
    iget-boolean v0, p0, Lcom/nuance/xt9/input/NativeConfigInput$InputConfig;->mWriteChineseBuildEnabled:Z

    return v0
.end method
