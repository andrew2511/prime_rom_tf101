.class Lorg/apache/harmony/security/provider/cert/DRLCertFactory$1;
.super Ljava/lang/Object;
.source "DRLCertFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/security/provider/cert/DRLCertFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/security/provider/cert/DRLCertFactory;


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/provider/cert/DRLCertFactory;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/DRLCertFactory$1;->this$0:Lorg/apache/harmony/security/provider/cert/DRLCertFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/DRLCertFactory$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 4

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/DRLCertFactory$1;->this$0:Lorg/apache/harmony/security/provider/cert/DRLCertFactory;

    const-string v1, "CertificateFactory.X509"

    const-string v2, "org.apache.harmony.security.provider.cert.X509CertFactoryImpl"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/cert/DRLCertFactory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/DRLCertFactory$1;->this$0:Lorg/apache/harmony/security/provider/cert/DRLCertFactory;

    const-string v1, "Alg.Alias.CertificateFactory.X.509"

    const-string v2, "X509"

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/security/provider/cert/DRLCertFactory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method
