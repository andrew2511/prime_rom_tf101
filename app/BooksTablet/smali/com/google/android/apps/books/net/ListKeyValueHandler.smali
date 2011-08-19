.class public Lcom/google/android/apps/books/net/ListKeyValueHandler;
.super Ljava/lang/Object;
.source "ListKeyValueHandler.java"

# interfaces
.implements Lcom/google/android/apps/books/net/KeyValueHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/net/KeyValueHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/ContentValues;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContentValues:Landroid/content/ContentValues;

.field private final mContentValuesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValuesList:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public endRow()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValuesList:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValues:Landroid/content/ContentValues;

    .line 57
    return-void
.end method

.method public bridge synthetic getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/ListKeyValueHandler;->getContent()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValuesList:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValuesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    return-void
.end method

.method public setColumn(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "columnName"
    .parameter "value"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setColumn(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .parameter "columnName"
    .parameter "value"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    :cond_0
    return-void
.end method

.method public setColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "columnName"
    .parameter "value"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 91
    return-void
.end method

.method public startRow()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/net/ListKeyValueHandler;->mContentValues:Landroid/content/ContentValues;

    .line 49
    return-void
.end method
