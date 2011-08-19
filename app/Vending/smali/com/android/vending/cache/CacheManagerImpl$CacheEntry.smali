.class Lcom/android/vending/cache/CacheManagerImpl$CacheEntry;
.super Ljava/lang/Object;
.source "CacheManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/cache/CacheManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheEntry"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public etag:Ljava/lang/String;

.field public expiryTime:J

.field public highPriority:Z

.field public modifiedTime:J

.field public postponeRefreshExpiryTime:J

.field public protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

.field public serializable:Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
