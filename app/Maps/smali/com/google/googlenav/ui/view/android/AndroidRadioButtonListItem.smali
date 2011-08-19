.class public Lcom/google/googlenav/ui/view/android/AndroidRadioButtonListItem;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/AndroidRadioButtonListItem;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/AndroidRadioButtonListItem;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .locals 1

    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/AndroidRadioButtonListItem;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->toggle()V

    return-void
.end method
