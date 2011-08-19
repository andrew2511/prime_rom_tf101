.class Lcom/newspaperdirect/pressreader/android/core/layout/Issue$2;
.super Ljava/lang/Object;
.source "Issue.java"

# interfaces
.implements Landroid/sax/EndElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->loadFromFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

.field private final synthetic val$loader:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$2;->val$loader:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$2;->val$loader:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$2;->val$loader:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;->reset()V

    .line 126
    return-void
.end method
