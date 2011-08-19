.class public Lgov/nist/javax/sip/header/ProxyAuthenticate;
.super Lgov/nist/javax/sip/header/AuthenticationHeader;
.source "ProxyAuthenticate.java"

# interfaces
.implements Ljavax/sip/header/ProxyAuthenticateHeader;


# static fields
.field private static final serialVersionUID:J = 0x35193379862f44acL


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    const-string v0, "Proxy-Authenticate"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getURI()Ljavax/sip/address/URI;
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public setURI(Ljavax/sip/address/URI;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 78
    return-void
.end method
