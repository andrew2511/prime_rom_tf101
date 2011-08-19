.class Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SectionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionAdapter"
.end annotation


# instance fields
.field private articleCount:I

.field final synthetic this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    .line 66
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 67
    invoke-static {}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$000()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->add(Ljava/lang/Object;)V

    .line 68
    invoke-static {p1}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$100(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookTOC;->getTOCSections()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, section:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->add(Ljava/lang/Object;)V

    .line 71
    iget v2, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->articleCount:I

    check-cast v1, Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    .end local v1           #section:Ljava/lang/Object;
    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/ISectionTOCItem;->getArticles()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->articleCount:I

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0c009f

    const v4, 0x7f0c009e

    .line 78
    .line 79
    if-nez p2, :cond_2

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 99
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-static {v2}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$300(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)Lcom/amazon/kcp/reader/models/ColorMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/ColorMode;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-static {v2}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$300(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)Lcom/amazon/kcp/reader/models/ColorMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/ColorMode;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$000()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_4

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    const v2, 0x7f0b00cf

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget v2, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->articleCount:I

    move-object v3, v0

    .line 117
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$200(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$200(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 126
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-static {v0, v1}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$402(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;Landroid/view/View;)Landroid/view/View;

    .line 129
    :cond_0
    new-instance v0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter$1;-><init>(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_1
    return-object v1

    .line 91
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 92
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment$SectionAdapter;->this$0:Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;

    invoke-static {v1}, Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;->access$200(Lcom/amazon/kcp/periodicals/fragments/SectionListFragment;)I

    move-result v1

    if-eq p1, v1, :cond_3

    .line 94
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_3
    move-object v1, p2

    goto/16 :goto_0

    .line 112
    :cond_4
    check-cast v0, Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    .line 113
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/ISectionTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/ISectionTOCItem;->getArticles()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move-object v3, v2

    move v2, v0

    goto :goto_1
.end method
