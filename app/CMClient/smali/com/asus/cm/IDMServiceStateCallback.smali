.class public interface abstract Lcom/asus/cm/IDMServiceStateCallback;
.super Ljava/lang/Object;
.source "IDMServiceStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/IDMServiceStateCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyStatus(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stateChange(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
