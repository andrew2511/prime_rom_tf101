.class Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$2;
.super Ljava/lang/Object;
.source "SectionListFragment.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->setStatusBarVisible(Landroid/view/Window;Z)V

    .line 218
    return-void
.end method
