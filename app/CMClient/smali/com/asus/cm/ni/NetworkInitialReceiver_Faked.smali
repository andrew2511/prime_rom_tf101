.class public Lcom/asus/cm/ni/NetworkInitialReceiver_Faked;
.super Landroid/content/BroadcastReceiver;
.source "NetworkInitialReceiver_Faked.java"


# static fields
.field private static final NI_TRIGGER_MSG:Ljava/lang/String; = "#D*M*C#57C40230FF9583B8898A5E2BFDF1B4BE7F030800000000E40C41737573434D536572766572616161616161616161616A3B666A643B66613B666A"

.field private static final TAG:Ljava/lang/String; = "NetworkInitialReceiver_Faked"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private DMIntializeOverSMS(Ljava/lang/String;)[B
    .locals 12
    .parameter "messageBody"

    .prologue
    const/4 v11, 0x0

    .line 53
    const-string v1, "#D*M*C#"

    .line 54
    .local v1, SinatureText:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_0

    move-object v8, v11

    .line 92
    :goto_0
    return-object v8

    .line 57
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, mSinature:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 63
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, mTempByte:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 66
    .local v7, mlength:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, 0x2

    .line 68
    .local v3, headerIndex:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    mul-int/lit8 v9, v7, 0x2

    add-int/2addr v8, v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 70
    const-string v8, "NetworkInitialReceiver_Faked"

    const-string v9, "DMIntializeOverSMS parse failed!! "

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v11

    .line 71
    goto :goto_0

    .line 74
    :cond_1
    new-array v0, v7, [B

    .line 76
    .local v0, NI_data:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 78
    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v3

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 79
    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v8, v0

    .line 83
    goto :goto_0

    .line 84
    .end local v0           #NI_data:[B
    .end local v3           #headerIndex:I
    .end local v4           #i:I
    .end local v6           #mTempByte:Ljava/lang/String;
    .end local v7           #mlength:I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 85
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "NetworkInitialReceiver_Faked"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error DMIntializeOverSMS parse: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v11

    .line 86
    goto :goto_0

    .end local v2           #ex:Ljava/lang/RuntimeException;
    :cond_3
    move-object v8, v11

    .line 92
    goto :goto_0
.end method

.method private hexChar2Int(C)I
    .locals 4
    .parameter "c"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 115
    if-lt p1, v1, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 116
    sub-int v0, p1, v1

    .line 120
    :goto_0
    return v0

    .line 117
    :cond_0
    if-lt p1, v2, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    .line 118
    sub-int v0, p1, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 119
    :cond_1
    if-lt p1, v3, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    .line 120
    sub-int v0, p1, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hexString2Bytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const/4 v3, 0x0

    .line 111
    :goto_0
    return-object v3

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 104
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 106
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 107
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/asus/cm/ni/NetworkInitialReceiver_Faked;->hexChar2Int(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/asus/cm/ni/NetworkInitialReceiver_Faked;->hexChar2Int(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 106
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 111
    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "***** NetworkInitialReceiver_Faked *****"

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/asus/cm/CMService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v1, myIntent:Landroid/content/Intent;
    const-string v2, "NIParams"

    const-string v3, "#D*M*C#57C40230FF9583B8898A5E2BFDF1B4BE7F030800000000E40C41737573434D536572766572616161616161616161616A3B666A643B66613B666A"

    invoke-direct {p0, v3}, Lcom/asus/cm/ni/NetworkInitialReceiver_Faked;->DMIntializeOverSMS(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    return-void
.end method
