.class public interface abstract Lcom/google/android/street/PanoramaRequest$Listener;
.super Ljava/lang/Object;
.source "PanoramaRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/PanoramaRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract receivedDone(Ljava/lang/String;Z)V
.end method

.method public abstract receivedPanoramaConfig(Lcom/google/android/street/PanoramaConfig;Lcom/google/mobile/common/io/protocol/ProtoBuf;)V
.end method

.method public abstract receivedPanoramaTile(Ljava/lang/String;IIII[B)V
.end method
