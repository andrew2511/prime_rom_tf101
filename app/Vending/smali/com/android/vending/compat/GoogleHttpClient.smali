.class public Lcom/android/vending/compat/GoogleHttpClient;
.super Lcom/google/android/common/http/GoogleHttpClient;
.source "GoogleHttpClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter "context"
    .parameter "appAndVersion"
    .parameter "gzipCapable"

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 9
    return-void
.end method
