.class public final Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;
.super Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;
.source "BlockedContentReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/BlockedContentReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfflineLimitException"
.end annotation


# instance fields
.field private mNumDevicesLimit:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "detailMessage"
    .parameter "numDevicesLimit"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;-><init>(Ljava/lang/String;)V

    .line 86
    iput p2, p0, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;->mNumDevicesLimit:I

    .line 87
    return-void
.end method


# virtual methods
.method public getDeviceLimit()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;->mNumDevicesLimit:I

    return v0
.end method
