.class Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$2;
.super Ljava/lang/Object;
.source "Catalog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->updateLater()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->access$7(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)V

    .line 114
    return-void
.end method
