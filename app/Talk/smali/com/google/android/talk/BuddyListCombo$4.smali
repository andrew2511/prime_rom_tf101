.class Lcom/google/android/talk/BuddyListCombo$4;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/BuddyListCombo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$4;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastChatClosed()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$4;->this$0:Lcom/google/android/talk/BuddyListCombo;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-static {v0, v1}, Lcom/google/android/talk/BuddyListCombo;->access$200(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 536
    return-void
.end method

.method public onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 1
    .parameter "buddyInfo"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$4;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0, p1}, Lcom/google/android/talk/BuddyListCombo;->access$100(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    .line 531
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "title"
    .parameter "presence"
    .parameter "clientType"

    .prologue
    .line 552
    if-nez p1, :cond_0

    .line 559
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$4;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$500(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$4;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$4;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$700(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public showRoster()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method public startVideoChatAnimation()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$4;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$400(Lcom/google/android/talk/BuddyListCombo;)V

    .line 544
    return-void
.end method

.method public updateOtrStatus(Z)V
    .locals 0
    .parameter "isOtr"

    .prologue
    .line 527
    return-void
.end method
