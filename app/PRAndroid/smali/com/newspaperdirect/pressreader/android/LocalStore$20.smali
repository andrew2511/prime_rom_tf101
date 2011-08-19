.class Lcom/newspaperdirect/pressreader/android/LocalStore$20;
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$20;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 705
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$20;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$43(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    move-result-object v0

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->SupplementList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    if-ne v0, v1, :cond_0

    .line 706
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$20;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$39(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V

    .line 713
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$20;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$20(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)V

    .line 710
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$20;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$21(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$20;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$4(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    goto :goto_0
.end method
