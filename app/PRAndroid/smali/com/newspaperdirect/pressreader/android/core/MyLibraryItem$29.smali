.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$29;
.super Ljava/lang/Object;
.source "MyLibraryItem.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


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


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$29;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$29;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$29;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object p0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$31(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/lang/String;)V

    .line 1027
    :cond_0
    return-void
.end method
