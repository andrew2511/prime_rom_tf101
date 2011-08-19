.class public Lcom/android/vending/cache/CacheManager$CacheResult;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheResult"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public canPostponeRefresh:Z

.field public etag:Ljava/lang/String;

.field public isExpired:Z

.field public modifiedTime:J

.field public protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

.field public serializable:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
