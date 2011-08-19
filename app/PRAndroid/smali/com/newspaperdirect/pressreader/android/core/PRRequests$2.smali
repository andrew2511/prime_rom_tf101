.class Lcom/newspaperdirect/pressreader/android/core/PRRequests$2;
.super Ljava/lang/Object;
.source "PRRequests.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/PRRequests;->getThumbnailUrls()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 48
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->access$0()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->access$1(Ljava/util/List;)V

    .line 49
    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->access$0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method
