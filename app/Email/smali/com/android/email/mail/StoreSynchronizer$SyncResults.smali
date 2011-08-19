.class public Lcom/android/email/mail/StoreSynchronizer$SyncResults;
.super Ljava/lang/Object;
.source "StoreSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/StoreSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncResults"
.end annotation


# instance fields
.field public mNewMessages:I

.field public mTotalMessages:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "totalMessages"
    .parameter "newMessages"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    .line 48
    iput p2, p0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    .line 49
    return-void
.end method
