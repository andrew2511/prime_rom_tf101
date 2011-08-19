.class public Lcom/asus/dmlib/syncml/dm/DMSession;
.super Ljava/lang/Object;
.source "DMSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DMSession"


# instance fields
.field private isAuthenticated:Z

.field private mISecurity:Lcom/asus/dmlib/syncml/dm/IDMSecurity;

.field private mSessionID:Ljava/lang/String;

.field private mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pSessionID"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMSession;->mSessionID:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;->getInstance()Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSession;->mISecurity:Lcom/asus/dmlib/syncml/dm/IDMSecurity;

    .line 25
    return-void
.end method


# virtual methods
.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSession;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionState()Lcom/asus/dmlib/syncml/dm/DMSessionState;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSession;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/DMSession;->isAuthenticated:Z

    return v0
.end method

.method public setAuthenticated(Z)V
    .locals 0
    .parameter "isAuth"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/asus/dmlib/syncml/dm/DMSession;->isAuthenticated:Z

    .line 33
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionID"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMSession;->mSessionID:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSessionState(Lcom/asus/dmlib/syncml/dm/DMSessionState;)V
    .locals 0
    .parameter "sessionState"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMSession;->mSessionState:Lcom/asus/dmlib/syncml/dm/DMSessionState;

    .line 55
    return-void
.end method

.method public syncMLAuthMatches(Lcom/asus/dmlib/syncml/message/common/Cred;Ljava/lang/String;)Z
    .locals 1
    .parameter "cred"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSession;->mISecurity:Lcom/asus/dmlib/syncml/dm/IDMSecurity;

    invoke-interface {v0, p1, p2}, Lcom/asus/dmlib/syncml/dm/IDMSecurity;->syncMLAuthMatches(Lcom/asus/dmlib/syncml/message/common/Cred;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
