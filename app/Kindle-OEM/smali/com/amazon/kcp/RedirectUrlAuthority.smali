.class public Lcom/amazon/kcp/RedirectUrlAuthority;
.super Ljava/lang/Object;
.source "RedirectUrlAuthority.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/RedirectUrlAuthority$Domain;
    }
.end annotation


# static fields
.field private static currentDomain:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->PROD:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    sput-object v0, Lcom/amazon/kcp/RedirectUrlAuthority;->currentDomain:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-static {}, Lcom/amazon/kcp/RedirectUrlAuthority;->getUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/amazon/kcp/DSNUtils;->addEncryptedDSNToURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriBuilder()Landroid/net/Uri$Builder;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 55
    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    sget-object v1, Lcom/amazon/kcp/RedirectUrlAuthority;->currentDomain:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    iget-object v1, v1, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->urlDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    return-object v0
.end method

.method public static setDomain(Lcom/amazon/kcp/RedirectUrlAuthority$Domain;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting domain to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/RedirectUrlAuthority$Domain;->urlDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    sput-object p0, Lcom/amazon/kcp/RedirectUrlAuthority;->currentDomain:Lcom/amazon/kcp/RedirectUrlAuthority$Domain;

    .line 68
    return-void
.end method
