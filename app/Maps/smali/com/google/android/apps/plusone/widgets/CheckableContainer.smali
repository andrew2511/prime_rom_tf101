.class public Lcom/google/android/apps/plusone/widgets/CheckableContainer;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/plusone/widgets/CheckableContainer;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/plusone/widgets/CheckableContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03014f

    invoke-static {v0, v1, p0}, Lcom/google/android/apps/plusone/widgets/CheckableContainer;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/apps/plusone/widgets/CheckableContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plusone/widgets/CheckableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/apps/plusone/widgets/CheckableContainer;->a:Landroid/widget/CheckBox;

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/plusone/widgets/CheckableContainer;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/plusone/widgets/CheckableContainer;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
