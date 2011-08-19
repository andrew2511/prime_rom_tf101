.class public interface abstract Lcom/google/android/youtube/core/masf/MasfService;
.super Ljava/lang/Object;
.source "MasfService.java"


# static fields
.field public static final DEV_SERVER_ADDRESS:Ljava/lang/String; = "http://jmt24.google.com/dev/r?sky=tchma"

.field public static final LIVE_SERVER_ADDRESS:Ljava/lang/String; = "http://www.google.com/m/appreq/mobilevideo"

.field public static final STAGING_SERVER_ADDRESS:Ljava/lang/String; = "http://jmt22.google.com/masf/staging"


# virtual methods
.method public abstract flushRequests()V
.end method

.method public abstract submitRequest(Lcom/google/android/youtube/googlemobile/masf/protocol/Request;Z)V
.end method
