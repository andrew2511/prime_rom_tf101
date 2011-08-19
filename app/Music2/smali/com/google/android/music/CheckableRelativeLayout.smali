.class public Lcom/google/android/music/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

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

    sput-object v0, Lcom/google/android/music/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/music/CheckableRelativeLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 29
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 30
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/google/android/music/CheckableRelativeLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    sget-object v1, Lcom/google/android/music/CheckableRelativeLayout;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/google/android/music/CheckableRelativeLayout;->mergeDrawableStates([I[I)[I

    .line 33
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/music/CheckableRelativeLayout;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 46
    iput-boolean p1, p0, Lcom/google/android/music/CheckableRelativeLayout;->mChecked:Z

    .line 47
    invoke-virtual {p0}, Lcom/google/android/music/CheckableRelativeLayout;->refreshDrawableState()V

    .line 49
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/music/CheckableRelativeLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/CheckableRelativeLayout;->setChecked(Z)V

    .line 38
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
