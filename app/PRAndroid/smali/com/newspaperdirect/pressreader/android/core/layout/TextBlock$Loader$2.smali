.class Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$2;
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader$2;->this$1:Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;->access$1(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock$Loader;)Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;->access$0(Lcom/newspaperdirect/pressreader/android/core/layout/TextBlock;Ljava/lang/String;)V

    .line 26
    return-void
.end method
