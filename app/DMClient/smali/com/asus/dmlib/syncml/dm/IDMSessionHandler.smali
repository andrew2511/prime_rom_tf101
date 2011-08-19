.class public interface abstract Lcom/asus/dmlib/syncml/dm/IDMSessionHandler;
.super Ljava/lang/Object;
.source "IDMSessionHandler.java"

# interfaces
.implements Lcom/asus/dmlib/syncml/dm/IDMSecurity;


# virtual methods
.method public abstract finish(Lcom/asus/dmlib/syncml/dm/DMSession;)V
.end method

.method public abstract getDMSession(Lcom/asus/dmlib/syncml/message/container/SyncHdr;)Lcom/asus/dmlib/syncml/dm/DMSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/DMException;
        }
    .end annotation
.end method
