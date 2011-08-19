.class public abstract Lcom/android/vending/api/MultiFileDatabaseHelper;
.super Ljava/lang/Object;
.source "MultiFileDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLegacyNames:[Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNewVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "newVersion"
    .parameter "legacyNames"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mContext:Landroid/content/Context;

    .line 50
    iput p3, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mNewVersion:I

    .line 51
    iput-object p2, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mName:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mLegacyNames:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/api/MultiFileDatabaseHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/api/MultiFileDatabaseHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/api/MultiFileDatabaseHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mNewVersion:I

    return v0
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 7

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    .local v0, databases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 59
    .local v3, oldDatabase:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mLegacyNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 60
    iget-object v5, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mLegacyNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 61
    iget-object v5, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mLegacyNames:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 67
    :cond_0
    if-eqz v3, :cond_2

    .line 68
    iget-object v5, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 69
    .local v4, oldPath:Ljava/io/File;
    iget-object v5, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/vending/api/MultiFileDatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 70
    .local v2, newPath:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 73
    :cond_1
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 77
    .end local v2           #newPath:Ljava/io/File;
    .end local v4           #oldPath:Ljava/io/File;
    :cond_2
    new-instance v5, Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;

    invoke-direct {v5, p0}, Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;-><init>(Lcom/android/vending/api/MultiFileDatabaseHelper;)V

    invoke-virtual {v5}, Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v0           #databases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v3           #oldDatabase:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
