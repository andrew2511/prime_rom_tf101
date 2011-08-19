.class public Lcom/google/android/music/dl/ServerRejectionException;
.super Ljava/io/IOException;
.source "ServerRejectionException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
    }
.end annotation


# instance fields
.field private final mRejectionReason:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/music/dl/ServerRejectionException;->mRejectionReason:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    .line 24
    return-void
.end method


# virtual methods
.method public getRejectionReason()Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/music/dl/ServerRejectionException;->mRejectionReason:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    return-object v0
.end method
