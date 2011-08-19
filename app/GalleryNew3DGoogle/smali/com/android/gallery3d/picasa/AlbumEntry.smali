.class public Lcom/android/gallery3d/picasa/AlbumEntry;
.super Lcom/android/gallery3d/picasa/Entry;
.source "AlbumEntry.java"


# annotations
.annotation runtime Lcom/android/gallery3d/picasa/Entry$Table;
    value = "albums"
.end annotation


# static fields
.field public static final SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;


# instance fields
.field public bytesUsed:J
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "bytes_used"
    .end annotation
.end field

.field public cacheFlag:I
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        doNotMerge = true
        extraSql = "DEFAULT 1"
        value = "cache_flag"
    .end annotation
.end field

.field public cacheStatus:I
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        doNotMerge = true
        extraSql = "DEFAULT 0"
        value = "cache_status"
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

.field public dateUpdated:J
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "date_updated"
    .end annotation
.end field

.field public editUri:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "edit_uri"
    .end annotation
.end field

.field public htmlPageUrl:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "html_page_url"
    .end annotation
.end field

.field public locationString:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "location_string"
    .end annotation
.end field

.field public numPhotos:I
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "num_photos"
    .end annotation
.end field

.field public photosDirty:Z
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "photos_dirty"
    .end annotation
.end field

.field public photosEtag:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "photos_etag"
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

.field public user:Ljava/lang/String;
    .annotation runtime Lcom/android/gallery3d/picasa/Entry$Column;
        value = "user"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/gallery3d/picasa/EntrySchema;

    const-class v1, Lcom/android/gallery3d/picasa/AlbumEntry;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/picasa/EntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/gallery3d/picasa/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/Entry;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->photosEtag:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-super {p0}, Lcom/android/gallery3d/picasa/Entry;->clear()V

    .line 168
    iput-object v1, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    .line 169
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->cacheFlag:I

    .line 170
    iput v4, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->cacheStatus:I

    .line 171
    iput-boolean v4, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->photosDirty:Z

    .line 172
    iput-object v1, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->editUri:Ljava/lang/String;

    .line 173
    iput-object v1, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->user:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->title:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->summary:Ljava/lang/String;

    .line 176
    iput-wide v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->datePublished:J

    .line 177
    iput-wide v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->dateUpdated:J

    .line 178
    iput-wide v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->dateEdited:J

    .line 179
    iput v4, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->numPhotos:I

    .line 180
    iput-wide v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->bytesUsed:J

    .line 181
    iput-object v1, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->locationString:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->thumbnailUrl:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->htmlPageUrl:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "object"

    .prologue
    const/4 v6, 0x0

    .line 188
    instance-of v2, p1, Lcom/android/gallery3d/picasa/AlbumEntry;

    if-nez v2, :cond_0

    move v2, v6

    .line 190
    :goto_0
    return v2

    .line 189
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/picasa/AlbumEntry;

    move-object v1, v0

    .line 190
    .local v1, p:Lcom/android/gallery3d/picasa/AlbumEntry;
    iget-object v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->syncAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->cacheFlag:I

    iget v3, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->cacheFlag:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->cacheStatus:I

    iget v3, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->cacheStatus:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->photosDirty:Z

    iget-boolean v3, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->photosDirty:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->editUri:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->editUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->user:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->user:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->title:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->summary:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->summary:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->datePublished:J

    iget-wide v4, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->datePublished:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->dateUpdated:J

    iget-wide v4, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->dateUpdated:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->dateEdited:J

    iget-wide v4, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->dateEdited:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->numPhotos:I

    iget v3, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->numPhotos:I

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->bytesUsed:J

    iget-wide v4, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->bytesUsed:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->locationString:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->locationString:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->thumbnailUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->htmlPageUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->htmlPageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1
    move v2, v6

    goto/16 :goto_0
.end method

.method public setPropertyFromXml(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "attrs"
    .parameter "content"

    .prologue
    .line 214
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 215
    .local v1, localNameChar:C
    const-string v3, "http://schemas.google.com/photos/2007"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    sparse-switch v1, :sswitch_data_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 218
    :sswitch_0
    const-string v3, "id"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->id:J

    goto :goto_0

    .line 223
    :sswitch_1
    const-string v3, "user"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    iput-object p4, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->user:Ljava/lang/String;

    goto :goto_0

    .line 228
    :sswitch_2
    const-string v3, "numphotos"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->numPhotos:I

    goto :goto_0

    .line 233
    :sswitch_3
    const-string v3, "bytesUsed"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->bytesUsed:J

    goto :goto_0

    .line 238
    :cond_1
    const-string v3, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 261
    :pswitch_1
    const-string v3, "link"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    const-string v3, ""

    const-string v4, "rel"

    invoke-interface {p3, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, rel:Ljava/lang/String;
    const-string v3, ""

    const-string v4, "href"

    invoke-interface {p3, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, href:Ljava/lang/String;
    const-string v3, "alternate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ""

    const-string v4, "type"

    invoke-interface {p3, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    iput-object v0, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->htmlPageUrl:Ljava/lang/String;

    goto :goto_0

    .line 241
    .end local v0           #href:Ljava/lang/String;
    .end local v2           #rel:Ljava/lang/String;
    :pswitch_2
    const-string v3, "title"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    iput-object p4, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 246
    :pswitch_3
    const-string v3, "summary"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    iput-object p4, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->summary:Ljava/lang/String;

    goto/16 :goto_0

    .line 251
    :pswitch_4
    const-string v3, "published"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    invoke-static {p4}, Lcom/android/gallery3d/picasa/GDataParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->datePublished:J

    goto/16 :goto_0

    .line 256
    :pswitch_5
    const-string v3, "updated"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-static {p4}, Lcom/android/gallery3d/picasa/GDataParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->dateUpdated:J

    goto/16 :goto_0

    .line 266
    .restart local v0       #href:Ljava/lang/String;
    .restart local v2       #rel:Ljava/lang/String;
    :cond_2
    const-string v3, "edit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    iput-object v0, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->editUri:Ljava/lang/String;

    goto/16 :goto_0

    .line 272
    .end local v0           #href:Ljava/lang/String;
    .end local v2           #rel:Ljava/lang/String;
    :cond_3
    const-string v3, "http://www.w3.org/2007/app"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 273
    const-string v3, "edited"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    invoke-static {p4}, Lcom/android/gallery3d/picasa/GDataParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->dateEdited:J

    goto/16 :goto_0

    .line 276
    :cond_4
    const-string v3, "http://search.yahoo.com/mrss/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    const-string v3, "thumbnail"

    if-ne p2, v3, :cond_0

    .line 278
    const-string v3, ""

    const-string v4, "url"

    invoke-interface {p3, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/picasa/AlbumEntry;->thumbnailUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_3
        0x69 -> :sswitch_0
        0x6e -> :sswitch_2
        0x75 -> :sswitch_1
    .end sparse-switch

    .line 239
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
