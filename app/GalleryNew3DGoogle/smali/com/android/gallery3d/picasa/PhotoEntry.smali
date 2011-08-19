.class public final Lcom/android/gallery3d/picasa/PhotoEntry;
.super Lcom/android/gallery3d/picasa/Entry;
.source "PhotoEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/picasa/Entry$Table;
    value = "photos"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;


# instance fields
.field public albumId:J
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        indexed = true
        value = "album_id"
    .end annotation
.end field

.field public cachePathname:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        doNotMerge = true
        value = "cache_pathname"
    .end annotation
.end field

.field public cacheStatus:I
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        doNotMerge = true
        extraSql = "DEFAULT 0"
        value = "cache_status"
    .end annotation
.end field

.field public commentCount:I
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "comment_count"
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "content_type"
    .end annotation
.end field

.field public contentUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "content_url"
    .end annotation
.end field

.field public dateEdited:J
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "date_edited"
    .end annotation
.end field

.field public datePublished:J
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "date_published"
    .end annotation
.end field

.field public dateTaken:J
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "date_taken"
    .end annotation
.end field

.field public dateUpdated:J
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "date_updated"
    .end annotation
.end field

.field public displayIndex:I
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        indexed = true
        value = "display_index"
    .end annotation
.end field

.field public editUri:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "edit_uri"
    .end annotation
.end field

.field public exifExposure:F
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "exif_exposure"
    .end annotation
.end field

.field public exifFlash:I
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "exif_flash"
    .end annotation
.end field

.field public exifFocalLength:F
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "exif_focal_length"
    .end annotation
.end field

.field public exifFstop:F
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "exif_fstop"
    .end annotation
.end field

.field public exifIso:I
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "exif_iso"
    .end annotation
.end field

.field public exifMake:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "exif_make"
    .end annotation
.end field

.field public exifModel:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "exif_model"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "height"
    .end annotation
.end field

.field public htmlPageUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "html_page_url"
    .end annotation
.end field

.field public keywords:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "keywords"
    .end annotation
.end field

.field public latitude:D
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "latitude"
    .end annotation
.end field

.field public longitude:D
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "longitude"
    .end annotation
.end field

.field public rotation:I
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "rotation"
    .end annotation
.end field

.field public screennailUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "screennail_url"
    .end annotation
.end field

.field public size:I
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "size"
    .end annotation
.end field

.field public summary:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "summary"
    .end annotation
.end field

.field public syncAccount:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "sync_account"
    .end annotation
.end field

.field public thumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "thumbnail_url"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "title"
    .end annotation
.end field

.field public width:I
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "width"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/gallery3d/picasa/EntrySchema;

    const-class v1, Lcom/android/gallery3d/picasa/PhotoEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/picasa/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/gallery3d/picasa/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/Entry;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 278
    invoke-super {p0}, Lcom/android/gallery3d/picasa/Entry;->clear()V

    .line 279
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->syncAccount:Ljava/lang/String;

    .line 280
    iput v1, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->cacheStatus:I

    .line 281
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    .line 282
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->editUri:Ljava/lang/String;

    .line 283
    iput-wide v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->albumId:J

    .line 284
    iput v1, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->displayIndex:I

    .line 285
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->title:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->summary:Ljava/lang/String;

    .line 287
    iput-wide v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->datePublished:J

    .line 288
    iput-wide v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->dateUpdated:J

    .line 289
    iput-wide v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->dateEdited:J

    .line 290
    iput-wide v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->dateTaken:J

    .line 291
    iput v1, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->commentCount:I

    .line 292
    iput v1, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->width:I

    .line 293
    iput v1, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->height:I

    .line 294
    iput v1, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->rotation:I

    .line 295
    iput v1, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->size:I

    .line 296
    iput-wide v5, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    .line 297
    iput-wide v5, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    .line 298
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->thumbnailUrl:Ljava/lang/String;

    .line 299
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->screennailUrl:Ljava/lang/String;

    .line 300
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->contentUrl:Ljava/lang/String;

    .line 301
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->contentType:Ljava/lang/String;

    .line 302
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->htmlPageUrl:Ljava/lang/String;

    .line 303
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->keywords:Ljava/lang/String;

    .line 304
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifMake:Ljava/lang/String;

    .line 305
    iput-object v0, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifModel:Ljava/lang/String;

    .line 306
    iput v4, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifExposure:F

    .line 307
    iput v1, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFlash:I

    .line 308
    iput v4, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFocalLength:F

    .line 309
    iput v4, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFstop:F

    .line 310
    iput v1, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifIso:I

    .line 311
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "object"

    .prologue
    const/4 v6, 0x0

    .line 315
    instance-of v2, p1, Lcom/android/gallery3d/picasa/PhotoEntry;

    if-nez v2, :cond_0

    move v2, v6

    .line 317
    :goto_0
    return v2

    .line 316
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/picasa/PhotoEntry;

    move-object v1, v0

    .line 317
    .local v1, p:Lcom/android/gallery3d/picasa/PhotoEntry;
    iget-object v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->syncAccount:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->syncAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->editUri:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->editUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->albumId:J

    iget-wide v4, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->albumId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->displayIndex:I

    iget v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->displayIndex:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->title:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->summary:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->summary:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->datePublished:J

    iget-wide v4, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->datePublished:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->dateUpdated:J

    iget-wide v4, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->dateUpdated:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->dateEdited:J

    iget-wide v4, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->dateEdited:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->dateTaken:J

    iget-wide v4, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->dateTaken:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->commentCount:I

    iget v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->commentCount:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->width:I

    iget v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->width:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->height:I

    iget v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->height:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->rotation:I

    iget v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->rotation:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->size:I

    iget v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->size:I

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    iget-wide v4, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    iget-wide v4, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->thumbnailUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->screennailUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->screennailUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->contentUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->contentUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->htmlPageUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->htmlPageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->keywords:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->keywords:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->cacheStatus:I

    iget v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->cacheStatus:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifMake:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->exifMake:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifModel:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->exifModel:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifExposure:F

    iget v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->exifExposure:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFlash:I

    iget v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFlash:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFocalLength:F

    iget v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFocalLength:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFstop:F

    iget v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFstop:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifIso:I

    iget v3, v1, Lcom/android/gallery3d/picasa/PhotoEntry;->exifIso:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1
    move v2, v6

    goto/16 :goto_0
.end method

.method public setPropertyFromXml(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 10
    .parameter "uri"
    .parameter "localName"
    .parameter "attrs"
    .parameter "content"

    .prologue
    .line 356
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 357
    .local v2, localNameChar:C
    const-string v7, "http://schemas.google.com/photos/2007"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 358
    sparse-switch v2, :sswitch_data_0

    .line 496
    .end local v2           #localNameChar:C
    :cond_0
    :goto_0
    return-void

    .line 360
    .restart local v2       #localNameChar:C
    :sswitch_0
    const-string v7, "id"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 361
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->id:J

    goto :goto_0

    .line 493
    .end local v2           #localNameChar:C
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 494
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 365
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #localNameChar:C
    :sswitch_1
    const-string v7, "albumid"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 366
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->albumId:J

    goto :goto_0

    .line 370
    :sswitch_2
    const-string v7, "timestamp"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 371
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->dateTaken:J

    goto :goto_0

    .line 375
    :sswitch_3
    const-string v7, "commentCount"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 376
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->commentCount:I

    goto :goto_0

    .line 380
    :sswitch_4
    const-string v7, "width"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 381
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->width:I

    goto :goto_0

    .line 385
    :sswitch_5
    const-string v7, "height"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 386
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->height:I

    goto :goto_0

    .line 390
    :sswitch_6
    const-string v7, "rotation"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 391
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->rotation:I

    goto :goto_0

    .line 395
    :sswitch_7
    const-string v7, "size"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 396
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->size:I

    goto :goto_0

    .line 400
    :sswitch_8
    const-string v7, "latitude"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 401
    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    goto/16 :goto_0

    .line 402
    :cond_1
    const-string v7, "longitude"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 403
    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    goto/16 :goto_0

    .line 407
    :cond_2
    const-string v7, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 408
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 430
    :pswitch_1
    const-string v7, "link"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 431
    const-string v7, ""

    const-string v8, "rel"

    invoke-interface {p3, v7, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, rel:Ljava/lang/String;
    const-string v7, ""

    const-string v8, "href"

    invoke-interface {p3, v7, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, href:Ljava/lang/String;
    const-string v7, "alternate"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, ""

    const-string v8, "type"

    invoke-interface {p3, v7, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 435
    iput-object v1, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->htmlPageUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 410
    .end local v1           #href:Ljava/lang/String;
    .end local v3           #rel:Ljava/lang/String;
    :pswitch_2
    const-string v7, "title"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 411
    iput-object p4, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 415
    :pswitch_3
    const-string v7, "summary"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 416
    iput-object p4, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->summary:Ljava/lang/String;

    goto/16 :goto_0

    .line 420
    :pswitch_4
    const-string v7, "published"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 421
    invoke-static {p4}, Lcom/android/gallery3d/picasa/GDataParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->datePublished:J

    goto/16 :goto_0

    .line 425
    :pswitch_5
    const-string v7, "updated"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 426
    invoke-static {p4}, Lcom/android/gallery3d/picasa/GDataParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->dateUpdated:J

    goto/16 :goto_0

    .line 436
    .restart local v1       #href:Ljava/lang/String;
    .restart local v3       #rel:Ljava/lang/String;
    :cond_3
    const-string v7, "edit"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 437
    iput-object v1, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->editUri:Ljava/lang/String;

    goto/16 :goto_0

    .line 442
    .end local v1           #href:Ljava/lang/String;
    .end local v3           #rel:Ljava/lang/String;
    :cond_4
    const-string v7, "http://www.w3.org/2007/app"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 443
    const-string v7, "edited"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 444
    invoke-static {p4}, Lcom/android/gallery3d/picasa/GDataParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->dateEdited:J

    goto/16 :goto_0

    .line 446
    :cond_5
    const-string v7, "http://search.yahoo.com/mrss/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 447
    const-string v7, "thumbnail"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 448
    const-string v7, ""

    const-string v8, "url"

    invoke-interface {p3, v7, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 449
    .local v6, url:Ljava/lang/String;
    const-string v7, "/s200-c/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 450
    iput-object v6, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->thumbnailUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 451
    :cond_6
    const-string v7, "/s640/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 452
    iput-object v6, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->screennailUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 454
    :cond_7
    const-string v7, "PhotoEntry"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected format of the thumbnail urlreturned from Picasaweb: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/picasa/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 457
    .end local v6           #url:Ljava/lang/String;
    :cond_8
    const-string v7, "content"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 459
    const-string v7, ""

    const-string v8, "type"

    invoke-interface {p3, v7, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, type:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->contentUrl:Ljava/lang/String;

    if-eqz v7, :cond_9

    const-string v7, "video/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 461
    :cond_9
    const-string v7, ""

    const-string v8, "url"

    invoke-interface {p3, v7, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->contentUrl:Ljava/lang/String;

    .line 462
    iput-object v5, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->contentType:Ljava/lang/String;

    goto/16 :goto_0

    .line 464
    .end local v5           #type:Ljava/lang/String;
    :cond_a
    const-string v7, "keywords"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 465
    iput-object p4, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->keywords:Ljava/lang/String;

    goto/16 :goto_0

    .line 467
    :cond_b
    const-string v7, "http://www.opengis.net/gml"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 468
    const-string v7, "pos"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 469
    const/16 v7, 0x20

    invoke-virtual {p4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 470
    .local v4, spaceIndex:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 471
    const/4 v7, 0x0

    invoke-virtual {p4, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    .line 472
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    goto/16 :goto_0

    .line 475
    .end local v4           #spaceIndex:I
    :cond_c
    const-string v7, "http://schemas.google.com/photos/exif/2007"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 476
    const-string v7, "make"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 477
    iput-object p4, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifMake:Ljava/lang/String;

    goto/16 :goto_0

    .line 478
    :cond_d
    const-string v7, "model"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 479
    iput-object p4, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifModel:Ljava/lang/String;

    goto/16 :goto_0

    .line 480
    :cond_e
    const-string v7, "exposure"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 481
    const/4 v7, 0x0

    invoke-static {p4, v7}, Lcom/android/gallery3d/util/Utils;->parseFloatSafely(Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifExposure:F

    goto/16 :goto_0

    .line 482
    :cond_f
    const-string v7, "flash"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 483
    invoke-static {p4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    :goto_1
    iput v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFlash:I

    goto/16 :goto_0

    :cond_10
    const/4 v7, 0x2

    goto :goto_1

    .line 485
    :cond_11
    const-string v7, "focallength"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 486
    const/4 v7, 0x0

    invoke-static {p4, v7}, Lcom/android/gallery3d/util/Utils;->parseFloatSafely(Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFocalLength:F

    goto/16 :goto_0

    .line 487
    :cond_12
    const-string v7, "iso"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 488
    const/4 v7, 0x0

    invoke-static {p4, v7}, Lcom/android/gallery3d/util/Utils;->parseIntSafely(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifIso:I

    goto/16 :goto_0

    .line 489
    :cond_13
    const-string v7, "fstop"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 490
    const/4 v7, 0x0

    invoke-static {p4, v7}, Lcom/android/gallery3d/util/Utils;->parseFloatSafely(Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/picasa/PhotoEntry;->exifFstop:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_1
        0x63 -> :sswitch_3
        0x68 -> :sswitch_5
        0x69 -> :sswitch_0
        0x6c -> :sswitch_8
        0x72 -> :sswitch_6
        0x73 -> :sswitch_7
        0x74 -> :sswitch_2
        0x77 -> :sswitch_4
    .end sparse-switch

    .line 408
    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
