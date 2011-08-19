.class public Lcom/layar/core/ModelProvider;
.super Ljava/lang/Object;
.source "ModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/core/ModelProvider$DownloadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isLightingEnabled:Z

.field private final mDownloadManager:Lcom/layar/util/DownloadManager;

.field private final mDownloading:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFailedStatusText:Ljava/lang/CharSequence;

.field private final mLoadingStatusText:Ljava/lang/CharSequence;

.field private final mMissing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/layar/core/ModelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/layar/util/StatusHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/layar/core/ModelProvider;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/core/ModelProvider;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/core/ModelProvider;->mDownloading:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/core/ModelProvider;->mMissing:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layar/core/ModelProvider;->mRenderers:Ljava/util/HashMap;

    .line 35
    sget-boolean v0, Lcom/layar/util/MyConfig;->OPENGL_LIGHTING:Z

    iput-boolean v0, p0, Lcom/layar/core/ModelProvider;->isLightingEnabled:Z

    .line 38
    const v0, 0x7f0900fc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/core/ModelProvider;->mLoadingStatusText:Ljava/lang/CharSequence;

    .line 39
    const v0, 0x7f0900fd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/core/ModelProvider;->mFailedStatusText:Ljava/lang/CharSequence;

    .line 40
    invoke-static {}, Lcom/layar/util/DownloadManager;->getInstance()Lcom/layar/util/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/core/ModelProvider;->mDownloadManager:Lcom/layar/util/DownloadManager;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/layar/core/ModelProvider;)Lcom/layar/util/StatusHelper;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mStatus:Lcom/layar/util/StatusHelper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/core/ModelProvider;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mLoadingStatusText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/core/ModelProvider;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/layar/core/ModelProvider;->isLightingEnabled:Z

    return v0
.end method

.method static synthetic access$3(Lcom/layar/core/ModelProvider;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mRenderers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/layar/core/ModelProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mMissing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/core/ModelProvider;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mFailedStatusText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$6(Lcom/layar/core/ModelProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mDownloading:Ljava/util/ArrayList;

    return-object v0
.end method

.method private download(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 87
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mDownloading:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mDownloadManager:Lcom/layar/util/DownloadManager;

    new-instance v1, Lcom/layar/core/ModelProvider$DownloadTask;

    invoke-direct {v1, p0, p1}, Lcom/layar/core/ModelProvider$DownloadTask;-><init>(Lcom/layar/core/ModelProvider;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/layar/util/DownloadManager;->enqueueRunnable(Ljava/lang/Runnable;)Z

    .line 87
    monitor-exit p0

    .line 92
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getModelRenderer(Ljava/lang/String;)Lcom/layar/core/ModelRenderer;
    .locals 1
    .parameter "url"

    .prologue
    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mRenderers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mRenderers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/core/ModelRenderer;

    monitor-exit p0

    .line 65
    :goto_0
    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mDownloading:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    invoke-direct {p0, p1}, Lcom/layar/core/ModelProvider;->download(Ljava/lang/String;)V

    .line 56
    :cond_1
    monitor-exit p0

    .line 65
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStatusHelper()Lcom/layar/util/StatusHelper;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mStatus:Lcom/layar/util/StatusHelper;

    return-object v0
.end method

.method public hasModelRenderer(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mRenderers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFetched(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mDownloading:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMissed(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/layar/core/ModelProvider;->mMissing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLightingEnabled(Z)V
    .locals 0
    .parameter "lightingEnabled"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/layar/core/ModelProvider;->isLightingEnabled:Z

    .line 45
    return-void
.end method

.method public setStatusHelper(Lcom/layar/util/StatusHelper;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/layar/core/ModelProvider;->mStatus:Lcom/layar/util/StatusHelper;

    .line 49
    return-void
.end method
