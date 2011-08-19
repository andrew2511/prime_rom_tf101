.class public Lcom/google/android/apps/books/widget/CheckedImageView;
.super Landroid/widget/ImageView;
.source "CheckedImageView.java"

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
    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/widget/CheckedImageView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/CheckedImageView;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 21
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 22
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/CheckedImageView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    sget-object v1, Lcom/google/android/apps/books/widget/CheckedImageView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/CheckedImageView;->mergeDrawableStates([I[I)[I

    .line 25
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/CheckedImageView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 38
    iput-boolean p1, p0, Lcom/google/android/apps/books/widget/CheckedImageView;->mChecked:Z

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/CheckedImageView;->refreshDrawableState()V

    .line 41
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/CheckedImageView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/CheckedImageView;->setChecked(Z)V

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
