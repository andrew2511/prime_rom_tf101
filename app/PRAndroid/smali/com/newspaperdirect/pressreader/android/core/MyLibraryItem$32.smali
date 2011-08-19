.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$32;
.super Ljava/lang/Object;
.source "MyLibraryItem.java"

# interfaces
.implements Landroid/sax/EndElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->syncItemsList(Ljava/util/List;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

.field private final synthetic val$licenseUrls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$32;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$32;->val$licenseUrls:Ljava/util/List;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$32;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1053
    .end local p0
    :goto_0
    return-void

    .line 1052
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$32;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$32;->val$licenseUrls:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$33(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;[Ljava/lang/String;)V

    goto :goto_0
.end method
