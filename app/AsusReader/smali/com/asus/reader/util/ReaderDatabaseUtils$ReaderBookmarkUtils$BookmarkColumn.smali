.class public Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookmarkColumn;
.super Ljava/lang/Object;
.source "ReaderDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkColumn"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 593
    const-string v0, "content://reader/bookmark"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookmarkColumn;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
