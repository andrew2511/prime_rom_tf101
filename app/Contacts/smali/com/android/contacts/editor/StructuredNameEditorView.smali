.class public Lcom/android/contacts/editor/StructuredNameEditorView;
.super Lcom/android/contacts/editor/TextFieldsEditorView;
.source "StructuredNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/StructuredNameEditorView$1;,
        Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
    }
.end annotation


# instance fields
.field private mChanged:Z

.field private mSnapshot:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method private appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "builder"
    .parameter "field"
    .parameter "value"

    .prologue
    .line 209
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 212
    :cond_0
    return-void
.end method

.method private eraseFullName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 197
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private eraseStructuredName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 201
    const-string v0, "data4"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 202
    const-string v0, "data2"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 203
    const-string v0, "data5"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 204
    const-string v0, "data3"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 205
    const-string v0, "data6"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method private switchFromFullNameToStructuredName()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 109
    .local v9, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iget-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    if-nez v0, :cond_0

    .line 110
    const-string v0, "data4"

    iget-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v2, "data4"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "data2"

    iget-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v2, "data2"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "data5"

    iget-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v2, "data5"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "data3"

    iget-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "data6"

    iget-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v2, "data6"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v0, "data1"

    invoke-virtual {v9, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, displayName:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "complete_name"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 125
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "data1"

    invoke-direct {p0, v6, v0, v8}, Lcom/android/contacts/editor/StructuredNameEditorView;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data4"

    aput-object v4, v2, v5

    const-string v4, "data2"

    aput-object v4, v2, v10

    const-string v4, "data5"

    aput-object v4, v2, v11

    const-string v4, "data3"

    aput-object v4, v2, v12

    const/4 v4, 0x4

    const-string v5, "data6"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 135
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0, v9}, Lcom/android/contacts/editor/StructuredNameEditorView;->eraseFullName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 137
    const-string v0, "data4"

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "data2"

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "data5"

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "data3"

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "data6"

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 147
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 148
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    invoke-virtual {v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 149
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v1, "data1"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private switchFromStructuredNameToFullName()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v13

    .line 155
    .local v13, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iget-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    if-nez v0, :cond_0

    .line 156
    const-string v0, "data1"

    iget-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v0, "data4"

    invoke-virtual {v13, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 162
    .local v11, prefix:Ljava/lang/String;
    const-string v0, "data2"

    invoke-virtual {v13, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, givenName:Ljava/lang/String;
    const-string v0, "data5"

    invoke-virtual {v13, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 164
    .local v10, middleName:Ljava/lang/String;
    const-string v0, "data3"

    invoke-virtual {v13, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, familyName:Ljava/lang/String;
    const-string v0, "data6"

    invoke-virtual {v13, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 167
    .local v12, suffix:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "complete_name"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 169
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "data4"

    invoke-direct {p0, v6, v0, v11}, Lcom/android/contacts/editor/StructuredNameEditorView;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "data2"

    invoke-direct {p0, v6, v0, v9}, Lcom/android/contacts/editor/StructuredNameEditorView;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "data5"

    invoke-direct {p0, v6, v0, v10}, Lcom/android/contacts/editor/StructuredNameEditorView;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "data3"

    invoke-direct {p0, v6, v0, v8}, Lcom/android/contacts/editor/StructuredNameEditorView;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "data6"

    invoke-direct {p0, v6, v0, v12}, Lcom/android/contacts/editor/StructuredNameEditorView;->appendQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 179
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-direct {p0, v13}, Lcom/android/contacts/editor/StructuredNameEditorView;->eraseStructuredName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 181
    const-string v0, "data1"

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 187
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 188
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v1, "data1"

    const-string v2, "data1"

    invoke-virtual {v13, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v1, "data4"

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v1, "data5"

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v1, "data3"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v1, "data6"

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "column"
    .parameter "value"

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/StructuredNameEditorView;->isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->hasShortAndLongForms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->areOptionalFieldsVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/StructuredNameEditorView;->eraseFullName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 90
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/StructuredNameEditorView;->eraseStructuredName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    goto :goto_1
.end method

.method protected onOptionalFieldVisibilityChange()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->hasShortAndLongForms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->areOptionalFieldsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->switchFromFullNameToStructuredName()V

    .line 103
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->onOptionalFieldVisibilityChange()V

    .line 104
    return-void

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->switchFromStructuredNameToFullName()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 224
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;

    move-object v1, v0

    .line 225
    .local v1, ss:Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
    iget-object v2, v1, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-super {p0, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 227
    iget-boolean v2, v1, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    iput-boolean v2, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    .line 228
    iget-object v2, v1, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    iput-object v2, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    .line 229
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;

    invoke-super {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 217
    .local v0, state:Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
    iget-boolean v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    iput-boolean v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    .line 218
    iget-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    iput-object v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    .line 219
    return-object v0
.end method

.method public setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 2
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    .line 65
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 66
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    .line 68
    invoke-virtual {p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    goto :goto_0
.end method
