.class Lcom/google/android/talk/BuddyListCombo$1;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo;->setupExpando()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;

.field final synthetic val$expandedRightView:Landroid/view/View;

.field final synthetic val$expandoButton:Landroid/widget/ImageView;

.field final synthetic val$expandoOpen:Z


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;Landroid/widget/ImageView;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$1;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iput-object p2, p0, Lcom/google/android/talk/BuddyListCombo$1;->val$expandoButton:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/talk/BuddyListCombo$1;->val$expandedRightView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/google/android/talk/BuddyListCombo$1;->val$expandoOpen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpandStateCompleted(Lcom/google/android/talk/DrawerLayout;)V
    .locals 5
    .parameter "layout"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 418
    invoke-virtual {p1}, Lcom/google/android/talk/DrawerLayout;->isExpanded()Z

    move-result v0

    .line 419
    .local v0, expanded:Z
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$1;->val$expandoButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$1;->val$expandoButton:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    const v2, 0x7f020092

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$1;->val$expandedRightView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$1;->val$expandedRightView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/google/android/talk/BuddyListCombo$1;->val$expandoOpen:Z

    if-eqz v2, :cond_3

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$1;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v1, v1, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-nez v0, :cond_5

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->setNarrowMode(Z)V

    .line 429
    return-void

    .line 420
    :cond_2
    const v2, 0x7f020091

    goto :goto_0

    .line 425
    :cond_3
    if-eqz v0, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    move v2, v3

    .line 428
    goto :goto_2
.end method

.method public onExpandStateStarted(Lcom/google/android/talk/DrawerLayout;Z)V
    .locals 2
    .parameter "layout"
    .parameter "expanding"

    .prologue
    .line 444
    if-eqz p2, :cond_0

    .line 445
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$1;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setNarrowMode(Z)V

    .line 447
    :cond_0
    return-void
.end method
