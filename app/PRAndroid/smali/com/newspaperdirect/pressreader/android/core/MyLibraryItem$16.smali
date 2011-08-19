.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$16;
.super Ljava/lang/Object;
.source "MyLibraryItem.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDownloadUrls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$16;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$16;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$18(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/lang/String;)V

    .line 810
    return-void
.end method
