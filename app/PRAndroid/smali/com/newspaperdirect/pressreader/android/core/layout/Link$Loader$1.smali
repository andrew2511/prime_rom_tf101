.class Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$1;
.super Ljava/lang/Object;
.source "Link.java"

# interfaces
.implements Landroid/sax/StartElementListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Link;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Link;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Link;)V

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/Link;)V

    .line 23
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Link;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Link;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Link;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Link$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/Link;

    move-result-object v0

    const-string v1, "target"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Link;->access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Link;Ljava/lang/String;)V

    .line 25
    return-void
.end method
