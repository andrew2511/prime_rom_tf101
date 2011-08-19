.class public Lcom/android/vending/layout/CheckedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckedRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/android/vending/layout/CheckedRelativeLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vending/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/vending/layout/CheckedRelativeLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 58
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 59
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/android/vending/layout/CheckedRelativeLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lcom/android/vending/layout/CheckedRelativeLayout;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/android/vending/layout/CheckedRelativeLayout;->mergeDrawableStates([I[I)[I

    .line 62
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/vending/layout/CheckedRelativeLayout;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 51
    iput-boolean p1, p0, Lcom/android/vending/layout/CheckedRelativeLayout;->mChecked:Z

    .line 52
    invoke-virtual {p0}, Lcom/android/vending/layout/CheckedRelativeLayout;->refreshDrawableState()V

    .line 54
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/vending/layout/CheckedRelativeLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vending/layout/CheckedRelativeLayout;->setChecked(Z)V

    .line 37
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
