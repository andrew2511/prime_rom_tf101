.class public Lcom/android/contacts/editor/KindSectionView;
.super Landroid/widget/LinearLayout;
.source "KindSectionView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# instance fields
.field private mAddPlusButton:Landroid/widget/ImageButton;

.field private mAddPlusButtonContainer:Landroid/view/View;

.field private mEditors:Landroid/view/ViewGroup;

.field private mKind:Lcom/android/contacts/model/AccountType$DataKind;

.field private mMinLineItemHeight:I

.field private mReadOnly:Z

.field private mState:Lcom/android/contacts/model/EntityDelta;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleString:Ljava/lang/String;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/KindSectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/KindSectionView;->mMinLineItemHeight:I

    .line 69
    return-void
.end method

.method private createEditorView(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/view/View;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 196
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$DataKind;->editorClass:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 197
    new-instance v1, Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;)V

    move-object v7, v1

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->isEnabled()Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    instance-of v1, v7, Lcom/android/contacts/editor/Editor;

    if-eqz v1, :cond_0

    .line 211
    move-object v0, v7

    check-cast v0, Lcom/android/contacts/editor/Editor;

    move-object v1, v0

    .line 212
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-boolean v5, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    iget-object v6, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/contacts/editor/Editor;->setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 213
    invoke-interface {v1, p0}, Lcom/android/contacts/editor/Editor;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 214
    invoke-interface {v1, v8}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    return-object v7

    .line 200
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$DataKind;->editorClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v1

    .line 205
    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot allocate editor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-object v3, v3, Lcom/android/contacts/model/AccountType$DataKind;->editorClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isEmptyNoop(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 224
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isNoop()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 231
    :goto_0
    return v4

    .line 225
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 226
    .local v1, fieldCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 227
    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v0, v4, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 228
    .local v0, column:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    .line 226
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 231
    .end local v0           #column:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private updateVisible()V
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setVisibility(I)V

    .line 236
    return-void

    .line 235
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public addItem()V
    .locals 5

    .prologue
    .line 252
    const/4 v2, 0x0

    .line 254
    .local v2, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-boolean v3, v3, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    if-nez v3, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 286
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 261
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 262
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 267
    .end local v0           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v2       #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_1
    if-nez v2, :cond_2

    .line 268
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    invoke-static {v3, v4}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 271
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/contacts/editor/KindSectionView;->createEditorView(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/view/View;

    move-result-object v1

    .line 272
    .local v1, newField:Landroid/view/View;
    new-instance v3, Lcom/android/contacts/editor/KindSectionView$2;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/editor/KindSectionView$2;-><init>(Lcom/android/contacts/editor/KindSectionView;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/editor/KindSectionView;->post(Ljava/lang/Runnable;)Z

    .line 282
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddVisible()V

    .line 285
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateVisible()V

    goto :goto_0
.end method

.method public getEditorCount()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getKind()Lcom/android/contacts/model/AccountType$DataKind;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public onDeleted(Lcom/android/contacts/editor/Editor;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddVisible()V

    .line 135
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateVisible()V

    .line 136
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setDrawingCacheEnabled(Z)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 111
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    .line 113
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddPlusButtonContainer:Landroid/view/View;

    .line 114
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddPlusButton:Landroid/widget/ImageButton;

    .line 115
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddPlusButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/contacts/editor/KindSectionView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/KindSectionView$1;-><init>(Lcom/android/contacts/editor/KindSectionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitle:Landroid/widget/TextView;

    .line 129
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 88
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 90
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddPlusButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, lastEditor:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 97
    .local v1, top:I
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddPlusButtonContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mAddPlusButtonContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mAddPlusButtonContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/editor/KindSectionView;->mAddPlusButtonContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public onRequest(I)V
    .locals 0
    .parameter "request"

    .prologue
    .line 142
    return-void
.end method

.method public rebuildFromState()V
    .locals 5

    .prologue
    .line 172
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v1

    .line 177
    .local v1, hasEntries:Z
    if-eqz v1, :cond_1

    .line 178
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 180
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->isEmptyNoop(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->createEditorView(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/view/View;

    goto :goto_0

    .line 186
    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 74
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 76
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddPlusButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddPlusButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 84
    :cond_1
    return-void

    .line 82
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setState(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 3
    .parameter "kind"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    const/4 v2, -0x1

    .line 145
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    .line 146
    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 147
    iput-boolean p3, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    .line 148
    iput-object p4, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 150
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setId(I)V

    .line 153
    iget v0, p1, Lcom/android/contacts/model/AccountType$DataKind;->titleRes:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/android/contacts/model/AccountType$DataKind;->titleRes:I

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->rebuildFromState()V

    .line 159
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddVisible()V

    .line 160
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateVisible()V

    .line 161
    return-void

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/contacts/model/AccountType$DataKind;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected updateAddVisible()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 241
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-boolean v2, v2, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    if-nez v2, :cond_0

    .line 242
    const/4 v1, 0x0

    .line 248
    .local v1, isVisible:Z
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddPlusButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 249
    return-void

    .line 245
    .end local v1           #isVisible:Z
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    invoke-static {v2, v3}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v0

    .line 246
    .local v0, canInsert:Z
    iget-boolean v2, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .restart local v1       #isVisible:Z
    :goto_2
    goto :goto_0

    .end local v1           #isVisible:Z
    :cond_1
    move v1, v4

    goto :goto_2

    .line 248
    .end local v0           #canInsert:Z
    .restart local v1       #isVisible:Z
    :cond_2
    const/4 v3, 0x4

    goto :goto_1
.end method
