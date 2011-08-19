.class public Lcom/asus/reader/ui/PackageItem;
.super Landroid/widget/LinearLayout;
.source "PackageItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChecked:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/asus/reader/ui/PackageItem;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-object p1, p0, Lcom/asus/reader/ui/PackageItem;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-object p1, p0, Lcom/asus/reader/ui/PackageItem;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/asus/reader/ui/PackageItem;->mChecked:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/PackageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/asus/reader/ui/PackageItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 66
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/asus/reader/ui/PackageItem;->mChecked:Z

    .line 70
    iget-object v0, p0, Lcom/asus/reader/ui/PackageItem;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/asus/reader/ui/PackageItem;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/asus/reader/ui/PackageItem;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/PackageItem;->setChecked(Z)V

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
