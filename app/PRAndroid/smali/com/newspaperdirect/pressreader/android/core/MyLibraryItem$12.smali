.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$12;
.super Ljava/lang/Object;
.source "MyLibraryItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getZoomsUrlsThenStartDownloading()V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$12;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$12;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$15(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 619
    return-void
.end method
