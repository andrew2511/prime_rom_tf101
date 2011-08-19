.class public Lcom/google/android/apps/books/model/SectionContent;
.super Ljava/lang/Object;
.source "SectionContent.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/model/SectionContent$PositionSource;,
        Lcom/google/android/apps/books/model/SectionContent$PageQuery;,
        Lcom/google/android/apps/books/model/SectionContent$SectionQuery;,
        Lcom/google/android/apps/books/model/SectionContent$ChapterQuery;,
        Lcom/google/android/apps/books/model/SectionContent$VolumeQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SectionContent"


# instance fields
.field private final mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

.field private final mAccount:Landroid/accounts/Account;

.field private final mChaptersCursor:Landroid/database/Cursor;

.field private final mLastAccess:Ljava/lang/Long;

.field private final mPagePositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPagesCursor:Landroid/database/Cursor;

.field private final mPosition:Ljava/lang/String;

.field private final mPositionSource:I

.field private final mSectionId:Ljava/lang/String;

.field private final mSectionsCursor:Landroid/database/Cursor;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeCursor:Landroid/database/Cursor;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/model/SectionContentFactory;)V
    .locals 4
    .parameter "factory"

    .prologue
    const/4 v3, 0x1

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "missing account"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mAccount:Landroid/accounts/Account;

    .line 515
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "missing uri"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mUri:Landroid/net/Uri;

    .line 516
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getVolumeId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "missing/empty volumeId"

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeId:Ljava/lang/String;

    .line 518
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getSectionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getPosition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "missing/empty position"

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPosition:Ljava/lang/String;

    .line 521
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getLastAccess()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mLastAccess:Ljava/lang/Long;

    .line 522
    new-instance v1, Lcom/google/android/apps/books/util/RecordingCursor;

    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getVolumeCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v2, "missing volumeCursor"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/util/RecordingCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeCursor:Landroid/database/Cursor;

    .line 524
    new-instance v1, Lcom/google/android/apps/books/util/RecordingCursor;

    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getChaptersCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v2, "missing chaptersCursor"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/util/RecordingCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    .line 526
    new-instance v1, Lcom/google/android/apps/books/util/RecordingCursor;

    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getSectionsCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v2, "missing sectionsCursor"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/util/RecordingCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    .line 528
    new-instance v1, Lcom/google/android/apps/books/util/RecordingCursor;

    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getPagesCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v2, "missing pagesCursor"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/util/RecordingCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    .line 530
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getPositionSource()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPositionSource:I

    .line 531
    const-string v0, "Bad positionSource"

    iget v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPositionSource:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPositionSource:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPositionSource:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 535
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getPageIdToPosition()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagePositionMap:Ljava/util/Map;

    .line 536
    invoke-virtual {p1}, Lcom/google/android/apps/books/model/SectionContentFactory;->getAccess()Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 537
    return-void

    .line 531
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPageOrder(Ljava/lang/String;)I
    .locals 3
    .parameter "pageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    monitor-enter v0

    .line 459
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/SectionContent;->moveToPageOrThrowLocked(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 461
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private moveToFirstPossibleSectionIdLocked(Ljava/lang/String;)V
    .locals 4
    .parameter "position"

    .prologue
    .line 470
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, startPosition:Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/books/model/SectionContent;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 479
    .end local v0           #startPosition:Ljava/lang/String;
    :goto_0
    return-void

    .line 477
    :cond_1
    const-string v1, "SectionContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not appear to be in book?!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 184
    const-string v0, "SectionContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing section content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 189
    return-void
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/model/SectionContent;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "position1"
    .parameter "position2"

    .prologue
    .line 448
    invoke-static {p1}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, pageId1:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, pageId2:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/model/SectionContent;->getPageOrder(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 452
    .local v0, order1:Ljava/lang/Integer;
    invoke-direct {p0, v3}, Lcom/google/android/apps/books/model/SectionContent;->getPageOrder(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 454
    .local v1, order2:Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v4

    return v4
.end method

.method public getAccess()Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    return-object v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getChapterId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getChapterTitleForPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "pageId"

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, chapterId:Ljava/lang/String;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    :try_start_3
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v2

    .line 234
    .end local v0           #chapterId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 231
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 239
    .restart local v0       #chapterId:Ljava/lang/String;
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public getChaptersCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mChaptersCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getFirstPossibleChapterId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "position"

    .prologue
    .line 489
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    monitor-enter v1

    .line 491
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/model/SectionContent;->moveToFirstPossibleSectionIdLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v2, "SectionContent"

    const-string v3, "Invalid position, defaulting to start of book"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0

    .line 497
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getLastAccess()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mLastAccess:Ljava/lang/Long;

    return-object v0
.end method

.method public getPageContentStatus()I
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getPageContentStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPageContentStatus(Ljava/lang/String;)I
    .locals 2
    .parameter "pageId"

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/SectionContent;->moveToPageOrThrowLocked(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPosition:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageIdAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getPageIdAfter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageIdAfter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pageId"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    monitor-enter v0

    .line 369
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/SectionContent;->moveToPageOrThrowLocked(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPageIdBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getPageIdBefore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageIdBefore(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pageId"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    monitor-enter v0

    .line 380
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/SectionContent;->moveToPageOrThrowLocked(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getPageTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pageId"

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 390
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 392
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 389
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPagesCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionSource()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mPositionSource:I

    return v0
.end method

.method public getSectionContentStatus()I
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getSectionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionIdAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getSectionIdAfter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSectionIdAfter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sectionId"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSectionIdBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getSectionIdBefore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSectionIdBefore(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sectionId"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    monitor-enter v0

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSectionStartPosition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sectionId"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSectionsCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getStartPositionForSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/model/SectionContent;->getSectionStartPosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVolumeCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getVolumeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method public isContentAvailable(ZZ)Z
    .locals 5
    .parameter "needSectionContent"
    .parameter "needPageContent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 320
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->getSectionContentStatus()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v1, v3

    .line 322
    .local v1, sectionBad:Z
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContent;->getPageContentStatus()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v0, v3

    .line 323
    .local v0, pageBad:Z
    :goto_1
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    move v2, v3

    :goto_2
    return v2

    .end local v0           #pageBad:Z
    .end local v1           #sectionBad:Z
    :cond_0
    move v1, v4

    .line 320
    goto :goto_0

    .restart local v1       #sectionBad:Z
    :cond_1
    move v0, v4

    .line 322
    goto :goto_1

    .restart local v0       #pageBad:Z
    :cond_2
    move v2, v4

    .line 323
    goto :goto_2
.end method

.method public moveToPage(Ljava/lang/String;)Z
    .locals 3
    .parameter "pageId"

    .prologue
    .line 359
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagePositionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 360
    .local v0, pagePosition:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPagesCursor:Landroid/database/Cursor;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public moveToPageOrThrowLocked(Ljava/lang/String;)V
    .locals 3
    .parameter "pageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/model/SectionContent;->moveToPage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in column page_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": vol "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", section "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mSectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/model/SectionContent;->mPositionSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
