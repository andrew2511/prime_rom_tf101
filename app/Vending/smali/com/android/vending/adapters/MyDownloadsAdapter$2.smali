.class final Lcom/android/vending/adapters/MyDownloadsAdapter$2;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/vending/model/Asset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/vending/model/Asset;Lcom/android/vending/model/Asset;)I
    .locals 5
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, title1:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, title2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 89
    .local v2, titleComp:I
    if-eqz v2, :cond_0

    move v3, v2

    .line 93
    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    check-cast p1, Lcom/android/vending/model/Asset;

    .end local p1
    check-cast p2, Lcom/android/vending/model/Asset;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/adapters/MyDownloadsAdapter$2;->compare(Lcom/android/vending/model/Asset;Lcom/android/vending/model/Asset;)I

    move-result v0

    return v0
.end method
