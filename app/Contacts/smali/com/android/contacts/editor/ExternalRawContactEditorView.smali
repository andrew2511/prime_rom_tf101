.class public Lcom/android/contacts/editor/ExternalRawContactEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "ExternalRawContactEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ExternalRawContactEditorView$Listener;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mEditExternallyButton:Landroid/widget/Button;

.field private mGeneral:Landroid/view/ViewGroup;

.field private mHeaderAccountName:Landroid/widget/TextView;

.field private mHeaderAccountType:Landroid/widget/TextView;

.field private mHeaderIcon:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/editor/ExternalRawContactEditorView$Listener;

.field private mName:Landroid/widget/TextView;

.field private mPhotoStub:Landroid/view/View;

.field private mRawContactId:J

.field private mReadOnlyWarning:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mRawContactId:J

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mRawContactId:J

    .line 83
    return-void
.end method


# virtual methods
.method public getRawContactId()J
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07007f

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mListener:Lcom/android/contacts/editor/ExternalRawContactEditorView$Listener;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mListener:Lcom/android/contacts/editor/ExternalRawContactEditorView$Listener;

    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mAccountType:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mRawContactId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/editor/ExternalRawContactEditorView$Listener;->onExternalEditorRequest(Landroid/accounts/Account;Landroid/net/Uri;)V

    .line 228
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mPhotoStub:Landroid/view/View;

    .line 99
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mName:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mReadOnlyWarning:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mEditExternallyButton:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mEditExternallyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    .line 105
    const v0, 0x7f070078

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mHeaderIcon:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f070079

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mHeaderAccountType:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mHeaderAccountName:Landroid/widget/TextView;

    .line 108
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/ExternalRawContactEditorView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mListener:Lcom/android/contacts/editor/ExternalRawContactEditorView$Listener;

    .line 87
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 19
    .parameter "state"
    .parameter "type"
    .parameter "vig"

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 121
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v18

    .line 128
    .local v18, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "account_name"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mAccountName:Ljava/lang/String;

    .line 129
    const-string v3, "account_type"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mAccountType:Ljava/lang/String;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 131
    .local v9, accountType:Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f0c010b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 134
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mAccountName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mHeaderAccountName:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0c015c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mAccountName:Ljava/lang/String;

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mHeaderAccountType:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0c015b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mHeaderIcon:Landroid/widget/ImageView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    const-string v3, "_id"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mRawContactId:J

    .line 146
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v4

    .line 147
    .local v4, kind:Lcom/android/contacts/model/AccountType$DataKind;
    if-eqz v4, :cond_7

    .line 148
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 149
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move v13, v3

    .line 150
    .local v13, hasPhotoEditor:Z
    :goto_1
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->setHasPhotoEditor(Z)V

    .line 151
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 152
    .local v5, primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/contacts/model/AccountType;->readOnly:Z

    move v7, v0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 153
    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/editor/PhotoEditorView;->hasSetPhoto()Z

    move-result v3

    if-nez v3, :cond_6

    .line 154
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mPhotoStub:Landroid/view/View;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .end local v4           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v13           #hasPhotoEditor:Z
    :goto_2
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 164
    .restart local v5       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mName:Landroid/widget/TextView;

    move-object v3, v0

    const-string v4, "data1"

    invoke-virtual {v5, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/contacts/model/AccountType;->readOnly:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mReadOnlyWarning:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0c015e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const/4 v7, 0x0

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mReadOnlyWarning:Landroid/widget/TextView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mEditExternallyButton:Landroid/widget/Button;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    :goto_3
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 177
    .local v16, phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v16, :cond_9

    .line 178
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 179
    .local v15, phone:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    move-object v3, v0

    const v4, 0x7f04002a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 182
    .local v12, field:Landroid/view/View;
    const v3, 0x7f070029

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 183
    .local v17, v:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f0c0045

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const v3, 0x7f070002

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #v:Landroid/widget/TextView;
    check-cast v17, Landroid/widget/TextView;

    .line 185
    .restart local v17       #v:Landroid/widget/TextView;
    const-string v3, "data1"

    invoke-virtual {v15, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data4"

    invoke-virtual {v15, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 149
    .end local v12           #field:Landroid/view/View;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #phone:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v16           #phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v17           #v:Landroid/widget/TextView;
    .restart local v4       #kind:Lcom/android/contacts/model/AccountType$DataKind;
    :cond_5
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_1

    .line 156
    .restart local v5       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v13       #hasPhotoEditor:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mPhotoStub:Landroid/view/View;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 159
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v13           #hasPhotoEditor:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mPhotoStub:Landroid/view/View;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 171
    .end local v4           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .restart local v5       #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mReadOnlyWarning:Landroid/widget/TextView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mEditExternallyButton:Landroid/widget/Button;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 193
    .end local v5           #primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v16       #phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_9
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 194
    .local v11, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v11, :cond_a

    .line 195
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 196
    .local v10, email:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    move-object v3, v0

    const v4, 0x7f04002a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 199
    .restart local v12       #field:Landroid/view/View;
    const v3, 0x7f070029

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 200
    .restart local v17       #v:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f0c0046

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v3, 0x7f070002

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #v:Landroid/widget/TextView;
    check-cast v17, Landroid/widget/TextView;

    .line 202
    .restart local v17       #v:Landroid/widget/TextView;
    const-string v3, "data1"

    invoke-virtual {v10, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 208
    .end local v10           #email:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v12           #field:Landroid/view/View;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #v:Landroid/widget/TextView;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 211
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;->mGeneral:Landroid/view/ViewGroup;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method
