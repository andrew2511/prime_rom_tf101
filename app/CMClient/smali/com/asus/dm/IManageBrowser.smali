.class public interface abstract Lcom/asus/dm/IManageBrowser;
.super Ljava/lang/Object;
.source "IManageBrowser.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/IManageBrowser$Stub;
    }
.end annotation


# virtual methods
.method public abstract getHomePage()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHomePage(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
