.class public interface abstract Lcom/asus/dmlib/vdm/SessionStateObserver;
.super Ljava/lang/Object;
.source "SessionStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;,
        Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;,
        Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;
    }
.end annotation


# virtual methods
.method public abstract notify(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionType;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;Lcom/asus/dmlib/vdm/SessionInitiator;)V
.end method
