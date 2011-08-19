.class public Lcom/google/android/music/dl/ServiceUnavailableException;
.super Lorg/apache/http/client/HttpResponseException;
.source "ServiceUnavailableException.java"


# instance fields
.field private mRetryAfterInSeconds:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .parameter "retryAfterInSeconds"
    .parameter "s"

    .prologue
    .line 15
    const/16 v0, 0x1f7

    invoke-direct {p0, v0, p3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 16
    iput-wide p1, p0, Lcom/google/android/music/dl/ServiceUnavailableException;->mRetryAfterInSeconds:J

    .line 17
    return-void
.end method


# virtual methods
.method public getRetryAfterInSeconds()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/google/android/music/dl/ServiceUnavailableException;->mRetryAfterInSeconds:J

    return-wide v0
.end method
