.class Lcom/newspaperdirect/pressreader/android/LocalStore$8$1;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$OnCatalogLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$8;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$8$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$8;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCatalogLoaded()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$8$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$8;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$8;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$8;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$30(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    .line 402
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$8$1;->this$1:Lcom/newspaperdirect/pressreader/android/LocalStore$8;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$8;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore$8;)Lcom/newspaperdirect/pressreader/android/LocalStore;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$31(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    .line 403
    return-void
.end method
