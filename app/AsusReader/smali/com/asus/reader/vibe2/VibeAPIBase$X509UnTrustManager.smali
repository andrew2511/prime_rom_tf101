.class public Lcom/asus/reader/vibe2/VibeAPIBase$X509UnTrustManager;
.super Ljava/lang/Object;
.source "VibeAPIBase.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/vibe2/VibeAPIBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X509UnTrustManager"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1343
    sget-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->TAG:Ljava/lang/String;

    const-string v1, "Bypass checkClientTrusted..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1348
    sget-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->TAG:Ljava/lang/String;

    const-string v1, "Bypass checkServerTrusted..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 1352
    sget-object v0, Lcom/asus/reader/vibe2/VibeAPIBase;->TAG:Ljava/lang/String;

    const-string v1, "Bypass getAcceptedIssuers..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v0, 0x0

    return-object v0
.end method
