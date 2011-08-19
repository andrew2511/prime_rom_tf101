.class Lcom/newspaperdirect/pressreader/android/LocalStore$13;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->initToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$13;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$13;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$37(Lcom/newspaperdirect/pressreader/android/LocalStore;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$13;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$38(Lcom/newspaperdirect/pressreader/android/LocalStore;Z)V

    .line 654
    :goto_0
    return-void

    .line 635
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 653
    :goto_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$13;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$40(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    goto :goto_0

    .line 637
    :pswitch_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$13;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->CountryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;)V

    .line 638
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$13;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$4(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    goto :goto_1

    .line 641
    :pswitch_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$13;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->LanguageList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;)V

    .line 642
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$13;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$4(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    goto :goto_1

    .line 645
    :pswitch_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$13;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->FavoriteList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;)V

    .line 646
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$13;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$39(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V

    goto :goto_1

    .line 649
    :pswitch_3
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$13;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->RecentList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;)V

    .line 650
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$13;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$39(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V

    goto :goto_1

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
