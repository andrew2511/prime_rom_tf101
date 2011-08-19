.class Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$3;
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$3;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    const-wide/16 v2, 0x0

    .line 1380
    iget-object v0, p1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueActivationDate:Ljava/util/Date;

    .line 1381
    .local v0, date1:Ljava/util/Date;
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    .end local v0           #date1:Ljava/util/Date;
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1382
    .restart local v0       #date1:Ljava/util/Date;
    :cond_0
    iget-object v1, p2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->latestIssueActivationDate:Ljava/util/Date;

    .line 1383
    .local v1, date2:Ljava/util/Date;
    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Date;

    .end local v1           #date2:Ljava/util/Date;
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1384
    .restart local v1       #date2:Ljava/util/Date;
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    check-cast p2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    invoke-virtual {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$3;->compare(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)I

    move-result v0

    return v0
.end method
