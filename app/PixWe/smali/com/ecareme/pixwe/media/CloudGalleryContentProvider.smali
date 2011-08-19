.class public Lcom/ecareme/pixwe/media/CloudGalleryContentProvider;
.super Landroid/content/ContentProvider;
.source "CloudGalleryContentProvider.java"


# static fields
.field public static final ALBUMS_URI:Landroid/net/Uri; = null

.field public static final AUTHORITY:Ljava/lang/String; = "com.ecareme.pixwe.cloudgalleryprovider"

.field public static final BASE_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PHOTOS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "content://com.ecareme.pixwe.cloudgalleryprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/media/CloudGalleryContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 13
    const-string v0, "content://com.ecareme.pixwe.cloudgalleryprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/media/CloudGalleryContentProvider;->BASE_URI:Landroid/net/Uri;

    .line 14
    sget-object v0, Lcom/ecareme/pixwe/media/CloudGalleryContentProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "photos"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/media/CloudGalleryContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    .line 15
    sget-object v0, Lcom/ecareme/pixwe/media/CloudGalleryContentProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "albums"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/media/CloudGalleryContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
