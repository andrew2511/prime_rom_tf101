.class public interface abstract Lcom/google/android/youtube/googlemobile/masf/MobileServiceMux$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/googlemobile/masf/MobileServiceMux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# static fields
.field public static final NETWORK_ACCESS_DENIED:I = 0x0

.field public static final NETWORK_HTTP_FAILURE:I = 0x2

.field public static final NETWORK_PROTOCOL_FAILURE:I = 0x1

.field public static final NETWORK_UNAVAILABLE:I = 0x3


# virtual methods
.method public abstract onNetworkError(I)V
.end method

.method public abstract onRequestComplete(Lcom/google/android/youtube/googlemobile/masf/protocol/Request;)V
.end method
