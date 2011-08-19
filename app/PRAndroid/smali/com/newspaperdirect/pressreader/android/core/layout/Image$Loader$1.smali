.class Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$1;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/sax/StartElementListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Image;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Image;)V

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Image;)V

    .line 31
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Image;

    move-result-object v0

    const-string v1, "regionguid"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Image;Ljava/util/UUID;)V

    .line 32
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Image;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Image;Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V

    .line 33
    return-void
.end method
