.class Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$2;
.super Ljava/lang/Object;
.source "Article.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Landroid/sax/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "attributes"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Article$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    move-result-object v0

    const-string v1, "file"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Article;Ljava/lang/String;)V

    .line 50
    return-void
.end method
