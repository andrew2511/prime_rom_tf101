.class Lcom/newspaperdirect/pressreader/android/MyLibrary$3;
.super Ljava/lang/Object;
.source "MyLibrary.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$3;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderComplete(Z)V
    .locals 1
    .parameter "successfully"

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$3;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$4(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->refreshList()V

    .line 250
    :cond_0
    return-void
.end method
