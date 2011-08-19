.class public Lcom/google/android/gm/DefaultComposeLayout;
.super Lcom/google/android/gm/ComposeLayout;
.source "DefaultComposeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mAddCc:Landroid/view/MenuItem;

.field private mComposeArea:Lcom/google/android/gm/ComposeAreaController;

.field private mComposeMode:I

.field private mComposeModeButton:Landroid/widget/Spinner;

.field protected final mController:Lcom/google/android/gm/ComposeController;

.field private final mParent:Landroid/app/Activity;

.field private mRemoveCc:Landroid/view/MenuItem;

.field private mSaveButton:Landroid/widget/ImageView;

.field private mSendButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;)V
    .locals 1
    .parameter "parent"
    .parameter "controller"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gm/ComposeLayout;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeMode:I

    .line 46
    iput-object p1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    .line 48
    return-void
.end method


# virtual methods
.method public enableSave(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 112
    return-void
.end method

.method public enableSend(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mSendButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 107
    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getComposeArea()Lcom/google/android/gm/ComposeAreaController;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    return-object v0
.end method

.method public hideOrShowCcBcc(ZZ)V
    .locals 3
    .parameter "show"
    .parameter "updateFields"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mRemoveCc:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    if-eqz p1, :cond_2

    .line 135
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mRemoveCc:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 136
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddCc:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 137
    if-eqz p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/ComposeAreaController;->hideOrShowCcBcc(Z)V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mRemoveCc:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddCc:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 143
    if-eqz p2, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeAreaController;->hideOrShowCcBcc(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 85
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    invoke-interface {v1, v2}, Lcom/google/android/gm/ComposeController;->doSend(Z)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    invoke-interface {v1, v2}, Lcom/google/android/gm/ComposeController;->doSave(Z)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0032
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Z)Z
    .locals 2
    .parameter "menu"
    .parameter "isReplyOrForward"

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 152
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f11

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 154
    const/4 v1, 0x1

    return v1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 188
    if-nez p3, :cond_1

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeMode:I

    .line 195
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mController:Lcom/google/android/gm/ComposeController;

    iget v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeMode:I

    invoke-interface {v0, v1}, Lcom/google/android/gm/ComposeController;->setComposeMode(I)V

    .line 196
    return-void

    .line 190
    :cond_1
    if-ne p3, v0, :cond_2

    .line 191
    iput v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeMode:I

    goto :goto_0

    .line 192
    :cond_2
    if-ne p3, v1, :cond_0

    .line 193
    iput v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeMode:I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOrientationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 68
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 117
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->currentlyShowingCcBcc()Z

    move-result v0

    .line 119
    .local v0, showingCcBcc:Z
    const v1, 0x7f0e009f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mRemoveCc:Landroid/view/MenuItem;

    .line 120
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mRemoveCc:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    const v1, 0x7f0e002a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddCc:Landroid/view/MenuItem;

    .line 123
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mAddCc:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 125
    return v3

    .line 123
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setComposeArea(Lcom/google/android/gm/ComposeAreaController;)V
    .locals 0
    .parameter "area"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    .line 98
    return-void
.end method

.method public setSaved()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public setupButtons()V
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f0e0032

    invoke-virtual {p0, v0}, Lcom/google/android/gm/DefaultComposeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mSendButton:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mSendButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Lcom/google/android/gm/DefaultComposeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mSaveButton:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/google/android/gm/DefaultComposeLayout;->mSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method public setupLayout()V
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    const v2, 0x7f040007

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 54
    const v1, 0x7f0e0017

    invoke-virtual {p0, v1}, Lcom/google/android/gm/DefaultComposeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 55
    .local v0, scrollArea:Landroid/widget/ScrollView;
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultComposeLayout;->getComposeArea()Lcom/google/android/gm/ComposeAreaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gm/DefaultComposeLayout;->setupButtons()V

    .line 57
    iget-object v1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method public shouldShowToast(I)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public updateComposeMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    .line 159
    iput p1, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeMode:I

    .line 160
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeModeButton:Landroid/widget/Spinner;

    if-nez v2, :cond_0

    .line 161
    const v2, 0x7f0e0031

    invoke-virtual {p0, v2}, Lcom/google/android/gm/DefaultComposeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeModeButton:Landroid/widget/Spinner;

    .line 162
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, modes:[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mParent:Landroid/app/Activity;

    const v3, 0x7f04000b

    const v4, 0x7f0e0034

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 165
    .local v0, composeModeAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeModeButton:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 166
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeModeButton:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 169
    .end local v0           #composeModeAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #modes:[Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeModeButton:Landroid/widget/Spinner;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 172
    const v2, 0x7f0e0030

    invoke-virtual {p0, v2}, Lcom/google/android/gm/DefaultComposeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 175
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeModeButton:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeModeButton:Landroid/widget/Spinner;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 181
    :pswitch_3
    iget-object v2, p0, Lcom/google/android/gm/DefaultComposeLayout;->mComposeModeButton:Landroid/widget/Spinner;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
