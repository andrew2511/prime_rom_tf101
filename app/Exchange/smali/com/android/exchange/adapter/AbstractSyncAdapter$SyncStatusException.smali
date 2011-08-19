.class Lcom/android/exchange/adapter/AbstractSyncAdapter$SyncStatusException;
.super Ljava/io/IOException;
.source "AbstractSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/AbstractSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncStatusException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mServerId:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "serverId"
    .parameter "status"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$SyncStatusException;->mServerId:Ljava/lang/String;

    .line 152
    iput p2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter$SyncStatusException;->mStatus:I

    .line 153
    return-void
.end method
