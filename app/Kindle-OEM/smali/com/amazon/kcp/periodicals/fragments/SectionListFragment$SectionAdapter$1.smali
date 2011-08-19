.class Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;
.super Ljava/lang/Object;
.source "SectionListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;->this$1:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;

    iput p2, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;->this$1:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$200(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;->this$1:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    iget v1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$202(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;I)I

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;->this$1:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$400(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;->this$1:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$400(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 140
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 143
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;->this$1:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-static {v0, p1}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$402(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;Landroid/view/View;)Landroid/view/View;

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;->this$1:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$500(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)Lcom/amazon/kcp/periodicals/fragments/SectionListListener;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Lcom/amazon/kcp/periodicals/fragments/SectionListListener;->onSectionSelected(I)V

    .line 147
    return-void
.end method
