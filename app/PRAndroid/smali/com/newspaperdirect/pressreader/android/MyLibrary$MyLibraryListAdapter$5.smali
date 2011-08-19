.class Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$5;
.super Ljava/lang/Object;
.source "MyLibrary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->deleteAllItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$5;->this$1:Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 538
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 539
    return-void
.end method
