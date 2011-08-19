.class Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$3;
.super Ljava/lang/Object;
.source "TextBlock.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;-><init>(Landroid/sax/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 2
    .parameter "body"

    .prologue
    .line 30
    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->create(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v0

    .line 31
    .local v0, rect:Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    return-void
.end method
