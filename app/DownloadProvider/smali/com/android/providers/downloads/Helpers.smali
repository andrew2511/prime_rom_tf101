.class public Lcom/android/providers/downloads/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/Helpers$Lexer;
    }
.end annotation


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field public static sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    .line 45
    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static checkCanHandleDownload(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 7
    .parameter "context"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "isPublicApi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x196

    .line 125
    if-eqz p3, :cond_1

    .line 162
    :cond_0
    return-void

    .line 129
    :cond_1
    if-eqz p2, :cond_2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 131
    :cond_2
    if-nez p1, :cond_3

    .line 132
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const-string v4, "external download with no mime type not allowed"

    invoke-direct {v3, v6, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 135
    :cond_3
    const-string v3, "application/vnd.oma.drm.message"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 149
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v3, "file"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 153
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_0

    .line 154
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_4

    .line 155
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no handler found for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_4
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const-string v4, "no handler found for this download type"

    invoke-direct {v3, v6, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method private static chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "mimeType"
    .parameter "destination"
    .parameter "filename"
    .parameter "lastDotIndex"

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 287
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, typeFromExt:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_4

    .line 292
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_1

    .line 293
    const-string v2, "DownloadManager"

    const-string v3, "substituting extension from type"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v1           #typeFromExt:Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 303
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_2

    .line 304
    const-string v2, "DownloadManager"

    const-string v3, "keeping extension"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_3
    return-object v0

    .line 296
    .restart local v1       #typeFromExt:Ljava/lang/String;
    :cond_4
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_1

    .line 297
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t find extension for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "mimeType"
    .parameter "useDefaults"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 246
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_4

    .line 248
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 249
    const-string v1, "DownloadManager"

    const-string v2, "adding extension from type"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 259
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 260
    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 261
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_2

    .line 262
    const-string v1, "DownloadManager"

    const-string v2, "adding default html extension"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_2
    const-string v0, ".html"

    .line 278
    :cond_3
    :goto_1
    return-object v0

    .line 253
    :cond_4
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_1

    .line 254
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find extension for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_5
    if-eqz p1, :cond_3

    .line 266
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_6

    .line 267
    const-string v1, "DownloadManager"

    const-string v2, "adding default text extension"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_6
    const-string v0, ".txt"

    goto :goto_1

    .line 271
    :cond_7
    if-eqz p1, :cond_3

    .line 272
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_8

    .line 273
    const-string v1, "DownloadManager"

    const-string v2, "adding default binary extension"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_8
    const-string v0, ".bin"

    goto :goto_1
.end method

.method private static chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter "url"
    .parameter "hint"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "destination"

    .prologue
    const/16 v7, 0x3f

    const/16 v6, 0x2f

    .line 166
    const/4 v2, 0x0

    .line 169
    .local v2, filename:Ljava/lang/String;
    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_0

    .line 171
    const-string v4, "DownloadManager"

    const-string v5, "getting filename from hint"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 174
    .local v3, index:I
    if-lez v3, :cond_a

    .line 175
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    .end local v3           #index:I
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    .line 183
    invoke-static {p2}, Lcom/android/providers/downloads/Helpers;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_3

    .line 185
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_2

    .line 186
    const-string v4, "DownloadManager"

    const-string v5, "getting filename from content-disposition"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 189
    .restart local v3       #index:I
    if-lez v3, :cond_3

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    .end local v3           #index:I
    :cond_3
    if-nez v2, :cond_5

    if-eqz p3, :cond_5

    .line 197
    invoke-static {p3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, decodedContentLocation:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_5

    .line 201
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_4

    .line 202
    const-string v4, "DownloadManager"

    const-string v5, "getting filename from content-location"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 205
    .restart local v3       #index:I
    if-lez v3, :cond_b

    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    .end local v0           #decodedContentLocation:Ljava/lang/String;
    .end local v3           #index:I
    :cond_5
    :goto_1
    if-nez v2, :cond_7

    .line 215
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, decodedUrl:Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_7

    .line 218
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 219
    .restart local v3       #index:I
    if-lez v3, :cond_7

    .line 220
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_6

    .line 221
    const-string v4, "DownloadManager"

    const-string v5, "getting filename from uri"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    .end local v1           #decodedUrl:Ljava/lang/String;
    .end local v3           #index:I
    :cond_7
    if-nez v2, :cond_9

    .line 230
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_8

    .line 231
    const-string v4, "DownloadManager"

    const-string v5, "using default filename"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_8
    const-string v2, "downloadfile"

    .line 238
    :cond_9
    invoke-static {v2}, Lcom/android/providers/downloads/Helpers;->replaceInvalidVfatCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    return-object v2

    .line 177
    .restart local v3       #index:I
    :cond_a
    move-object v2, p1

    goto/16 :goto_0

    .line 208
    .restart local v0       #decodedContentLocation:Ljava/lang/String;
    :cond_b
    move-object v2, v0

    goto :goto_1
.end method

.method private static chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter "destination"
    .parameter "filename"
    .parameter "extension"
    .parameter "recoveryDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, fullFilename:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_1

    const/4 v5, 0x5

    if-eq p0, v5, :cond_1

    const/4 v5, 0x2

    if-eq p0, v5, :cond_1

    const/4 v5, 0x3

    if-eq p0, v5, :cond_1

    :cond_0
    move-object v1, v0

    .line 342
    .end local v0           #fullFilename:Ljava/lang/String;
    .local v1, fullFilename:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 322
    .end local v1           #fullFilename:Ljava/lang/String;
    .restart local v0       #fullFilename:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 337
    const/4 v4, 0x1

    .line 338
    .local v4, sequence:I
    const/4 v3, 0x1

    .local v3, magnitude:I
    :goto_1
    const v5, 0x3b9aca00

    if-ge v3, v5, :cond_5

    .line 339
    const/4 v2, 0x0

    .local v2, iteration:I
    :goto_2
    const/16 v5, 0x9

    if-ge v2, v5, :cond_4

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v1, v0

    .line 342
    .end local v0           #fullFilename:Ljava/lang/String;
    .restart local v1       #fullFilename:Ljava/lang/String;
    goto :goto_0

    .line 344
    .end local v1           #fullFilename:Ljava/lang/String;
    .restart local v0       #fullFilename:Ljava/lang/String;
    :cond_2
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_3

    .line 345
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file with sequence number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_3
    sget-object v5, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 338
    :cond_4
    mul-int/lit8 v3, v3, 0xa

    goto :goto_1

    .line 350
    .end local v2           #iteration:I
    :cond_5
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1ec

    const-string v7, "failed to generate an unused filename on internal download storage"

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method static generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLcom/android/providers/downloads/StorageManager;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "url"
    .parameter "hint"
    .parameter "contentDisposition"
    .parameter "contentLocation"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "contentLength"
    .parameter "isPublicApi"
    .parameter "storageManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p0, p5, p6, p9}, Lcom/android/providers/downloads/Helpers;->checkCanHandleDownload(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, base:Ljava/io/File;
    const/4 v2, 0x4

    if-ne p6, v2, :cond_0

    .line 86
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, path:Ljava/lang/String;
    :goto_0
    invoke-virtual {p10, p6, v1, p7, p8}, Lcom/android/providers/downloads/StorageManager;->verifySpace(ILjava/lang/String;J)V

    .line 94
    invoke-static {v1, p5, p6, v0}, Lcom/android/providers/downloads/Helpers;->getFullPath(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 88
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    invoke-virtual {p10, p5, p6, p7, p8}, Lcom/android/providers/downloads/StorageManager;->locateDestinationDirectory(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 90
    invoke-static {p1, p2, p3, p4, p6}, Lcom/android/providers/downloads/Helpers;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #path:Ljava/lang/String;
    goto :goto_0
.end method

.method static getFullPath(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Ljava/lang/String;
    .locals 7
    .parameter "filename"
    .parameter "mimeType"
    .parameter "destination"
    .parameter "base"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, extension:Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 103
    .local v0, dotIndex:I
    if-ltz v0, :cond_0

    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ge v0, v4, :cond_3

    :cond_0
    move v2, v6

    .line 104
    .local v2, missingExtension:Z
    :goto_0
    if-eqz v2, :cond_4

    .line 105
    invoke-static {p1, v6}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_1
    const-string v4, "recovery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 113
    .local v3, recoveryDir:Z
    if-eqz p3, :cond_1

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    :cond_1
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_2

    .line 118
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    invoke-static {p2, p0, v1, v3}, Lcom/android/providers/downloads/Helpers;->chooseUniqueFilename(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .end local v2           #missingExtension:Z
    .end local v3           #recoveryDir:Z
    :cond_3
    move v2, v5

    .line 103
    goto :goto_0

    .line 107
    .restart local v2       #missingExtension:Z
    :cond_4
    invoke-static {p1, p2, p0, v0}, Lcom/android/providers/downloads/Helpers;->chooseExtensionFromFilename(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method static isFilenameValid(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2
    .parameter "filename"
    .parameter "downloadsDataDir"

    .prologue
    .line 365
    const-string v0, "/+"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "contentDisposition"

    .prologue
    .line 59
    :try_start_0
    sget-object v1, Lcom/android/providers/downloads/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    .end local v0           #m:Ljava/util/regex/Matcher;
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v1

    .line 66
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V
    .locals 2
    .parameter "lexer"

    .prologue
    .line 400
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 402
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, unmatched parenthese"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 411
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 416
    return-void

    .line 409
    :cond_1
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->parseStatement(Lcom/android/providers/downloads/Helpers$Lexer;)V

    goto :goto_1

    .line 414
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    goto :goto_0
.end method

.method private static parseStatement(Lcom/android/providers/downloads/Helpers$Lexer;)V
    .locals 2
    .parameter "lexer"

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 428
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 430
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected quoted string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 444
    :goto_0
    return-void

    .line 438
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 439
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 440
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error, expected NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    goto :goto_0

    .line 448
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "syntax error after column name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static replaceInvalidVfatCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filename"

    .prologue
    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, START_CTRLCODE:C
    const/16 v0, 0x1f

    .line 640
    .local v0, END_CTRLCODE:C
    const/16 v0, 0x22

    .line 641
    .local v0, QUOTEDBL:C
    const/16 v0, 0x2a

    .line 642
    .local v0, ASTERISK:C
    const/16 v0, 0x2f

    .line 643
    .local v0, SLASH:C
    const/16 v0, 0x3a

    .line 644
    .local v0, COLON:C
    const/16 v0, 0x3c

    .line 645
    .local v0, LESS:C
    const/16 v0, 0x3e

    .line 646
    .local v0, GREATER:C
    const/16 v0, 0x3f

    .line 647
    .local v0, QUESTION:C
    const/16 v0, 0x5c

    .line 648
    .local v0, BACKSLASH:C
    const/16 v0, 0x7c

    .line 649
    .local v0, BAR:C
    const/16 v0, 0x7f

    .line 650
    .local v0, DEL:C
    const/16 v0, 0x5f

    .line 652
    .local v0, UNDERSCORE:C
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 654
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 655
    .local v1, isRepetition:Z
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v1

    .end local v1           #isRepetition:Z
    .local v2, isRepetition:Z
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 656
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 657
    .local v0, ch:C
    if-ltz v0, :cond_0

    const/16 v4, 0x1f

    if-le v0, v4, :cond_1

    :cond_0
    const/16 v4, 0x22

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3f

    if-eq v0, v4, :cond_1

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7f

    if-ne v0, v4, :cond_3

    .line 669
    :cond_1
    if-nez v2, :cond_2

    .line 670
    const/16 v0, 0x5f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 671
    .end local v0           #ch:C
    const/4 v0, 0x1

    .end local v2           #isRepetition:Z
    .local v0, isRepetition:Z
    move v2, v0

    .line 655
    .end local v0           #isRepetition:Z
    .restart local v2       #isRepetition:Z
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 674
    .local v0, ch:C
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 675
    const/4 v0, 0x0

    .end local v2           #isRepetition:Z
    .local v0, isRepetition:Z
    move v2, v0

    .end local v0           #isRepetition:Z
    .restart local v2       #isRepetition:Z
    goto :goto_1

    .line 678
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static validateSelection(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .parameter "selection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, allowedColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    :cond_0
    return-void

    .line 379
    :cond_1
    new-instance v1, Lcom/android/providers/downloads/Helpers$Lexer;

    invoke-direct {v1, p0, p1}, Lcom/android/providers/downloads/Helpers$Lexer;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 380
    .local v1, lexer:Lcom/android/providers/downloads/Helpers$Lexer;
    invoke-static {v1}, Lcom/android/providers/downloads/Helpers;->parseExpression(Lcom/android/providers/downloads/Helpers$Lexer;)V

    .line 381
    invoke-virtual {v1}, Lcom/android/providers/downloads/Helpers$Lexer;->currentToken()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 382
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v1           #lexer:Lcom/android/providers/downloads/Helpers$Lexer;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 385
    .local v0, ex:Ljava/lang/RuntimeException;
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_2

    .line 386
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid selection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] triggered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    throw v0

    .line 388
    :cond_2
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid selection triggered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
