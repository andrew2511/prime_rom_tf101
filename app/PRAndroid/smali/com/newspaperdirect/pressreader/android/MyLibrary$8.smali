.class Lcom/newspaperdirect/pressreader/android/MyLibrary$8;
.super Ljava/lang/Object;
.source "MyLibrary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary;->showConsistencyCheckFailedDialog(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$8;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$8;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method
