.class final Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;
    .locals 1
    .parameter "number"

    .prologue
    .line 1819
    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;->valueOf(I)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1817
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode$1;->findValueByNumber(I)Lcom/google/android/youtube/core/model/proto/Notification$ServerReply$ErrorCode;

    move-result-object v0

    return-object v0
.end method
