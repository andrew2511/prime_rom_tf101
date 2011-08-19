.class Lcom/newspaperdirect/pressreader/android/LocalStore$16;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->initToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$16;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$16;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$14(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    move-result-object v0

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->Rate:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    if-ne v0, v1, :cond_0

    .line 678
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$16;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;->Rate:Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$9(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eSort;)V

    .line 677
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$16;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$41(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    goto :goto_0
.end method
