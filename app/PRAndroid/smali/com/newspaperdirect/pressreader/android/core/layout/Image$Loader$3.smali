.class Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/sax/EndElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;-><init>(Landroid/sax/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Image;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->getTextBlock()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Image;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V

    .line 43
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->reset()V

    .line 44
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Image;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->getTextBlock()Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Image;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V

    .line 45
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->reset()V

    .line 46
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$6(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;Ljava/util/List;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Image;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method
