.class public Lcom/google/android/youtube/core/utils/ExternalIntents;
.super Ljava/lang/Object;
.source "ExternalIntents.java"


# static fields
.field private static final FINSKY_BASE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "http://market.android.com/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/utils/ExternalIntents;->FINSKY_BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flagVideo(Landroid/content/Context;Lcom/google/android/youtube/core/model/Video;)V
    .locals 6
    .parameter "context"
    .parameter "video"

    .prologue
    .line 217
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "http://m.youtube.com/flag?v=%s"

    .line 220
    .local v0, flagUrlTemplate:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, uri:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    .end local v0           #flagUrlTemplate:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Ljava/lang/String;
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v3, "Flag video error: null id uri"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLocalizedHelpUrl(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "urlId"

    .prologue
    .line 327
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 328
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, language:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, country:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v3, p1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getUploadSettingsIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "videoFileUri"
    .parameter "preferredAccount"

    .prologue
    .line 183
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.apps.uploader"

    const-string v3, "com.google.android.apps.uploader.clients.youtube.YouTubeSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 189
    const-string v1, "com.google.android.apps.uploader.extra.preferredAccount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    :cond_0
    return-object v0
.end method

.method public static isUploadAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v1, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->getUploadSettingsIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Ljava/lang/String;)Z
    .locals 3
    .parameter "starter"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"
    .parameter "currentAccountName"

    .prologue
    const/4 v2, 0x0

    .line 164
    packed-switch p1, :pswitch_data_0

    move v1, v2

    .line 178
    :goto_0
    return v1

    .line 167
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 168
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 169
    .local v0, videoFileUri:Landroid/net/Uri;
    invoke-static {v0, p4}, Lcom/google/android/youtube/core/utils/ExternalIntents;->getUploadSettingsIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x386

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    const/4 v1, 0x1

    goto :goto_0

    .end local v0           #videoFileUri:Landroid/net/Uri;
    :cond_0
    move v1, v2

    .line 173
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 175
    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseEmbedUri(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 297
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, path:Ljava/lang/String;
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 299
    .local v0, endIndex:I
    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    .line 300
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, id:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, params:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    .line 304
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #params:Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    new-array v4, v8, [Ljava/lang/String;

    aput-object v3, v4, v6

    const/4 v5, 0x0

    aput-object v5, v4, v7

    goto :goto_0
.end method

.method private static parseVndUri(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 258
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, id:Ljava/lang/String;
    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, params:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_1
    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    return-object v2
.end method

.method private static parseWatchUri(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 272
    const-string v6, "v"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, params:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, idParam:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 277
    :cond_0
    const/4 v3, 0x0

    .line 292
    :goto_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v8

    const/4 v7, 0x1

    aput-object v3, v6, v7

    return-object v6

    .line 280
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 281
    .local v5, startIndex:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int v0, v5, v6

    .line 282
    .local v0, endIndex:I
    const-string v4, ""

    .line 283
    .local v4, paramsWithoutId:Ljava/lang/String;
    if-lez v5, :cond_2

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    :cond_2
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 290
    :cond_3
    move-object v3, v4

    goto :goto_0
.end method

.method public static parseYouTubeChannelUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    .line 321
    const-string v1, "uri cannot be null"

    invoke-static {p0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 323
    .local v0, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseYouTubeWatchUri(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 243
    const-string v1, "vnd.youtube"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->parseVndUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    .line 253
    :goto_0
    return-object v1

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, path:Ljava/lang/String;
    const-string v1, "/watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->parseWatchUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 249
    :cond_1
    const-string v1, "/v/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->parseEmbedUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 253
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method private static rewriteUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "context"
    .parameter "src"

    .prologue
    .line 334
    new-instance v0, Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/utils/UriRewriter;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/utils/UriRewriter;->rewrite(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static shareVideo(Landroid/content/Context;Lcom/google/android/youtube/core/model/Video;)V
    .locals 7
    .parameter "context"
    .parameter "video"

    .prologue
    .line 199
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 200
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const v3, 0x7f0d0002

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, subject:Ljava/lang/String;
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, p1, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/high16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    const v3, 0x7f0d0011

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 207
    .local v0, chooser:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    .end local v0           #chooser:Landroid/content/Intent;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #subject:Ljava/lang/String;
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v3, "Share video error: null watch uri"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startVideoPickerForUpload(Landroid/app/Activity;)V
    .locals 3
    .parameter "starter"

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const v1, 0x7f0d0012

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x385

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    return-void
.end method

.method public static startVideoRecordActivity(Landroid/app/Activity;)V
    .locals 6
    .parameter "starter"

    .prologue
    const/16 v5, 0x384

    const/4 v4, 0x1

    .line 96
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.camera"

    const-string v3, "com.android.camera.VideoCamera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 108
    :cond_0
    invoke-virtual {p0, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    return-void
.end method

.method public static viewUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, viewIntent:Landroid/content/Intent;
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->rewriteUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void
.end method
