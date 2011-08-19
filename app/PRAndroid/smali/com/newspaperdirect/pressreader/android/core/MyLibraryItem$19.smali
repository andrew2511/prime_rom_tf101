.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$19;
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

.field private final synthetic val$zoomsUrls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$19;->this$0:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$19;->val$zoomsUrls:Ljava/util/List;

    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$19;->val$zoomsUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    return-void
.end method
