.class public Lcom/android/vending/util/DownloadManagerUtil$Request;
.super Ljava/lang/Object;
.source "DownloadManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/util/DownloadManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    .line 236
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "destination"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "otheruid"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setVisibleNotification(Z)Lcom/android/vending/util/DownloadManagerUtil$Request;

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/util/DownloadManagerUtil$Request;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method


# virtual methods
.method public setAssetSource(Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;
    .locals 2
    .parameter "src"

    .prologue
    .line 297
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "entity"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 299
    :goto_0
    return-object p0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "entity"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCookieData(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;
    .locals 4
    .parameter "authCookieName"
    .parameter "authCookieValue"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "cookiedata"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-object p0
.end method

.method public setDownloadDestination(I)Lcom/android/vending/util/DownloadManagerUtil$Request;
    .locals 3
    .parameter "downloadDestination"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "destination"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    return-object p0
.end method

.method public setNotification(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;
    .locals 1
    .parameter "notificationPackage"
    .parameter "notificationClass"

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/util/DownloadManagerUtil$Request;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;

    move-result-object v0

    return-object v0
.end method

.method public setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;
    .locals 2
    .parameter "notificationPackage"
    .parameter "notificationClass"
    .parameter "extras"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "notificationpackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "notificationclass"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz p3, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "notificationextras"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    return-object p0
.end method

.method public setPaused(Z)Lcom/android/vending/util/DownloadManagerUtil$Request;
    .locals 3
    .parameter "paused"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "control"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    return-object p0

    .line 284
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/vending/util/DownloadManagerUtil$Request;
    .locals 2
    .parameter "title"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-object p0
.end method

.method public setVisibleNotification(Z)Lcom/android/vending/util/DownloadManagerUtil$Request;
    .locals 3
    .parameter "visible"

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "visibility"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    :goto_0
    return-object p0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/vending/util/DownloadManagerUtil$Request;->mValues:Landroid/content/ContentValues;

    const-string v1, "visibility"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method
