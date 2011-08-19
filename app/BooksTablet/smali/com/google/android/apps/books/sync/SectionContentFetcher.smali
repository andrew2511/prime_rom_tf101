.class public Lcom/google/android/apps/books/sync/SectionContentFetcher;
.super Ljava/lang/Object;
.source "SectionContentFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;


# static fields
.field static final CLAMP_SCREEN_WIDTH:I = 0x398
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PROFILE_FETCH:Z = false

.field private static final TAG:Ljava/lang/String; = "SectionContentFetcher"


# instance fields
.field private final mConfig:Lcom/google/android/apps/books/util/Config;

.field private final mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

.field private final mGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Landroid/util/DisplayMetrics;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;)V
    .locals 1
    .parameter "responseGetter"
    .parameter "resolver"
    .parameter "metrics"
    .parameter "keyFactory"
    .parameter "fsm"
    .parameter "config"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "missing responseGetter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 87
    const-string v0, "missing resolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 88
    const-string v0, "missing metrics"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mMetrics:Landroid/util/DisplayMetrics;

    .line 89
    const-string v0, "missing keyFactory"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/SessionKeyFactory;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    .line 90
    const-string v0, "missing fileStorageManager"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/FileStorageManager;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 91
    const-string v0, "missing config"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Config;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 92
    return-void
.end method

.method private static buildSectionUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "sectionContentUri"

    .prologue
    .line 431
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, volumeId:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, sectionId:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static decodeQuotedPrintable([B)[B
    .locals 3
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 408
    .local v1, input:Ljava/io/ByteArrayInputStream;
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 409
    .local v0, decodedInput:Ljava/io/InputStream;
    invoke-static {v0}, Lcom/google/android/apps/books/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    return-object v2
.end method

.method private static findBoundary(Lorg/apache/http/Header;)[B
    .locals 9
    .parameter "contentType"

    .prologue
    const-string v8, "boundary=\""

    .line 419
    const-string v1, "boundary=\""

    .line 420
    .local v1, MIME_BOUNDARY_START:Ljava/lang/String;
    const-string v0, "\""

    .line 422
    .local v0, MIME_BOUNDARY_END:Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, value:Ljava/lang/String;
    const-string v6, "boundary=\""

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 424
    .local v4, start:I
    const-string v6, "\""

    const-string v7, "boundary=\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 426
    .local v3, end:I
    const-string v6, "boundary=\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, boundary:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeString(Ljava/lang/String;)[B

    move-result-object v6

    return-object v6
.end method

.method public static parsePages(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 7
    .parameter "volumeId"
    .parameter "pages"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 257
    .local p2, batch:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v2, v0

    .line 258
    .local v2, length:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 259
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 263
    .local v4, page:Lorg/json/JSONObject;
    const-string v0, "pid"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, pageId:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 265
    .local v0, pageUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 268
    .local v3, oper:Landroid/content/ContentProviderOperation$Builder;
    const-string v0, "flags"

    .end local v0           #pageUri:Landroid/net/Uri;
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, flags:Ljava/lang/String;
    const-string v5, "16"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 270
    .local v0, forbidden:Z
    const-string v5, "src"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, url:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 274
    const-string v0, "content_status"

    .end local v0           #forbidden:Z
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v5           #url:Ljava/lang/String;
    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 284
    :goto_2
    const-string v0, "cc_box"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 285
    .local v0, ccbox:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 286
    const-string v4, "cc_box_x"

    .end local v4           #page:Lorg/json/JSONObject;
    const-string v5, "X"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 287
    const-string v4, "cc_box_y"

    const-string v5, "Y"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 288
    const-string v4, "cc_box_w"

    const-string v5, "W"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 289
    const-string v4, "cc_box_h"

    const-string v5, "H"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .end local v0           #ccbox:Lorg/json/JSONObject;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 292
    :cond_0
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto/16 :goto_1

    .line 257
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #oper:Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_0

    .line 275
    .local v0, forbidden:Z
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #oper:Landroid/content/ContentProviderOperation$Builder;
    .restart local v4       #page:Lorg/json/JSONObject;
    .restart local v5       #url:Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .end local v0           #forbidden:Z
    if-nez v0, :cond_3

    .line 276
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .end local v5           #url:Ljava/lang/String;
    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 278
    .local v0, relative:Landroid/net/Uri;
    const-string v5, "remote_url"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #relative:Landroid/net/Uri;
    invoke-virtual {v3, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 279
    const-string v0, "content_status"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_2

    .line 281
    .restart local v5       #url:Ljava/lang/String;
    :cond_3
    const-string v0, "content_status"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v5           #url:Ljava/lang/String;
    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_2

    .line 294
    .end local v3           #oper:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #page:Lorg/json/JSONObject;
    :cond_4
    return-void
.end method

.method public static parseResources(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 8
    .parameter "volumeId"
    .parameter "sectionId"
    .parameter "resources"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 302
    .local p3, batch:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 304
    .local v4, resourceDirUri:Landroid/net/Uri;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v1, v6

    .line 305
    .local v1, length:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 307
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, resourceUrl:Ljava/lang/String;
    const-string v6, "&amp;"

    const-string v7, "&"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 312
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lcom/google/android/apps/books/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, resId:Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 317
    .local v2, oper:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "volume_id"

    invoke-virtual {v2, v6, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 318
    const-string v6, "resource_id"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 319
    const-string v6, "related_section_id"

    invoke-virtual {v2, v6, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 320
    const-string v6, "resource_order"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 321
    const-string v6, "remote_url"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 322
    const-string v6, "content_status"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 324
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 304
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #oper:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #resId:Ljava/lang/String;
    .end local v5           #resourceUrl:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0

    .line 326
    .restart local v0       #i:I
    .restart local v1       #length:I
    :cond_1
    return-void
.end method

.method private parseSectionContent(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Landroid/net/Uri;)V
    .locals 8
    .parameter "volumeId"
    .parameter "sectionId"
    .parameter "contentType"
    .parameter "entity"
    .parameter "sessionKeyUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-interface {p4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 183
    .local v4, rawInput:Ljava/io/InputStream;
    invoke-static {p3}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->findBoundary(Lorg/apache/http/Header;)[B

    move-result-object v0

    .line 184
    .local v0, boundary:[B
    new-instance v5, Lcom/google/android/apps/books/util/MultipartStream;

    invoke-direct {v5, v4, v0}, Lcom/google/android/apps/books/util/MultipartStream;-><init>(Ljava/io/InputStream;[B)V

    .line 190
    .local v5, stream:Lcom/google/android/apps/books/util/MultipartStream;
    invoke-virtual {v5}, Lcom/google/android/apps/books/util/MultipartStream;->skipPreamble()Z

    .line 194
    :try_start_0
    invoke-static {v5}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->readNextPartFully(Lcom/google/android/apps/books/util/MultipartStream;)[B

    move-result-object v3

    .line 196
    .local v3, payload:[B
    new-instance v2, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, header:Lorg/json/JSONObject;
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->parseSectionContentHeader(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    invoke-static {v5}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->readNextPartFully(Lcom/google/android/apps/books/util/MultipartStream;)[B

    move-result-object v3

    .line 206
    if-eqz v3, :cond_0

    array-length v6, v3

    if-nez v6, :cond_1

    .line 207
    :cond_0
    const/4 p5, 0x0

    .line 210
    :cond_1
    invoke-direct {p0, p1, p2, v3, p5}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->parseSectionContentBody(Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;)V

    .line 211
    return-void

    .line 198
    .end local v2           #header:Lorg/json/JSONObject;
    .end local v3           #payload:[B
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 199
    .local v1, e:Lorg/json/JSONException;
    new-instance v6, Lorg/apache/http/client/ClientProtocolException;

    const-string v7, "problem parsing section header"

    invoke-direct {v6, v7, v1}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private parseSectionContentBody(Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;)V
    .locals 11
    .parameter "volumeId"
    .parameter "sectionId"
    .parameter "payload"
    .parameter "sessionKeyUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v8, "session_key_id"

    .line 339
    iget-object v8, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-virtual {v8}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 340
    .local v2, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 342
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 343
    .local v0, contentUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "wt"

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 344
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 346
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v3, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 352
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 353
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "content_status"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    if-eqz p4, :cond_0

    .line 357
    invoke-static {p4}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->getSessionKeyId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 358
    .local v5, sessionKeyId:J
    const-string v8, "session_key_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    .end local v5           #sessionKeyId:J
    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 364
    .local v4, sectionUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v4, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 366
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 368
    return-void

    .line 348
    .end local v4           #sectionUri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v8

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 366
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v3           #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8

    .line 360
    .restart local v0       #contentUri:Landroid/net/Uri;
    .restart local v1       #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local v3       #out:Ljava/io/OutputStream;
    .restart local v7       #values:Landroid/content/ContentValues;
    :cond_0
    :try_start_4
    const-string v8, "session_key_id"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method private parseSectionContentHeader(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .parameter "volumeId"
    .parameter "sectionId"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-string v8, "Problem inserting update"

    .line 221
    invoke-static {p3}, Lcom/google/android/apps/books/util/BlockedContentReason;->assertNotBlocked(Lorg/json/JSONObject;)V

    .line 223
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 226
    .local v0, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v6, "style"

    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, style:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 228
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 229
    .local v4, sectionUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 231
    .local v2, oper:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "style_css"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 232
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v2           #oper:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #sectionUri:Landroid/net/Uri;
    :cond_0
    const-string v6, "resource_url"

    invoke-virtual {p3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 237
    .local v3, resources:Lorg/json/JSONArray;
    invoke-static {p1, p2, v3, v0}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->parseResources(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V

    .line 241
    :try_start_0
    iget-object v6, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "com.google.android.apps.books"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    return-void

    .line 242
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 243
    .local v1, e:Landroid/content/OperationApplicationException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Problem inserting update"

    invoke-direct {v6, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 244
    .end local v1           #e:Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 245
    .local v1, e:Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Problem inserting update"

    invoke-direct {v6, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static readNextPartFully(Lcom/google/android/apps/books/util/MultipartStream;)[B
    .locals 8
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 378
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 380
    .local v0, buffer:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/MultipartStream;->readHeaders()Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, headers:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/util/MultipartStream;->readBodyData(Ljava/io/OutputStream;)I

    .line 382
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/MultipartStream;->readBoundary()Z

    .line 385
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 386
    .local v3, payload:[B
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 387
    const-string v4, "Content-Transfer-Encoding: quoted-printable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    invoke-static {v3}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->decodeQuotedPrintable([B)[B

    move-result-object v3

    :cond_0
    :goto_0
    move-object v4, v3

    .line 397
    .end local v2           #headers:Ljava/lang/String;
    .end local v3           #payload:[B
    :goto_1
    return-object v4

    .line 389
    .restart local v2       #headers:Ljava/lang/String;
    .restart local v3       #payload:[B
    :cond_1
    const-string v4, "Content-Transfer-Encoding: base64"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/apps/books/util/Base64;->decode([BI)[B
    :try_end_0
    .catch Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 395
    .end local v2           #headers:Ljava/lang/String;
    .end local v3           #payload:[B
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 396
    .local v1, e:Lcom/google/android/apps/books/util/MultipartStream$MalformedStreamException;
    const-string v4, "SectionContentFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "problem reading multipart, server probably sent empty part: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-array v4, v7, [B

    goto :goto_1
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .locals 13
    .parameter "sectionContentUri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, volumeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, sectionId:Ljava/lang/String;
    const-string v0, "missing volumeId"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "missing sectionId"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "missing account"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "SectionContentFetcher"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "SectionContentFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetching vid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->buildSectionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "remote_url"

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 132
    .local v10, remoteUrl:Ljava/lang/String;
    invoke-static {v10}, Lcom/google/android/apps/books/net/GoogleContentHandler;->resolveRelativeBooksUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    invoke-static {v10, v0}, Lcom/google/android/apps/books/net/GoogleContentHandler;->setSourceParameter(Ljava/lang/String;Lcom/google/android/apps/books/util/Config;)Ljava/lang/String;

    move-result-object v10

    .line 135
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 138
    .local v8, remoteBuilder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x398

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 139
    .local v12, width:I
    const-string v0, "w"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v6

    .line 143
    .local v6, data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    const-string v0, "cp_ksver"

    iget-object v3, v6, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v8, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 146
    const-string v0, "alt"

    const-string v3, "multi"

    invoke-virtual {v8, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 148
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, remoteTarget:Ljava/lang/String;
    const/4 v4, 0x0

    .line 152
    .local v4, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-virtual {v0, v9, p2, v3}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 153
    .local v11, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 155
    const-string v0, "Content-Type"

    invoke-interface {v11, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 156
    .local v3, contentType:Lorg/apache/http/Header;
    iget-object v5, v6, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->parseSectionContent(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 171
    :cond_1
    return-void

    .line 157
    .end local v3           #contentType:Lorg/apache/http/Header;
    .end local v11           #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 161
    .local v7, e:Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    iget-object v2, v6, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    .end local v2           #sectionId:Ljava/lang/String;
    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->removeSessionKeyAndWipeContents(Landroid/net/Uri;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #volumeId:Ljava/lang/String;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsuported session key version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v7           #e:Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    throw v0
.end method

.method public isAlreadyFetched(Landroid/net/Uri;)Z
    .locals 5
    .parameter "sectionContentUri"

    .prologue
    const/4 v4, 0x1

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->buildSectionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "content_status"

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    .local v0, status:I
    packed-switch v0, :pswitch_data_0

    .line 107
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_1
    move v1, v4

    .line 102
    goto :goto_0

    .line 104
    :pswitch_2
    const-string v1, "SectionContentFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content status unavailable for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 105
    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
