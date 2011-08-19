.class public Lcom/google/android/apps/books/model/SectionContentFactory;
.super Ljava/lang/Object;
.source "SectionContentFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SectionContentFactory"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mChapterId:Ljava/lang/String;

.field private mChaptersCursor:Landroid/database/Cursor;

.field private mLastAccess:Ljava/lang/Long;

.field private mPageIdToPosition:Ljava/util/Map;
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

.field private mPagesCursor:Landroid/database/Cursor;

.field private mPosition:Ljava/lang/String;

.field private mPositionSource:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSectionId:Ljava/lang/String;

.field private mSectionsCursor:Landroid/database/Cursor;

.field private final mService:Lcom/google/android/apps/books/service/FetchService;

.field private final mUri:Landroid/net/Uri;

.field private mVolumeCursor:Landroid/database/Cursor;

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "service"
    .parameter "resolver"
    .parameter "account"
    .parameter "uri"
    .parameter "volumeId"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPositionSource:I

    .line 84
    const-string v0, "missing service"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/service/FetchService;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mService:Lcom/google/android/apps/books/service/FetchService;

    .line 85
    const-string v0, "missing resolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    .line 86
    const-string v0, "missing account"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    .line 87
    const-string v0, "missing uri"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mUri:Landroid/net/Uri;

    .line 88
    const-string v0, "missing/empty volumeId"

    invoke-static {p5, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private buildPageIdToPosition()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 457
    .local v1, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, position:I
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    add-int/lit8 v0, v0, 0x1

    .line 462
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    .end local v0           #position:I
    :cond_1
    return-object v1
.end method

.method private chaptersQuery()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 326
    .local v1, chaptersDirUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/model/SectionContent$ChapterQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "chapter_order ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static extractChapterId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, type:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.chapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getChapterId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 190
    :goto_0
    return-object v1

    .line 187
    :cond_0
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.section"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 192
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static extractPosition(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, type:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.section"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.chapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    const/4 v1, 0x0

    .line 173
    :goto_0
    return-object v1

    .line 172
    :cond_1
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/common/Position;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 175
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static extractSectionId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, type:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.chapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    .line 154
    :cond_1
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.section"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static extractVolumeId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, type:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 132
    :cond_0
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.section"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 134
    :cond_1
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.chapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 136
    :cond_2
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 139
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getFirstPageIdForVolume()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No pages in volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPositionForSection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSectionIdForPosition(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "position"

    .prologue
    .line 383
    invoke-static {p1}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, pageId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPageIdToPosition:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 385
    .local v2, pagePosition:Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 386
    new-instance v3, Ljava/util/NoSuchElementException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in column page_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 388
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 389
    .local v0, moved:Z
    const-string v3, "Move failed"

    invoke-static {v3, v0}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 390
    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getStartSectionIdForChapter()Ljava/lang/String;
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChaptersCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChapterId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueOrThrowLocked(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChaptersCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStartSectionIdForVolume()Ljava/lang/String;
    .locals 5

    .prologue
    .line 345
    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 346
    .local v1, moved:Z
    const-string v3, "Move failed"

    invoke-static {v3, v1}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 347
    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, sectionOrder:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-static {v3, v4, v2}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueLocked(Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v0

    .line 351
    .local v0, found:Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionsCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private maybeSetToSavedReadingPosition()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 295
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "position"

    aput-object v0, v2, v5

    const-string v0, "last_access"

    aput-object v0, v2, v4

    .line 296
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->buildItemUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 297
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 299
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 317
    :goto_0
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, position:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 307
    :cond_1
    :try_start_2
    invoke-direct {p0, v8}, Lcom/google/android/apps/books/model/SectionContentFactory;->getSectionIdForPosition(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    invoke-direct {p0, v8}, Lcom/google/android/apps/books/model/SectionContentFactory;->setPosition(Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mLastAccess:Ljava/lang/Long;

    .line 310
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPositionSource:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 315
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 312
    .local v7, e:Ljava/util/NoSuchElementException;
    :try_start_3
    const-string v0, "SectionContentFactory"

    const-string v3, "Bad saved reading position.  Content changed?"

    invoke-static {v0, v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 315
    .end local v7           #e:Ljava/util/NoSuchElementException;
    .end local v8           #position:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static newInstance(Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/net/Uri;)Lcom/google/android/apps/books/model/SectionContentFactory;
    .locals 10
    .parameter "service"
    .parameter "resolver"
    .parameter "account"
    .parameter "uri"

    .prologue
    .line 99
    invoke-static {p1, p3}, Lcom/google/android/apps/books/model/SectionContentFactory;->extractVolumeId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, volumeId:Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/google/android/apps/books/model/SectionContentFactory;->extractSectionId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, sectionId:Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/google/android/apps/books/model/SectionContentFactory;->extractPosition(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, position:Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/google/android/apps/books/model/SectionContentFactory;->extractChapterId(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, chapterId:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/books/model/SectionContentFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/model/SectionContentFactory;-><init>(Lcom/google/android/apps/books/service/FetchService;Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/net/Uri;Ljava/lang/String;)V

    .line 106
    .local v0, factory:Lcom/google/android/apps/books/model/SectionContentFactory;
    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, type:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.volume"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    :goto_0
    return-object v0

    .line 109
    :cond_0
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.section"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-direct {v0, v8}, Lcom/google/android/apps/books/model/SectionContentFactory;->setSectionId(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.chapter"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-direct {v0, v6}, Lcom/google/android/apps/books/model/SectionContentFactory;->setChapterId(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    const-string v1, "vnd.android.cursor.item/com.google.android.apps.books.page"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    invoke-direct {v0, v7}, Lcom/google/android/apps/books/model/SectionContentFactory;->setPosition(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private pagesQuery()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 338
    .local v1, pagesUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/model/SectionContent$PageQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "page_order ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private sectionsQuery()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 331
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 332
    .local v1, sectionsUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/model/SectionContent$SectionQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "section_order ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private setChapterId(Ljava/lang/String;)V
    .locals 0
    .parameter "chapterId"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChapterId:Ljava/lang/String;

    .line 202
    return-void
.end method

.method private setPosition(Ljava/lang/String;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 208
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPosition:Ljava/lang/String;

    .line 209
    return-void

    .line 208
    :cond_0
    invoke-static {p1}, Lcom/google/android/apps/books/common/Position;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setSectionId(Ljava/lang/String;)V
    .locals 0
    .parameter "sectionId"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionId:Ljava/lang/String;

    .line 198
    return-void
.end method

.method private tryMakeSectionContent()Lcom/google/android/apps/books/model/SectionContent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 242
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mService:Lcom/google/android/apps/books/service/FetchService;

    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/apps/books/service/FetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 243
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mService:Lcom/google/android/apps/books/service/FetchService;

    iget-object v3, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/books/service/FetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 247
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->volumeQuery()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeCursor:Landroid/database/Cursor;

    .line 248
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->chaptersQuery()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChaptersCursor:Landroid/database/Cursor;

    .line 249
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->sectionsQuery()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionsCursor:Landroid/database/Cursor;

    .line 250
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->pagesQuery()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    .line 251
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->buildPageIdToPosition()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPageIdToPosition:Ljava/util/Map;

    .line 253
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionId:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChapterId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->getStartSectionIdForChapter()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionId:Ljava/lang/String;

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionId:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPosition:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->maybeSetToSavedReadingPosition()V

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionId:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPosition:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 262
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->getStartSectionIdForVolume()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionId:Ljava/lang/String;

    .line 263
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionId:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 264
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->getFirstPageIdForVolume()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/model/SectionContentFactory;->setPosition(Ljava/lang/String;)V

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPosition:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v6

    .line 271
    .local v0, pageIdDefined:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionId:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v1, v6

    .line 272
    .local v1, sectionIdDefined:Z
    :goto_1
    const-string v2, "Exactly one of pageId and sectionId must be defined"

    if-eq v0, v1, :cond_6

    move v3, v6

    :goto_2
    invoke-static {v2, v3}, Lcom/google/android/apps/books/util/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 275
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPosition:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 276
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPosition:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/model/SectionContentFactory;->getSectionIdForPosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionId:Ljava/lang/String;

    .line 277
    iget v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPositionSource:I

    if-eq v2, v6, :cond_3

    .line 278
    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPositionSource:I

    .line 287
    :cond_3
    :goto_3
    new-instance v2, Lcom/google/android/apps/books/model/SectionContent;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/model/SectionContent;-><init>(Lcom/google/android/apps/books/model/SectionContentFactory;)V

    return-object v2

    .end local v0           #pageIdDefined:Z
    .end local v1           #sectionIdDefined:Z
    :cond_4
    move v0, v5

    .line 270
    goto :goto_0

    .restart local v0       #pageIdDefined:Z
    :cond_5
    move v1, v5

    .line 271
    goto :goto_1

    .restart local v1       #sectionIdDefined:Z
    :cond_6
    move v3, v5

    .line 272
    goto :goto_2

    .line 280
    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionId:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 281
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->getPositionForSection()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/model/SectionContentFactory;->setPosition(Ljava/lang/String;)V

    .line 282
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPositionSource:I

    goto :goto_3

    .line 284
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Undefined reading position. programming error?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private volumeQuery()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 321
    .local v1, volumeUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/model/SectionContent$VolumeQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccess()Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .locals 6

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->getVolumeCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 469
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    const/4 v5, 0x5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, viewability:Ljava/lang/String;
    const/4 v5, 0x6

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, openAccess:Ljava/lang/String;
    const/4 v5, 0x4

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, buyUrl:Ljava/lang/String;
    invoke-static {v4, v3, v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->computeAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    move-result-object v0

    .line 474
    .local v0, access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    return-object v0
.end method

.method getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method getChaptersCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChaptersCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getLastAccess()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mLastAccess:Ljava/lang/Long;

    return-object v0
.end method

.method getPageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPosition:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPosition:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageIdToPosition()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPageIdToPosition:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getPagesCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPosition:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPosition:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/books/common/Position;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositionSource()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPositionSource:I

    return v0
.end method

.method getSectionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionId:Ljava/lang/String;

    return-object v0
.end method

.method getSectionsCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method getVolumeCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method getVolumeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method public newSectionContent()Lcom/google/android/apps/books/model/SectionContent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, content:Lcom/google/android/apps/books/model/SectionContent;
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/books/model/SectionContentFactory;->tryMakeSectionContent()Lcom/google/android/apps/books/model/SectionContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 221
    if-nez v0, :cond_4

    .line 223
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChaptersCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChaptersCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 233
    iget-object v1, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_3
    iput-object v3, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPageIdToPosition:Ljava/util/Map;

    :cond_4
    return-object v0

    .line 221
    :catchall_0
    move-exception v1

    if-nez v0, :cond_9

    .line 223
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_5

    .line 224
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mVolumeCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_5
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChaptersCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_6

    .line 227
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mChaptersCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionsCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_7

    .line 230
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mSectionsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_8

    .line 233
    iget-object v2, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPagesCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_8
    iput-object v3, p0, Lcom/google/android/apps/books/model/SectionContentFactory;->mPageIdToPosition:Ljava/util/Map;

    :cond_9
    throw v1
.end method
