.class Lcom/android/internal/app/ActionBarImpl$SwitchSelectedTabViewFragment;
.super Landroid/app/Fragment;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchSelectedTabViewFragment"
.end annotation


# instance fields
.field private mSelectedTabIndex:I

.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ActionBarImpl;I)V
    .registers 3
    .parameter
    .parameter "oldSelectedTab"

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$SwitchSelectedTabViewFragment;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 901
    iput p2, p0, Lcom/android/internal/app/ActionBarImpl$SwitchSelectedTabViewFragment;->mSelectedTabIndex:I

    .line 902
    return-void
.end method


# virtual methods
.method public onDetach()V
    .registers 3

    .prologue
    .line 906
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl$SwitchSelectedTabViewFragment;->mSelectedTabIndex:I

    if-ltz v0, :cond_19

    iget v0, p0, Lcom/android/internal/app/ActionBarImpl$SwitchSelectedTabViewFragment;->mSelectedTabIndex:I

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$SwitchSelectedTabViewFragment;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 907
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$SwitchSelectedTabViewFragment;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$500(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl$SwitchSelectedTabViewFragment;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setTabSelected(I)V

    .line 909
    :cond_19
    return-void
.end method
