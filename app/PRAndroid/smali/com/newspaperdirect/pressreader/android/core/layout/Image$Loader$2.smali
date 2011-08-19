.class Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$2;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 2
    .parameter "body"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Image$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Image;

    move-result-object v0

    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->create(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Image;->access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Image;Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;)V

    .line 38
    return-void
.end method
