.class Lcom/asus/cm/util/TmoTreeReplacer;
.super Lcom/asus/cm/util/TreeReplacer;
.source "TreeReplacer.java"


# static fields
.field private static final LAB_SERVER_ID:Ljava/lang/String; = "86636822"

.field private static final PRODUCTION_SERVER_ID:Ljava/lang/String; = "86636821"

.field private static final SHARED_SECRET:Ljava/lang/String; = "My favorite is HTC."


# instance fields
.field private serverID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "pContext"
    .parameter "resId"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/asus/cm/util/TreeReplacer;-><init>(Landroid/content/Context;I)V

    .line 87
    const-string v0, "86636821"

    iput-object v0, p0, Lcom/asus/cm/util/TmoTreeReplacer;->serverID:Ljava/lang/String;

    .line 79
    const v0, 0x7f05000a

    if-ne p2, v0, :cond_0

    .line 80
    const-string v0, "86636822"

    iput-object v0, p0, Lcom/asus/cm/util/TmoTreeReplacer;->serverID:Ljava/lang/String;

    .line 82
    :cond_0
    return-void
.end method

.method private static getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, digest:Ljava/security/MessageDigest;
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private static getSecretPW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 120
    const-string v0, "My favorite is HTC."

    invoke-static {p0, p1, v0}, Lcom/asus/cm/util/TmoTreeReplacer;->getSecretPW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecretPW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "a"
    .parameter "b"
    .parameter "s"

    .prologue
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, x:Ljava/lang/String;
    const/4 v0, 0x0

    .line 102
    .local v0, digest:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/asus/cm/util/TmoTreeReplacer;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v3, "+"

    const-string v4, "m"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    const-string v5, "f"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v3, "=="

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 113
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method do_carrier_require(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "content"

    .prologue
    .line 125
    const-string v0, "TMO_ServerPW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string v0, "TMO_ServerPW"

    iget-object v1, p0, Lcom/asus/cm/util/TmoTreeReplacer;->serverID:Ljava/lang/String;

    iget-object v2, p0, Lcom/asus/cm/util/TmoTreeReplacer;->serialNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/cm/util/TmoTreeReplacer;->getSecretPW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_0
    :goto_0
    return-object p1

    .line 127
    :cond_1
    const-string v0, "TMO_Server_Name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const-string v0, "TMO_Server_Name"

    iget-object v1, p0, Lcom/asus/cm/util/TmoTreeReplacer;->serverID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 129
    :cond_2
    const-string v0, "TMO_ClientPW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    const-string v0, "TMO_ClientPW"

    iget-object v1, p0, Lcom/asus/cm/util/TmoTreeReplacer;->serialNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/cm/util/TmoTreeReplacer;->serverID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/asus/cm/util/TmoTreeReplacer;->getSecretPW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 131
    :cond_3
    const-string v0, "TMO_Client_Name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "TMO_Client_Name"

    iget-object v1, p0, Lcom/asus/cm/util/TmoTreeReplacer;->serialNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
