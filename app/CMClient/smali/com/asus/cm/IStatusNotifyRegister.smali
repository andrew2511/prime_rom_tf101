.class public interface abstract Lcom/asus/cm/IStatusNotifyRegister;
.super Ljava/lang/Object;
.source "IStatusNotifyRegister.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/IStatusNotifyRegister$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelDMSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract destoryEngine()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerStateCallback(Lcom/asus/cm/IDMServiceStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterStateCallback(Lcom/asus/cm/IDMServiceStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
