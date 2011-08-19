.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$22;
.super Ljava/lang/Object;
.source "MyLibraryItem.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->syncItemsList(Ljava/util/List;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$openIssues:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$22;->val$openIssues:Ljava/util/Map;

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 6
    .parameter "attributes"

    .prologue
    .line 938
    const-string v5, "status"

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 939
    .local v4, status:Ljava/lang/String;
    const-string v5, "guid"

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, guidStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 941
    .local v0, guid:Ljava/util/UUID;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 942
    :cond_0
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 943
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$22;->val$openIssues:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 944
    .local v2, issue:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 945
    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;->markReported(Ljava/lang/String;)Z

    .line 946
    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItem(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v3

    .line 947
    .local v3, myItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;->getItemOpenDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$22(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/util/Date;)V

    .line 950
    .end local v2           #issue:Ljava/lang/String;
    .end local v3           #myItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    :cond_1
    return-void
.end method
