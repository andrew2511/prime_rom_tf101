.class public Lcom/asus/mygazine/BrowserUtils;
.super Ljava/lang/Object;
.source "BrowserUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/mygazine/BrowserUtils$VisitedDate;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final HISTORY_PROJECTION:[Ljava/lang/String;

.field public static sBrowserUtils:Lcom/asus/mygazine/BrowserUtils;

.field private static sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;


# instance fields
.field private mBrowserObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-string v0, "content://com.android.browser"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/BrowserUtils;->AUTHORITY_URI:Landroid/net/Uri;

    .line 22
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "history"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/BrowserUtils;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/mygazine/BrowserUtils;->HISTORY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/asus/mygazine/BrowserUtils$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/asus/mygazine/BrowserUtils$1;-><init>(Lcom/asus/mygazine/BrowserUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/asus/mygazine/BrowserUtils;->mBrowserObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static getInstance()Lcom/asus/mygazine/BrowserUtils;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sBrowserUtils:Lcom/asus/mygazine/BrowserUtils;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/asus/mygazine/BrowserUtils;

    invoke-direct {v0}, Lcom/asus/mygazine/BrowserUtils;-><init>()V

    sput-object v0, Lcom/asus/mygazine/BrowserUtils;->sBrowserUtils:Lcom/asus/mygazine/BrowserUtils;

    .line 60
    new-instance v0, Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    invoke-direct {v0}, Lcom/asus/mygazine/BrowserUtils$VisitedDate;-><init>()V

    sput-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    .line 62
    :cond_0
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sBrowserUtils:Lcom/asus/mygazine/BrowserUtils;

    return-object v0
.end method

.method public static getVisitedDate(Landroid/content/ContentResolver;)Lcom/asus/mygazine/BrowserUtils$VisitedDate;
    .locals 8
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 85
    sget-object v1, Lcom/asus/mygazine/BrowserUtils;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/mygazine/BrowserUtils;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 88
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 92
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    invoke-direct {v0}, Lcom/asus/mygazine/BrowserUtils$VisitedDate;-><init>()V

    sput-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    .line 95
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 97
    .local v7, data:[B
    if-eqz v7, :cond_1

    .line 98
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    const/4 v1, 0x0

    array-length v2, v7

    invoke-static {v7, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/asus/mygazine/BrowserUtils$VisitedDate;->thumbnail:Landroid/graphics/Bitmap;

    .line 101
    :cond_1
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/asus/mygazine/BrowserUtils$VisitedDate;->title:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/asus/mygazine/BrowserUtils$VisitedDate;->url:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v7           #data:[B
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_2
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    return-object v0

    .line 108
    :cond_3
    :try_start_1
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/asus/mygazine/BrowserUtils$VisitedDate;->thumbnail:Landroid/graphics/Bitmap;

    .line 109
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/asus/mygazine/BrowserUtils$VisitedDate;->title:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/asus/mygazine/BrowserUtils$VisitedDate;->url:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public registerCallback(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    .line 68
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/asus/mygazine/BrowserUtils;->mBrowserObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 69
    return-void
.end method

.method public unregisterCallback(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "resolver"

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/asus/mygazine/BrowserUtils;->mBrowserObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 75
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    iget-object v0, v0, Lcom/asus/mygazine/BrowserUtils$VisitedDate;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    iget-object v0, v0, Lcom/asus/mygazine/BrowserUtils$VisitedDate;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    iget-object v0, v0, Lcom/asus/mygazine/BrowserUtils$VisitedDate;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    :cond_0
    sput-object v1, Lcom/asus/mygazine/BrowserUtils;->sVisitedDate:Lcom/asus/mygazine/BrowserUtils$VisitedDate;

    .line 78
    sput-object v1, Lcom/asus/mygazine/BrowserUtils;->sBrowserUtils:Lcom/asus/mygazine/BrowserUtils;

    .line 80
    return-void
.end method
