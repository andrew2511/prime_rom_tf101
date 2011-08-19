.class Lcom/google/android/apps/books/app/BooksActivity$1;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Lcom/google/android/apps/books/app/BooksActivity$Scene;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private moveToHome(Z)V
    .locals 11
    .parameter "allowingStateLoss"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const-string v10, "homeMenu"

    const-string v2, "carousel"

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0, v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$102(Lcom/google/android/apps/books/app/BooksActivity;Z)Z

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    .line 309
    .local v7, fm:Landroid/app/FragmentManager;
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$200(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const-string v1, "carousel"

    invoke-static {v0, v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$500(Lcom/google/android/apps/books/app/BooksActivity;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    .line 311
    .local v6, carouselFragment:Lcom/google/android/apps/books/app/VolumeCarouselFragment;
    if-eqz v6, :cond_0

    .line 312
    invoke-virtual {v6}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->rotateCarouselBackToOrigin()V

    goto :goto_0

    .line 318
    .end local v6           #carouselFragment:Lcom/google/android/apps/books/app/VolumeCarouselFragment;
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$600(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    const v1, 0x7f0e000a

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0, v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$402(Lcom/google/android/apps/books/app/BooksActivity;I)I

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$202(Lcom/google/android/apps/books/app/BooksActivity;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 325
    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 329
    .local v4, ft:Landroid/app/FragmentTransaction;
    const-string v0, "carousel"

    invoke-static {v2, v7, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 330
    const-string v0, "homeMenu"

    invoke-static {v10, v7, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 331
    const-string v0, "reader"

    invoke-static {v0, v7, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 332
    const-string v0, "readerSettings"

    invoke-static {v0, v7, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->buildFrom(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v3

    .line 336
    .local v3, args:Landroid/os/Bundle;
    const v0, 0x7f0e0007

    const-class v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    const-string v8, "carousel"

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 338
    const-class v1, Lcom/google/android/apps/books/app/HomeMenuFragment;

    const-string v0, "homeMenu"

    move v0, v9

    move-object v2, v10

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 340
    if-eqz p1, :cond_3

    .line 341
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .line 343
    :cond_3
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0
.end method


# virtual methods
.method public acceptNewPosition(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;)V
    .locals 3
    .parameter "account"
    .parameter "volumeId"
    .parameter "position"

    .prologue
    .line 708
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 709
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v2, "reader"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/app/ReaderFragment;

    .line 710
    .local v1, reader:Lcom/google/android/apps/books/app/ReaderFragment;
    if-eqz v1, :cond_0

    .line 711
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/apps/books/app/ReaderFragment;->acceptNewPosition(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;)V

    .line 713
    :cond_0
    return-void
.end method

.method public addVolumeToMyEBooks(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 664
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/apps/books/app/BooksActivity$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/books/app/BooksActivity$1$2;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    return-void
.end method

.method public authenticationFinished(Landroid/content/Intent;Ljava/lang/Exception;I)V
    .locals 3
    .parameter "intent"
    .parameter "exception"
    .parameter "requestId"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1000(Lcom/google/android/apps/books/app/BooksActivity;)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 574
    if-eqz p1, :cond_1

    .line 575
    invoke-static {p1}, Lcom/google/android/apps/books/app/BooksActivity;->markExternalIntent(Landroid/content/Intent;)V

    .line 576
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/app/BooksActivity;->startActivity(Landroid/content/Intent;)V

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public findReaderSettingsFragment()Lcom/google/android/apps/books/app/ReaderSettingsFragment;
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "readerSettings"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    return-object p0
.end method

.method public findStaticViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/app/BooksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishedPickingAccount(Landroid/accounts/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 615
    if-nez p1, :cond_1

    .line 616
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->finish()V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1600(Lcom/google/android/apps/books/app/BooksActivity;Landroid/accounts/Account;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity$1;->moveToHome()V

    goto :goto_0
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public hintHomeLoaded()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$2002(Lcom/google/android/apps/books/app/BooksActivity;Z)Z

    .line 654
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$2100(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$2100(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 656
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$2102(Lcom/google/android/apps/books/app/BooksActivity;Landroid/os/Message;)Landroid/os/Message;

    .line 658
    :cond_0
    return-void
.end method

.method public isHomeVisited()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$100(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v0

    return v0
.end method

.method public isSettingsVisible()Z
    .locals 3

    .prologue
    .line 586
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 587
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v2, "readerSettings"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    .line 589
    .local v1, readerSettings:Lcom/google/android/apps/books/app/ReaderSettingsFragment;
    if-nez v1, :cond_0

    .line 590
    const/4 v2, 0x0

    .line 592
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->isVisible()Z

    move-result v2

    goto :goto_0
.end method

.method public moveToHome()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/BooksActivity$1;->moveToHome(Z)V

    .line 350
    return-void
.end method

.method public moveToHomeAllowingStateLoss()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/BooksActivity$1;->moveToHome(Z)V

    .line 355
    return-void
.end method

.method public moveToReader(Ljava/lang/String;ZZZ)V
    .locals 11
    .parameter "volumeId"
    .parameter "updateVolumeOverview"
    .parameter "addToMyEBooks"
    .parameter "readerFadeIn"

    .prologue
    const/4 v5, 0x1

    const-string v10, "readerSettings"

    const-string v2, "reader"

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$402(Lcom/google/android/apps/books/app/BooksActivity;I)I

    .line 364
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 365
    .local v6, fm:Landroid/app/FragmentManager;
    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 369
    .local v4, ft:Landroid/app/FragmentTransaction;
    const-string v0, "carousel"

    invoke-static {v0, v6, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 370
    const-string v0, "homeMenu"

    invoke-static {v0, v6, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 371
    const-string v0, "reader"

    invoke-static {v2, v6, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 372
    const-string v0, "readerSettings"

    invoke-static {v10, v6, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 375
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/books/util/LoaderParams;->buildFrom(Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 376
    .local v3, args:Landroid/os/Bundle;
    invoke-static {v3, p2}, Lcom/google/android/apps/books/util/LoaderParams;->setUpdateVolumeOverview(Landroid/os/Bundle;Z)V

    .line 377
    invoke-static {v3, p4}, Lcom/google/android/apps/books/util/LoaderParams;->setReaderFadeIn(Landroid/os/Bundle;Z)V

    .line 378
    invoke-static {v3, p3}, Lcom/google/android/apps/books/util/LoaderParams;->setAddToMyEBooks(Landroid/os/Bundle;Z)V

    .line 382
    const v0, 0x7f0e0008

    const-class v1, Lcom/google/android/apps/books/app/ReaderFragment;

    const-string v9, "reader"

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/books/app/ReaderFragment;

    .line 384
    .local v7, reader:Lcom/google/android/apps/books/app/ReaderFragment;
    const v0, 0x7f0e0009

    const-class v1, Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    const-string v2, "readerSettings"

    move-object v2, v10

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$800(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    .line 388
    .local v8, readerSettings:Lcom/google/android/apps/books/app/ReaderSettingsFragment;
    invoke-virtual {v4, v8}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 390
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onExternalStorageException()V
    .locals 4

    .prologue
    .line 731
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 732
    .local v0, args:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 733
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 734
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksActivity$1;->showError(Landroid/os/Bundle;)V

    .line 735
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity$1;->moveToHomeAllowingStateLoss()V

    .line 738
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/app/BooksApplication;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getFileStorageManager()Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v1

    .line 739
    .local v1, fsm:Lcom/google/android/apps/books/common/FileStorageManager;
    new-instance v2, Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;

    invoke-direct {v2, v1}, Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;-><init>(Lcom/google/android/apps/books/common/FileStorageManager;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 740
    return-void
.end method

.method public openAuthenticatedUrl(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    .line 561
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 564
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 565
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1008(Lcom/google/android/apps/books/app/BooksActivity;)I

    .line 566
    const-class v2, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;

    const-string v3, "browserHelper"

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$1000(Lcom/google/android/apps/books/app/BooksActivity;)I

    move-result v5

    invoke-static {v4, p1, v5}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->create(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v1, v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$1300(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 569
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public openInternalUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "url"

    .prologue
    .line 547
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/books/app/BooksActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    :goto_0
    return-void

    .line 549
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 550
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 554
    .local v1, fm:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 555
    .local v2, ft:Landroid/app/FragmentTransaction;
    const-class v3, Lcom/google/android/apps/books/app/WebViewDialogFragment;

    const-string v4, "webViewDialog"

    const/4 v5, 0x1

    invoke-static {v3, v4, v0, v2, v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$1300(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 556
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public pickAccount()V
    .locals 3

    .prologue
    .line 608
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 609
    .local v0, fm:Landroid/app/FragmentManager;
    new-instance v1, Lcom/google/android/apps/books/app/AccountPickerFragment;

    invoke-direct {v1}, Lcom/google/android/apps/books/app/AccountPickerFragment;-><init>()V

    .line 610
    .local v1, picker:Landroid/app/DialogFragment;
    const-string v2, "accounts"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public populateActionBar(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"
    .parameter "subtitle"

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity$1;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 438
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    new-instance v2, Lcom/google/android/apps/books/app/BooksActivity$1$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/apps/books/app/BooksActivity$1$1;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;Landroid/app/ActionBar;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 395
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$402(Lcom/google/android/apps/books/app/BooksActivity;I)I

    .line 399
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$902(Lcom/google/android/apps/books/app/BooksActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 401
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1008(Lcom/google/android/apps/books/app/BooksActivity;)I

    .line 406
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$600(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v2

    const v3, 0x7f0e000a

    invoke-interface {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 411
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 412
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 413
    .local v1, ft:Landroid/app/FragmentTransaction;
    const-string v2, "carousel"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 414
    const-string v2, "homeMenu"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 415
    const-string v2, "reader"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 416
    const-string v2, "readerSettings"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 417
    const-string v2, "help"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 418
    const-string v2, "error"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 419
    const-string v2, "syncDisabled"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 420
    const-string v2, "syncError"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 421
    const-string v2, "addToMyEBooks"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 422
    const-string v2, "accessDenied"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 423
    const-string v2, "newPositionAvailable"

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 424
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 425
    return-void
.end method

.method public showConcurrentAccessDeniedDialog(I)V
    .locals 6
    .parameter "maxDevices"

    .prologue
    .line 679
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 680
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 681
    .local v1, ft:Landroid/app/FragmentTransaction;
    const-class v2, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;

    const-string v3, "accessDenied"

    invoke-static {p1}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$Arguments;->create(I)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lcom/google/android/apps/books/app/BooksActivity;->access$1300(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 683
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 684
    return-void
.end method

.method public showError(Landroid/os/Bundle;)V
    .locals 5
    .parameter "args"

    .prologue
    const-string v4, "error"

    .line 494
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 497
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 499
    .local v1, ft:Landroid/app/FragmentTransaction;
    const-string v2, "error"

    invoke-static {v4, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 500
    const-class v2, Lcom/google/android/apps/books/app/ErrorFragment;

    const-string v3, "error"

    const/4 v3, 0x0

    invoke-static {v2, v4, p1, v1, v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$1300(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 502
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public showHelp(ZLandroid/os/Bundle;)V
    .locals 5
    .parameter "visible"
    .parameter "arguments"

    .prologue
    const-string v4, "help"

    .line 477
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 480
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 482
    .local v1, ft:Landroid/app/FragmentTransaction;
    const-string v2, "help"

    invoke-static {v4, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 484
    if-eqz p1, :cond_1

    .line 485
    const-class v2, Lcom/google/android/apps/books/app/HelpFragment;

    const-string v3, "help"

    const/4 v3, 0x0

    invoke-static {v2, v4, p2, v1, v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$1300(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 488
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public showNewPositionAvailableDialog(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "volumeId"
    .parameter "position"
    .parameter "chapterTitle"
    .parameter "pageTitle"

    .prologue
    .line 691
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$1$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/app/BooksActivity$1$3;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 703
    return-void
.end method

.method public showSettings(Z)V
    .locals 6
    .parameter "visible"

    .prologue
    const v5, 0x7f100003

    .line 449
    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v4}, Lcom/google/android/apps/books/app/BooksActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v4}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 452
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v4, "readerSettings"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    .line 454
    .local v3, readerSettings:Lcom/google/android/apps/books/app/ReaderSettingsFragment;
    if-eqz v3, :cond_0

    .line 456
    invoke-virtual {v3}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->isVisible()Z

    move-result v0

    .line 457
    .local v0, alreadyVisible:Z
    if-eq p1, v0, :cond_0

    .line 459
    if-eqz p1, :cond_2

    .line 460
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->setTransitionStyle(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 462
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 463
    const/16 v4, 0x1001

    invoke-virtual {v2, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 464
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 467
    .end local v2           #ft:Landroid/app/FragmentTransaction;
    :cond_2
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->setTransitionStyle(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 469
    .restart local v2       #ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 470
    const/16 v4, 0x2002

    invoke-virtual {v2, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 471
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public startAboutVolume(Ljava/lang/String;)V
    .locals 2
    .parameter "volumeId"

    .prologue
    .line 507
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/OceanUris;->getAboutTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 508
    .local v0, aboutUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/books/util/Config;->isNativeFinskyBooksAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1500(Lcom/google/android/apps/books/app/BooksActivity;Landroid/net/Uri;)V

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/BooksActivity$1;->openAuthenticatedUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startBuyVolume(Ljava/lang/String;)V
    .locals 2
    .parameter "volumeId"

    .prologue
    .line 517
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/OceanUris;->getBuyTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 518
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/books/util/Config;->isNativeFinskyBooksAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1500(Lcom/google/android/apps/books/app/BooksActivity;Landroid/net/Uri;)V

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/BooksActivity$1;->openAuthenticatedUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startForcedSync()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 642
    new-instance v0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/BooksActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksActivity;->access$1700(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;-><init>(Landroid/content/ContentResolver;Ljava/util/concurrent/Future;Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 646
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;-><init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 647
    return-void
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 537
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/OceanUris;->buildSearchIntent(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 538
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/books/util/Config;->isNativeFinskyBooksAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1500(Lcom/google/android/apps/books/app/BooksActivity;Landroid/net/Uri;)V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/BooksActivity$1;->openAuthenticatedUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startShare(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 9
    .parameter "volumeId"
    .parameter "volumeTitle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 717
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksActivity;->access$1400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/apps/books/util/OceanUris;->getShareUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 720
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const-string v3, "android.intent.extra.SUBJECT"

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v5, 0x7f0b0083

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/books/app/BooksActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->markExternalIntent(Landroid/content/Intent;)V

    .line 724
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const v4, 0x7f0b0082

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p2, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/books/app/BooksActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, dialogTitle:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/app/BooksActivity;->startActivity(Landroid/content/Intent;)V

    .line 727
    return-void
.end method

.method public startShop()V
    .locals 2

    .prologue
    .line 527
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/util/OceanUris;->getShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v0

    .line 528
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/books/util/Config;->isNativeFinskyBooksAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1500(Lcom/google/android/apps/books/app/BooksActivity;Landroid/net/Uri;)V

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/BooksActivity$1;->openAuthenticatedUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateNightMode()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->access$1100(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksActivity;->access$1200(Lcom/google/android/apps/books/app/BooksActivity;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->recreate()V

    .line 433
    :cond_0
    return-void
.end method
