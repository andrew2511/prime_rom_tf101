.class Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1$1;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
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
        "Lcom/newspaperdirect/pressreader/android/core/RecentItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1;

    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/newspaperdirect/pressreader/android/core/RecentItem;Lcom/newspaperdirect/pressreader/android/core/RecentItem;)I
    .locals 2
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 1495
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getOrderDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->getOrderDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    check-cast p2, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    invoke-virtual {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/LocalStore$RecentItemsListAdapter$1$1;->compare(Lcom/newspaperdirect/pressreader/android/core/RecentItem;Lcom/newspaperdirect/pressreader/android/core/RecentItem;)I

    move-result v0

    return v0
.end method
