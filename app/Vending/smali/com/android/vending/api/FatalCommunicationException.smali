.class public Lcom/android/vending/api/FatalCommunicationException;
.super Lcom/android/vending/api/ApiException;
.source "FatalCommunicationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/vending/api/ApiException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "t"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/vending/api/ApiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method
