.class Lnet/oauth/signature/PLAINTEXT;
.super Lnet/oauth/signature/OAuthSignatureMethod;
.source "PLAINTEXT.java"


# instance fields
.field private signature:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lnet/oauth/signature/OAuthSignatureMethod;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oauth/signature/PLAINTEXT;->signature:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/oauth/signature/PLAINTEXT;->signature:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/oauth/signature/PLAINTEXT;->getConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/oauth/signature/PLAINTEXT;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oauth/signature/PLAINTEXT;->signature:Ljava/lang/String;

    .line 44
    :cond_0
    iget-object v0, p0, Lnet/oauth/signature/PLAINTEXT;->signature:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "baseString"

    .prologue
    .line 30
    invoke-direct {p0}, Lnet/oauth/signature/PLAINTEXT;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConsumerSecret(Ljava/lang/String;)V
    .locals 1
    .parameter "consumerSecret"

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnet/oauth/signature/PLAINTEXT;->signature:Ljava/lang/String;

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-super {p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->setConsumerSecret(Ljava/lang/String;)V

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setTokenSecret(Ljava/lang/String;)V
    .locals 1
    .parameter "tokenSecret"

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnet/oauth/signature/PLAINTEXT;->signature:Ljava/lang/String;

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-super {p0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->setTokenSecret(Ljava/lang/String;)V

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
