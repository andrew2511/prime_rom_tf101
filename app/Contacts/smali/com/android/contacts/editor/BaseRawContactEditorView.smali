.class public abstract Lcom/android/contacts/editor/BaseRawContactEditorView;
.super Landroid/widget/LinearLayout;
.source "BaseRawContactEditorView.java"


# instance fields
.field private mBody:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field private mExpanded:Z

.field private mHasPhotoEditor:Z

.field private mHeader:Landroid/view/View;

.field private mPhoto:Lcom/android/contacts/editor/PhotoEditorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/BaseRawContactEditorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    return v0
.end method


# virtual methods
.method public getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    return-object v0
.end method

.method public abstract getRawContactId()J
.end method

.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoEditorView;->hasSetPhoto()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 70
    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHeader:Landroid/view/View;

    .line 71
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mBody:Landroid/view/View;

    .line 72
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mDivider:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHeader:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/BaseRawContactEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/BaseRawContactEditorView$1;-><init>(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    .line 81
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 82
    return-void
.end method

.method setExpanded(Z)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 140
    .local v0, newValue:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    if-ne v0, v1, :cond_1

    .line 144
    :goto_1
    return-void

    .line 137
    .end local v0           #newValue:Z
    :cond_0
    move v0, p1

    .restart local v0       #newValue:Z
    goto :goto_0

    .line 141
    :cond_1
    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    .line 142
    iget-object v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mBody:Landroid/view/View;

    if-eqz v0, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_3

    move v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v2, v4

    .line 142
    goto :goto_2

    :cond_3
    move v2, v3

    .line 143
    goto :goto_3
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 0
    .parameter "groupMetaData"

    .prologue
    .line 85
    return-void
.end method

.method protected setHasPhotoEditor(Z)V
    .locals 2
    .parameter "hasPhotoEditor"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setVisibility(I)V

    .line 98
    return-void

    .line 97
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    return-void
.end method

.method public abstract setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;)V
.end method
