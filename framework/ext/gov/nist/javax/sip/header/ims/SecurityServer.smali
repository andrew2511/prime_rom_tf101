.class public Lgov/nist/javax/sip/header/ims/SecurityServer;
.super Lgov/nist/javax/sip/header/ims/SecurityAgree;
.source "SecurityServer.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/SecurityServerHeader;
.implements Ljavax/sip/header/ExtensionHeader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    const-string v0, "Security-Server"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
