.class public Lcom/asus/dmlib/vdm/SessionStateNotifier;
.super Ljava/lang/Object;
.source "SessionStateNotifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DMC->SessionStateNotifier"


# instance fields
.field mLastState:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

.field mLastType:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

.field private observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/vdm/SessionStateObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;->DM:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    iput-object v0, p0, Lcom/asus/dmlib/vdm/SessionStateNotifier;->mLastType:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    .line 18
    sget-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    iput-object v0, p0, Lcom/asus/dmlib/vdm/SessionStateNotifier;->mLastState:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/vdm/SessionStateNotifier;->observers:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method protected notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V
    .locals 5
    .parameter "type"
    .parameter "state"
    .parameter "lastError"
    .parameter "initiator"

    .prologue
    .line 49
    new-instance v2, Ljava/lang/String;

    const-string v3, "SSC: notify (initiator = "

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, s:Ljava/lang/String;
    if-nez p4, :cond_0

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NULL)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    :goto_0
    iput-object p1, p0, Lcom/asus/dmlib/vdm/SessionStateNotifier;->mLastType:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;

    .line 57
    iput-object p2, p0, Lcom/asus/dmlib/vdm/SessionStateNotifier;->mLastState:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    .line 59
    iget-object v3, p0, Lcom/asus/dmlib/vdm/SessionStateNotifier;->observers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/vdm/SessionStateObserver;

    .line 60
    .local v1, observer:Lcom/asus/dmlib/vdm/SessionStateObserver;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/asus/dmlib/vdm/SessionStateObserver;->notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V

    goto :goto_1

    .line 53
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/asus/dmlib/vdm/SessionStateObserver;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4}, Lcom/asus/dmlib/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 62
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public registerObserver(Lcom/asus/dmlib/vdm/SessionStateObserver;)Z
    .locals 3
    .parameter "observer"

    .prologue
    .line 29
    const-string v0, "DMC->SessionStateNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSC: registerObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/asus/dmlib/vdm/SessionStateNotifier;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public terminate()V
    .locals 3

    .prologue
    .line 65
    iget-object v2, p0, Lcom/asus/dmlib/vdm/SessionStateNotifier;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/vdm/SessionStateObserver;

    .line 66
    .local v1, observer:Lcom/asus/dmlib/vdm/SessionStateObserver;
    iget-object v2, p0, Lcom/asus/dmlib/vdm/SessionStateNotifier;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v1           #observer:Lcom/asus/dmlib/vdm/SessionStateObserver;
    :cond_0
    return-void
.end method

.method public unregisterObserver(Lcom/asus/dmlib/vdm/SessionStateObserver;)Z
    .locals 3
    .parameter "observer"

    .prologue
    .line 38
    const-string v0, "DMC->SessionStateNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSC: unregisterObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/asus/dmlib/vdm/SessionStateNotifier;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
