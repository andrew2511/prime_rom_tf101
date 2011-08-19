.class public Lcom/google/android/apps/books/service/ContentFetchService;
.super Landroid/app/IntentService;
.source "ContentFetchService.java"

# interfaces
.implements Lcom/google/android/apps/books/service/FetchService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;,
        Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;,
        Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;,
        Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;,
        Lcom/google/android/apps/books/service/ContentFetchService$Action;
    }
.end annotation


# static fields
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.google.android.apps.books.extra.ACCOUNT"

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "com.google.android.apps.books.extra.RESULT_RECEIVER"

.field public static final RESULT_NETWORK_ERROR:I = 0x2

.field public static final RESULT_SERVER_ERROR:I = 0x3

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final RESULT_UNAUTHORIZED_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ContentFetchService"

.field private static sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

.field private mManifestFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mMyEbooksFetcher:Lcom/google/android/apps/books/sync/MyEbooksFetcher;

.field private mMyEbooksVolumesFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mPageFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mResourceFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

.field private final mSectionContentCallbackLock:Ljava/lang/Object;

.field private mSectionFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mVolumeCoverFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

.field private mVolumeFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    const-string v0, "ContentFetchService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallbackLock:Ljava/lang/Object;

    .line 575
    new-instance v0, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;-><init>(Lcom/google/android/apps/books/service/ContentFetchService;)V

    iput-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mBinder:Landroid/os/IBinder;

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->setIntentRedelivery(Z)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/service/ContentFetchService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    return-object v0
.end method

.method private static buildResultBundle(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2
    .parameter "intent"

    .prologue
    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 412
    return-object v0
.end method

.method public static createFetchIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/os/ResultReceiver;Landroid/accounts/Account;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "receiver"
    .parameter "account"

    .prologue
    .line 135
    const-string v1, "missing context"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "missing uri"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "missing receiver"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "missing account"

    invoke-static {p3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.books.action.FETCH"

    const-class v2, Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-direct {v0, v1, p1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, service:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.books.extra.RESULT_RECEIVER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    const-string v1, "com.google.android.apps.books.extra.ACCOUNT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    return-object v0
.end method

.method public static createReleaseIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 153
    const-string v0, "missing context"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "missing uri"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.books.action.RELEASE_ACCESS"

    const-class v2, Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-direct {v0, v1, p1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static declared-synchronized newPullParserLocked()Lorg/xmlpull/v1/XmlPullParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 122
    const-class v0, Lcom/google/android/apps/books/service/ContentFetchService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/apps/books/service/ContentFetchService;->sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v1, :cond_0

    .line 123
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/books/service/ContentFetchService;->sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 125
    :cond_0
    sget-object v1, Lcom/google/android/apps/books/service/ContentFetchService;->sFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private onHandleFetchIntent(Landroid/content/Intent;Landroid/accounts/Account;)V
    .locals 9
    .parameter "intent"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 312
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 313
    .local v4, uri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v0

    .line 314
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 399
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to fetch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 316
    :sswitch_0
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, volumeId:Ljava/lang/String;
    invoke-virtual {p0, v5, p2, v6}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 402
    :goto_0
    return-void

    .line 323
    .end local v5           #volumeId:Ljava/lang/String;
    :sswitch_1
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 324
    .restart local v5       #volumeId:Ljava/lang/String;
    invoke-virtual {p0, v5, p2, v6}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 325
    invoke-virtual {p0, v5, p2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeCover(Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_0

    .line 331
    .end local v5           #volumeId:Ljava/lang/String;
    :sswitch_2
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 332
    .restart local v5       #volumeId:Ljava/lang/String;
    invoke-virtual {p0, v5, p2, v6}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 333
    invoke-virtual {p0, v5, p2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_0

    .line 339
    .end local v5           #volumeId:Ljava/lang/String;
    :sswitch_3
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .restart local v5       #volumeId:Ljava/lang/String;
    invoke-virtual {p0, v5, p2, v6}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 341
    invoke-virtual {p0, v5, p2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_0

    .line 346
    .end local v5           #volumeId:Ljava/lang/String;
    :sswitch_4
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 347
    .restart local v5       #volumeId:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, sectionId:Ljava/lang/String;
    invoke-virtual {p0, v5, p2, v6}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 349
    invoke-virtual {p0, v5, p2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 350
    invoke-virtual {p0, v5, v3, p2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureSectionContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_0

    .line 358
    .end local v3           #sectionId:Ljava/lang/String;
    .end local v5           #volumeId:Ljava/lang/String;
    :sswitch_5
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 364
    :sswitch_6
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 368
    :sswitch_7
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 369
    .restart local v5       #volumeId:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, resId:Ljava/lang/String;
    invoke-virtual {p0, v5, p2, v6}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 371
    invoke-virtual {p0, v5, p2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 372
    invoke-virtual {p0, v5, v2, p2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureResourceContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_0

    .line 377
    .end local v2           #resId:Ljava/lang/String;
    .end local v5           #volumeId:Ljava/lang/String;
    :sswitch_8
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 378
    .restart local v5       #volumeId:Ljava/lang/String;
    invoke-virtual {p0, v5, p2, v6}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 379
    invoke-virtual {p0, v5, p2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_0

    .line 386
    .end local v5           #volumeId:Ljava/lang/String;
    :sswitch_9
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 390
    :sswitch_a
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 391
    .restart local v5       #volumeId:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, pageId:Ljava/lang/String;
    invoke-virtual {p0, v5, p2, v6}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 393
    invoke-virtual {p0, v5, p2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 394
    invoke-virtual {p0, v5, v1, p2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensurePageContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_0

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x96 -> :sswitch_1
        0x97 -> :sswitch_1
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_4
        0xcd -> :sswitch_3
        0xce -> :sswitch_3
        0x12c -> :sswitch_5
        0x12d -> :sswitch_6
        0x12e -> :sswitch_7
        0x190 -> :sswitch_8
        0x191 -> :sswitch_9
        0x192 -> :sswitch_a
    .end sparse-switch
.end method

.method private onHandleReleaseAccessIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const-string v8, "ContentFetchService"

    .line 288
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/books/util/GservicesHelper;->shouldReleaseAccessLock(Landroid/content/ContentResolver;)Z

    move-result v3

    .line 289
    .local v3, releaseLock:Z
    if-nez v3, :cond_1

    .line 290
    const-string v6, "ContentFetchService"

    const/4 v6, 0x3

    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 291
    const-string v6, "ContentFetchService"

    const-string v6, "Gservices configured not to release access lock"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 297
    .local v4, uri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract;->match(Landroid/net/Uri;)I

    move-result v2

    .line 298
    .local v2, match:I
    const/16 v6, 0x259

    if-eq v2, v6, :cond_2

    .line 299
    const-string v6, "ContentFetchService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad match for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :cond_2
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->getAccount(Landroid/net/Uri;)Landroid/accounts/Account;

    move-result-object v0

    .line 303
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, volumeId:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v0, v5}, Lcom/google/android/apps/books/service/ContentFetchService;->releaseAccessLock(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, e:Ljava/io/IOException;
    const-string v6, "ContentFetchService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error releasing access for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static resultCodeToString(I)Ljava/lang/String;
    .locals 3
    .parameter "resultCode"

    .prologue
    .line 269
    packed-switch p0, :pswitch_data_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown result code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_0
    const-string v0, "Caller probably thinks there was an error, but there wasn\'t"

    invoke-static {v0}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;)V

    .line 272
    const-string v0, "no error"

    .line 278
    :goto_0
    return-object v0

    .line 274
    :pswitch_1
    const-string v0, "network error"

    goto :goto_0

    .line 276
    :pswitch_2
    const-string v0, "server error"

    goto :goto_0

    .line 278
    :pswitch_3
    const-string v0, "unauthorized"

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public ensureMyEbooksCollection(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mMyEbooksFetcher:Lcom/google/android/apps/books/sync/MyEbooksFetcher;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->ensureMyEbooksCollection(Landroid/accounts/Account;)V

    .line 420
    return-void
.end method

.method public ensureMyEbooksVolumes(Landroid/accounts/Account;Z)V
    .locals 4
    .parameter "account"
    .parameter "forceUpdate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v2, 0x7

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->dirUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 428
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mMyEbooksVolumesFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0x2c7

    invoke-virtual {v1, v0, p1, v2, p2}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 429
    return-void
.end method

.method public ensurePageContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 5
    .parameter "volumeId"
    .parameter "pageId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 473
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 474
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mPageFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0x192

    invoke-virtual {v1, v0, p3, v2, v4}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 477
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 479
    return-void
.end method

.method public ensureResourceContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 5
    .parameter "volumeId"
    .parameter "resId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 463
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 464
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mResourceFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0x12e

    invoke-virtual {v1, v0, p3, v2, v4}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 467
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 469
    return-void
.end method

.method public ensureSectionContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 5
    .parameter "volumeId"
    .parameter "sectionId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 453
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 454
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0xca

    invoke-virtual {v1, v0, p3, v2, v4}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 457
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 459
    return-void
.end method

.method public ensureVolumeCover(Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 4
    .parameter "volumeId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 439
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 440
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mVolumeCoverFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0x96

    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 443
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 444
    return-void
.end method

.method public ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 4
    .parameter "volumeId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 448
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mManifestFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 449
    return-void
.end method

.method public ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V
    .locals 3
    .parameter "volumeId"
    .parameter "account"
    .parameter "forceUpdate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 434
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mVolumeFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, p2, v2, p3}, Lcom/google/android/apps/books/sync/FetchDispatcher;->ensure(Landroid/net/Uri;Landroid/accounts/Account;IZ)Z

    .line 435
    return-void
.end method

.method public fetchHighlightedPageContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;
    .locals 10
    .parameter "volumeId"
    .parameter "pageId"
    .parameter "account"
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    const-string v1, "missing volumeId"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v1, "missing pageId"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v1, "missing account"

    invoke-static {p3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 494
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-virtual {v1, p3, p1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v4

    .line 495
    .local v4, data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    const/4 v9, 0x0

    .line 497
    .local v9, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    const-string v1, "ContentFetchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG fetchHighlightedPageContent for query="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 499
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v6

    .line 500
    .local v6, config:Lcom/google/android/apps/books/util/Config;
    iget-object v7, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    iget-object v8, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/books/sync/PageContentFetcher;->fetchPageContent(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/Config;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/util/SessionKeyFactory;)Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 505
    new-instance v1, Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    iget-object v3, v4, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/books/service/ContentFetchService$EncryptedContent;-><init>(Lcom/google/android/apps/books/service/ContentFetchService;[BLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    if-eqz v9, :cond_0

    .line 508
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_0
    return-object v1

    .line 507
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v6           #config:Lcom/google/android/apps/books/util/Config;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_1

    .line 508
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_1
    throw v1
.end method

.method public getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 29

    .prologue
    .line 165
    invoke-super/range {p0 .. p0}, Landroid/app/IntentService;->onCreate()V

    .line 167
    move-object/from16 v28, p0

    .line 168
    .local v28, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 170
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getApplication()Landroid/app/Application;

    move-result-object v26

    check-cast v26, Lcom/google/android/apps/books/app/BooksApplication;

    .line 171
    .local v26, app:Lcom/google/android/apps/books/app/BooksApplication;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/apps/books/app/BooksApplication;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 172
    const-string v4, "connectivity"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/service/ContentFetchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 175
    .local v13, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 176
    .local v7, metrics:Landroid/util/DisplayMetrics;
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/books/util/EncryptionUtils;->generateAppInfo(Landroid/content/Context;)[B

    move-result-object v27

    .line 178
    .local v27, appInfo:[B
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/apps/books/app/BooksApplication;->getFileStorageManager()Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v9

    .line 180
    .local v9, fileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;
    new-instance v25, Lcom/google/android/apps/books/sync/SyncAccountsState;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/SyncAccountsState;-><init>(Landroid/content/Context;)V

    .line 182
    .local v25, accountState:Lcom/google/android/apps/books/sync/SyncAccountsState;
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v10

    .line 185
    .local v10, config:Lcom/google/android/apps/books/util/Config;
    new-instance v4, Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v6

    move-object v2, v5

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/util/SessionKeyFactory;-><init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;[B)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    .line 187
    new-instance v4, Lcom/google/android/apps/books/sync/MyEbooksFetcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v6

    move-object v2, v5

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;-><init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/sync/SyncAccountsState;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/service/ContentFetchService;->mMyEbooksFetcher:Lcom/google/android/apps/books/sync/MyEbooksFetcher;

    .line 188
    new-instance v4, Lcom/google/android/apps/books/sync/FetchDispatcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mMyEbooksFetcher:Lcom/google/android/apps/books/sync/MyEbooksFetcher;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/service/ContentFetchService;->mMyEbooksVolumesFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 189
    new-instance v4, Lcom/google/android/apps/books/sync/FetchDispatcher;

    new-instance v5, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object v8, v0

    invoke-direct {v5, v6, v8}, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;-><init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;)V

    invoke-direct {v4, v5}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/service/ContentFetchService;->mVolumeFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/common/BooksContext;

    invoke-interface {v4}, Lcom/google/android/apps/books/common/BooksContext;->getVolumeCoverFetchDispatcher()Lcom/google/android/apps/books/sync/FetchDispatcher;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/service/ContentFetchService;->mVolumeCoverFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 194
    new-instance v4, Lcom/google/android/apps/books/sync/FetchDispatcher;

    new-instance v5, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object v8, v0

    invoke-direct {v5, v8, v6, v10}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;-><init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/Config;)V

    invoke-direct {v4, v5}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/service/ContentFetchService;->mManifestFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 197
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/apps/books/service/ContentFetchService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 202
    .local v18, decryptResources:Z
    new-instance v11, Lcom/google/android/apps/books/sync/FetchDispatcher;

    new-instance v4, Lcom/google/android/apps/books/sync/SectionContentFetcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object v8, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/books/sync/SectionContentFetcher;-><init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Landroid/util/DisplayMetrics;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;)V

    invoke-direct {v11, v4}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;)V

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 204
    new-instance v4, Lcom/google/android/apps/books/sync/FetchDispatcher;

    new-instance v11, Lcom/google/android/apps/books/sync/ResourceContentFetcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object v15, v0

    move-object v14, v6

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v18}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;-><init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/net/ConnectivityManager;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;Z)V

    invoke-direct {v4, v11}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/service/ContentFetchService;->mResourceFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 207
    new-instance v4, Lcom/google/android/apps/books/sync/FetchDispatcher;

    new-instance v19, Lcom/google/android/apps/books/sync/PageContentFetcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v22, v0

    move-object/from16 v21, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    invoke-direct/range {v19 .. v24}, Lcom/google/android/apps/books/sync/PageContentFetcher;-><init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;)V

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/FetchDispatcher;-><init>(Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/service/ContentFetchService;->mPageFetcher:Lcom/google/android/apps/books/sync/FetchDispatcher;

    .line 209
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const-string v8, "Problem during Action.FETCH request"

    const-string v7, "ContentFetchService"

    .line 213
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, action:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v5, "com.google.android.apps.books.action.RELEASE_ACCESS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 221
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/service/ContentFetchService;->onHandleReleaseAccessIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    :cond_1
    const-string v5, "com.google.android.apps.books.action.FETCH"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 226
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to handle action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 229
    :cond_2
    const-string v5, "com.google.android.apps.books.extra.RESULT_RECEIVER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 230
    .local v3, receiver:Landroid/os/ResultReceiver;
    const-string v5, "com.google.android.apps.books.extra.ACCOUNT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 232
    .local v0, account:Landroid/accounts/Account;
    const-string v5, "Fetch requests must include receiver"

    invoke-static {v3, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v5, "Fetch requests must include account"

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->onHandleFetchIntent(Landroid/content/Intent;Landroid/accounts/Account;)V

    .line 237
    const-string v5, "ContentFetchService"

    const-string v6, "onHandleFetchIntent(), sending RESULT_SUCCESS"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v5, 0x1

    invoke-static {p1}, Lcom/google/android/apps/books/service/ContentFetchService;->buildResultBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 242
    .local v2, e:Lorg/apache/http/client/HttpResponseException;
    const-string v5, "ContentFetchService"

    const-string v5, "Problem during Action.FETCH request"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    invoke-virtual {v2}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v4

    .line 245
    .local v4, statusCode:I
    const/16 v5, 0x191

    if-ne v4, v5, :cond_3

    .line 246
    const/4 v5, 0x4

    invoke-static {p1}, Lcom/google/android/apps/books/service/ContentFetchService;->buildResultBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 248
    :cond_3
    const/4 v5, 0x3

    invoke-static {p1}, Lcom/google/android/apps/books/service/ContentFetchService;->buildResultBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 251
    .end local v2           #e:Lorg/apache/http/client/HttpResponseException;
    .end local v4           #statusCode:I
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 253
    .local v2, e:Ljava/io/IOException;
    const-string v5, "ContentFetchService"

    const-string v5, "Problem during Action.FETCH request"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    const/4 v5, 0x2

    invoke-static {p1}, Lcom/google/android/apps/books/service/ContentFetchService;->buildResultBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public registerSectionContentCallback(Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    if-eq v1, p1, :cond_0

    .line 539
    const-string v1, "ContentFetchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " overriding existing callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    .line 542
    monitor-exit v0

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseAccessLock(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "ContentFetchService"

    .line 517
    const-string v4, "ContentFetchService"

    const/4 v4, 0x3

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 518
    const-string v4, "ContentFetchService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Releasing access lock for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v1

    .line 522
    .local v1, data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    invoke-static {}, Lcom/google/android/apps/books/util/OceanUris;->getMyVolumesUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 523
    .local v3, uriBuilder:Landroid/net/Uri$Builder;
    const-string v4, "access"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 524
    const-string v4, "cp-ksver"

    iget-object v5, v1, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 526
    invoke-static {}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->newInstance()Lcom/google/android/apps/books/util/OceanXmlBuilder;

    move-result-object v0

    .line 527
    .local v0, builder:Lcom/google/android/apps/books/util/OceanXmlBuilder;
    invoke-virtual {v0, p2}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->startVolumeEntry(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->endEntry()V

    .line 529
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->buildPost(Landroid/accounts/Account;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 531
    .local v2, post:Lorg/apache/http/client/methods/HttpPost;
    iget-object v4, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xc9

    aput v7, v5, v6

    invoke-virtual {v4, v2, p1, v5}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    .line 532
    return-void
.end method

.method public requestSectionContent(Landroid/net/Uri;Landroid/accounts/Account;)V
    .locals 3
    .parameter "uri"
    .parameter "account"

    .prologue
    .line 569
    const-string v1, "Must call registerReadingStateCallback()"

    iget-object v2, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    invoke-static {v1, v2}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/ContentFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, v1, p2, p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->newInstance(Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/net/Uri;)Lcom/google/android/apps/books/model/SectionContentFactory;

    move-result-object v0

    .line 572
    .local v0, factory:Lcom/google/android/apps/books/model/SectionContentFactory;
    new-instance v1, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;-><init>(Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/SectionContentFactory;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/service/ContentFetchService$SectionContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 573
    return-void
.end method

.method public unregisterReadingStateCallback(Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    if-ne p1, v1, :cond_0

    .line 548
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    .line 553
    :goto_0
    monitor-exit v0

    .line 554
    return-void

    .line 550
    :cond_0
    const-string v1, "ContentFetchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to unregister callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but the registered callback is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/service/ContentFetchService;->mSectionContentCallback:Lcom/google/android/apps/books/service/ContentFetchService$SectionContentCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
