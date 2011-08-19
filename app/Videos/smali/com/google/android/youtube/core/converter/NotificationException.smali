.class public Lcom/google/android/youtube/core/converter/NotificationException;
.super Lcom/google/android/youtube/core/converter/ConverterException;
.source "NotificationException.java"


# instance fields
.field private final errorCode:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/NotificationException;->errorCode:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/NotificationException;->errorCode:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    .line 19
    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/NotificationException;->errorCode:Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification server responded with error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/converter/NotificationException;->getErrorCode()Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
