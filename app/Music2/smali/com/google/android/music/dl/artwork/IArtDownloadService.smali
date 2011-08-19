.class public interface abstract Lcom/google/android/music/dl/artwork/IArtDownloadService;
.super Ljava/lang/Object;
.source "IArtDownloadService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/artwork/IArtDownloadService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAlbumArt(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
