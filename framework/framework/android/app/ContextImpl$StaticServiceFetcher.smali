.class abstract Landroid/app/ContextImpl$StaticServiceFetcher;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StaticServiceFetcher"
.end annotation


# instance fields
.field private mCachedInstance:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createStaticService()Ljava/lang/Object;
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 4
    .parameter "unused"

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Landroid/app/ContextImpl$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    .line 219
    .local v0, service:Ljava/lang/Object;
    if-eqz v0, :cond_8

    .line 220
    monitor-exit p0

    move-object v1, v0

    .line 222
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;->createStaticService()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl$StaticServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    monitor-exit p0

    goto :goto_7

    .line 223
    .end local v0           #service:Ljava/lang/Object;
    :catchall_10
    move-exception v1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v1
.end method
