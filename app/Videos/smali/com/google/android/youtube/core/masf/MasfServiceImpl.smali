.class public Lcom/google/android/youtube/core/masf/MasfServiceImpl;
.super Ljava/lang/Object;
.source "MasfServiceImpl.java"

# interfaces
.implements Lcom/google/android/youtube/core/masf/MasfService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flushRequests()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/android/youtube/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/youtube/googlemobile/masf/MobileServiceMux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/MobileServiceMux;->flushRequests()V

    .line 17
    return-void
.end method

.method public submitRequest(Lcom/google/android/youtube/googlemobile/masf/protocol/Request;Z)V
    .locals 1
    .parameter "request"
    .parameter "immediate"

    .prologue
    .line 20
    invoke-static {}, Lcom/google/android/youtube/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/youtube/googlemobile/masf/MobileServiceMux;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/youtube/googlemobile/masf/protocol/Request;Z)V

    .line 21
    return-void
.end method
