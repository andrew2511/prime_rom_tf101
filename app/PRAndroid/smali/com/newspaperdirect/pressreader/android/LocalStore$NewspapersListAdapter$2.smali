.class Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$2;
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$2;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    .line 1371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 1373
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getRate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    check-cast p2, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    invoke-virtual {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter$2;->compare(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)I

    move-result v0

    return v0
.end method
