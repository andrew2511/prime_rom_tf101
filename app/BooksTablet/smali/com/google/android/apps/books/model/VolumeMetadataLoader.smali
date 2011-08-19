.class public Lcom/google/android/apps/books/model/VolumeMetadataLoader;
.super Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;
.source "VolumeMetadataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/model/VolumeMetadataLoader$VolumeAccessException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader",
        "<",
        "Lcom/google/android/apps/books/model/VolumeMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mCheckShelfMembership:Z

.field private mFetchService:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateVolumeOverview:Z

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Future;Landroid/accounts/Account;Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "account"
    .parameter "volumeId"
    .parameter "updateVolumeOverview"
    .parameter "checkShelfMembership"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, fetchService:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/android/apps/books/service/ContentFetchService;>;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "missing fetchService"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadataLoader;->mFetchService:Ljava/util/concurrent/Future;

    .line 29
    const-string v0, "missing account"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadataLoader;->mAccount:Landroid/accounts/Account;

    .line 30
    const-string v0, "missing volumeId"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadataLoader;->mVolumeId:Ljava/lang/String;

    .line 31
    iput-boolean p5, p0, Lcom/google/android/apps/books/model/VolumeMetadataLoader;->mUpdateVolumeOverview:Z

    .line 32
    iput-boolean p6, p0, Lcom/google/android/apps/books/model/VolumeMetadataLoader;->mCheckShelfMembership:Z

    .line 33
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/google/android/apps/books/model/VolumeMetadata;
    .locals 8

    .prologue
    .line 38
    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/books/model/VolumeMetadataLoader;->mFetchService:Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/service/ContentFetchService;

    .line 39
    .local v2, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/VolumeMetadataLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 41
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v0, Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v4, p0, Lcom/google/android/apps/books/model/VolumeMetadataLoader;->mVolumeId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/books/model/VolumeMetadataLoader;->mAccount:Landroid/accounts/Account;

    invoke-direct {v0, v4, v5}, Lcom/google/android/apps/books/model/VolumeMetadata;-><init>(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 42
    .local v0, data:Lcom/google/android/apps/books/model/VolumeMetadata;
    iget-boolean v4, p0, Lcom/google/android/apps/books/model/VolumeMetadataLoader;->mUpdateVolumeOverview:Z

    iget-boolean v5, p0, Lcom/google/android/apps/books/model/VolumeMetadataLoader;->mCheckShelfMembership:Z

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/apps/books/model/VolumeMetadata;->populateFrom(Lcom/google/android/apps/books/service/ContentFetchService;Landroid/content/ContentResolver;ZZ)V

    .line 43
    iput-object v2, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->fetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    .line 45
    sget-object v4, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->NO_VIEW:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    iget-object v5, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    new-instance v4, Lcom/google/android/apps/books/model/ExceptionVolumeMetadata;

    new-instance v5, Lcom/google/android/apps/books/model/VolumeMetadataLoader$VolumeAccessException;

    iget-object v6, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    const-string v7, "tried opening a NO_VIEW volume"

    invoke-direct {v5, v6, v7}, Lcom/google/android/apps/books/model/VolumeMetadataLoader$VolumeAccessException;-><init>(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/android/apps/books/model/ExceptionVolumeMetadata;-><init>(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0           #data:Lcom/google/android/apps/books/model/VolumeMetadata;
    .end local v2           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v4

    .restart local v0       #data:Lcom/google/android/apps/books/model/VolumeMetadata;
    .restart local v2       #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v4, v0

    .line 50
    goto :goto_0

    .line 52
    .end local v0           #data:Lcom/google/android/apps/books/model/VolumeMetadata;
    .end local v2           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 54
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Lcom/google/android/apps/books/model/ExceptionVolumeMetadata;

    invoke-direct {v4, v1}, Lcom/google/android/apps/books/model/ExceptionVolumeMetadata;-><init>(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/VolumeMetadataLoader;->loadInBackground()Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v0

    return-object v0
.end method
