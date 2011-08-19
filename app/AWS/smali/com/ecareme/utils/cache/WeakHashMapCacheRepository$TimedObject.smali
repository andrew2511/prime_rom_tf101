.class Lcom/ecareme/utils/cache/WeakHashMapCacheRepository$TimedObject;
.super Ljava/lang/Object;
.source "WeakHashMapCacheRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimedObject"
.end annotation


# instance fields
.field expiredTime:J

.field object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;


# direct methods
.method constructor <init>(Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;JLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter "duration"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p4, object:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository$TimedObject;->this$0:Lcom/ecareme/utils/cache/WeakHashMapCacheRepository;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository$TimedObject;->expiredTime:J

    .line 81
    iput-object p4, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository$TimedObject;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method isExpired()Z
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ecareme/utils/cache/WeakHashMapCacheRepository$TimedObject;->expiredTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
