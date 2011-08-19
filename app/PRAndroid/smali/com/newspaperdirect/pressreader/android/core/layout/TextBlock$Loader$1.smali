.class Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$1;
.super Ljava/lang/Object;
.source "TextBlock.java"

# interfaces
.implements Landroid/sax/StartElementListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "attributes"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    invoke-direct {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;-><init>()V

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->access$0(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;)V

    .line 21
    return-void
.end method
