.class public interface abstract Lcom/asus/provisioning/IDmPersister;
.super Ljava/lang/Object;
.source "IDmPersister.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/provisioning/IDmPersister$Stub;
    }
.end annotation


# virtual methods
.method public abstract setDMProvisioning(Lcom/asus/provisioning/oma/Application;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
