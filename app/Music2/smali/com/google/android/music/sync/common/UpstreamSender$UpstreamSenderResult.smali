.class public Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;
.super Ljava/lang/Object;
.source "UpstreamSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/common/UpstreamSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpstreamSenderResult"
.end annotation


# instance fields
.field public mNumConflicts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/sync/common/UpstreamSender$UpstreamSenderResult;->mNumConflicts:I

    return-void
.end method
