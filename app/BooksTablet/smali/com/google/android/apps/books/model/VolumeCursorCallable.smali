.class public Lcom/google/android/apps/books/model/VolumeCursorCallable;
.super Ljava/lang/Object;
.source "VolumeCursorCallable.java"

# interfaces
.implements Lcom/google/android/apps/books/model/ServiceCallable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/model/VolumeCursorCallable$Query;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/model/ServiceCallable",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mService:Lcom/google/android/apps/books/service/FetchService;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/service/ContentFetchService;Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter "service"
    .parameter "resolver"
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/apps/books/model/VolumeCursorCallable;->mService:Lcom/google/android/apps/books/service/FetchService;

    .line 46
    const-string v0, "missing account"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeCursorCallable;->mAccount:Landroid/accounts/Account;

    .line 47
    const-string v0, "missing resolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeCursorCallable;->mResolver:Landroid/content/ContentResolver;

    .line 48
    const-string v0, "missing/empty volumeId"

    invoke-static {p4, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeCursorCallable;->mVolumeId:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public call()Landroid/database/Cursor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeCursorCallable;->mService:Lcom/google/android/apps/books/service/FetchService;

    iget-object v2, p0, Lcom/google/android/apps/books/model/VolumeCursorCallable;->mVolumeId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/books/model/VolumeCursorCallable;->mAccount:Landroid/accounts/Account;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v4, v5}, Lcom/google/android/apps/books/service/FetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeCursorCallable;->mVolumeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 61
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeCursorCallable;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/model/VolumeCursorCallable$Query;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/VolumeCursorCallable;->call()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setService(Lcom/google/android/apps/books/service/FetchService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/books/model/VolumeCursorCallable;->mService:Lcom/google/android/apps/books/service/FetchService;

    .line 56
    return-void
.end method
