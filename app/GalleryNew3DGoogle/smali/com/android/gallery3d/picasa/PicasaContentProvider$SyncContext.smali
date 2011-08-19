.class final Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;
.super Ljava/lang/Object;
.source "PicasaContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasa/PicasaContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SyncContext"
.end annotation


# instance fields
.field public accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

.field public final albumsAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public albumsChanged:Z

.field public api:Lcom/android/gallery3d/picasa/PicasaApi;

.field public photosChanged:Z

.field final synthetic this$0:Lcom/android/gallery3d/picasa/PicasaContentProvider;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/picasa/PicasaContentProvider;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 925
    iput-object p1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->this$0:Lcom/android/gallery3d/picasa/PicasaContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    new-instance v0, Lcom/android/gallery3d/picasa/PicasaApi;

    iget-object v1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->this$0:Lcom/android/gallery3d/picasa/PicasaContentProvider;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/picasa/PicasaApi;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->api:Lcom/android/gallery3d/picasa/PicasaApi;

    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->albumsAdded:Ljava/util/ArrayList;

    .line 937
    iput-boolean v2, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->albumsChanged:Z

    .line 940
    iput-boolean v2, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->photosChanged:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/picasa/PicasaContentProvider;Lcom/android/gallery3d/picasa/PicasaContentProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 925
    invoke-direct {p0, p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;-><init>(Lcom/android/gallery3d/picasa/PicasaContentProvider;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 952
    iget-object v1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->this$0:Lcom/android/gallery3d/picasa/PicasaContentProvider;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 953
    .local v0, cr:Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->albumsChanged:Z

    if-eqz v1, :cond_0

    .line 954
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 956
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->photosChanged:Z

    if-eqz v1, :cond_1

    .line 957
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 959
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->albumsChanged:Z

    .line 960
    iput-boolean v2, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->photosChanged:Z

    .line 961
    return-void
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->this$0:Lcom/android/gallery3d/picasa/PicasaContentProvider;

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;)Z
    .locals 6
    .parameter "user"

    .prologue
    .line 964
    iget-object v5, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    if-nez v5, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->reloadAccounts()V

    .line 967
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    .line 968
    .local v2, authAccounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    move-object v0, v2

    .local v0, arr$:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 969
    .local v1, auth:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    iget-object v5, v1, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 970
    iget-object v5, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->api:Lcom/android/gallery3d/picasa/PicasaApi;

    invoke-virtual {v5, v1}, Lcom/android/gallery3d/picasa/PicasaApi;->setAuth(Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;)V

    .line 971
    const/4 v5, 0x1

    .line 974
    .end local v1           #auth:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    :goto_1
    return v5

    .line 968
    .restart local v1       #auth:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 974
    .end local v1           #auth:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public reloadAccounts()V
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->this$0:Lcom/android/gallery3d/picasa/PicasaContentProvider;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/picasa/PicasaApi;->getAuthenticatedAccounts(Landroid/content/Context;)[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    .line 948
    return-void
.end method
