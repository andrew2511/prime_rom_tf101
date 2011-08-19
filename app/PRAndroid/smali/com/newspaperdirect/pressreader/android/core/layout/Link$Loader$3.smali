.class Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$3;
.super Ljava/lang/Object;
.source "Link.java"

# interfaces
.implements Landroid/sax/EndElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;-><init>(Landroid/sax/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;Ljava/util/List;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$3;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Link;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method
