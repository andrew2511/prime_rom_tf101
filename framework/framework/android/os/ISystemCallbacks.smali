.class public interface abstract Landroid/os/ISystemCallbacks;
.super Ljava/lang/Object;
.source "ISystemCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISystemCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNotify(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
