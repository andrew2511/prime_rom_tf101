.class Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$1;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->sort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)I
    .locals 10
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 1336
    const/16 v5, -0x270f

    .line 1337
    .local v5, result:I
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_4

    .line 1338
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1339
    .local v4, privilegedCids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v0

    .line 1340
    .local v0, cid1:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 1341
    .local v1, cid2:Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1342
    .local v2, isObj1Privileged:Z
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1343
    .local v3, isObj2Privileged:Z
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 1344
    const/4 v5, -0x1

    .line 1363
    .end local v0           #cid1:Ljava/lang/String;
    .end local v1           #cid2:Ljava/lang/String;
    .end local v2           #isObj1Privileged:Z
    .end local v3           #isObj2Privileged:Z
    .end local v4           #privilegedCids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/16 v8, -0x270f

    if-ne v5, v8, :cond_1

    .line 1364
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    .line 1366
    :cond_1
    return v5

    .line 1345
    .restart local v0       #cid1:Ljava/lang/String;
    .restart local v1       #cid2:Ljava/lang/String;
    .restart local v2       #isObj1Privileged:Z
    .restart local v3       #isObj2Privileged:Z
    .restart local v4       #privilegedCids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 1346
    const/4 v5, 0x1

    goto :goto_0

    .line 1347
    :cond_3
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1348
    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1349
    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v5

    .line 1348
    goto :goto_0

    .line 1351
    .end local v0           #cid1:Ljava/lang/String;
    .end local v1           #cid2:Ljava/lang/String;
    .end local v2           #isObj1Privileged:Z
    .end local v3           #isObj2Privileged:Z
    .end local v4           #privilegedCids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 1352
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 1353
    .local v6, title1:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 1354
    .local v7, title2:Ljava/lang/String;
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1355
    .restart local v2       #isObj1Privileged:Z
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 1356
    .restart local v3       #isObj2Privileged:Z
    if-eqz v2, :cond_5

    if-nez v3, :cond_5

    .line 1357
    const/4 v5, -0x1

    goto :goto_0

    .line 1358
    :cond_5
    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    .line 1359
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    check-cast p2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    invoke-virtual {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$1;->compare(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)I

    move-result v0

    return v0
.end method
