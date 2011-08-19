.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$10;
.super Ljava/lang/Object;
.source "MyLibraryItem.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->startZoomsDownloadTask()V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$10;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$10;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$13(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;I)V

    .line 574
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$10;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$2(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V

    .line 575
    return-void
.end method
