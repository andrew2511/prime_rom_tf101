.class public Lcom/android/contacts/interactions/PhoneNumberInteraction;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;,
        Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation


# static fields
.field private static final PHONE_NUMBER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLoader:Landroid/content/CursorLoader;

.field private final mSendTextMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 162
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter "context"
    .parameter "sendTextMessage"
    .parameter "dismissListener"

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    .line 183
    iput-boolean p2, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mSendTextMessage:Z

    .line 184
    iput-object p3, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/PhoneNumberInteraction;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mSendTextMessage:Z

    return v0
.end method

.method private getDialogId()I
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mSendTextMessage:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070018

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f070017

    goto :goto_0
.end method

.method private onDismiss()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 274
    :cond_0
    return-void
.end method

.method private performAction(Ljava/lang/String;)V
    .locals 4
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-boolean v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mSendTextMessage:Z

    if-eqz v1, :cond_0

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void

    .line 193
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method


# virtual methods
.method makePrimary(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 341
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 342
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 320
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v2, v0

    .line 321
    .local v2, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;

    .line 322
    .local v1, adapter:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;
    invoke-virtual {v1, p2}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    .line 323
    .local v7, phoneItem:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    if-eqz v7, :cond_1

    .line 324
    iget-wide v4, v7, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    .line 325
    .local v4, id:J
    iget-object v6, v7, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 327
    .local v6, phone:Ljava/lang/String;
    const v8, 0x7f0700ae

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 328
    .local v3, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 329
    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->makePrimary(J)V

    .line 332
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V

    .line 334
    .end local v3           #checkBox:Landroid/widget/CheckBox;
    .end local v4           #id:J
    .end local v6           #phone:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "id"
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 283
    invoke-direct {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->getDialogId()I

    move-result v3

    if-eq p1, v3, :cond_0

    move-object v3, v4

    .line 297
    :goto_0
    return-object v3

    .line 287
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 288
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040046

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 289
    .local v2, setPrimaryView:Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;

    iget-object v5, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;-><init>(Lcom/android/contacts/interactions/PhoneNumberInteraction;Landroid/content/Context;)V

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mSendTextMessage:Z

    if-eqz v4, :cond_1

    const v4, 0x7f0c00e9

    :goto_1
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 296
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v3, v0

    .line 297
    goto :goto_0

    .line 289
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    const v4, 0x7f0c00e8

    goto :goto_1
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onDismiss()V

    .line 268
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v2, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;>;"
    const/4 v3, 0x0

    .line 229
    .local v3, primaryPhone:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    const-string v4, "is_super_primary"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 232
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 247
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 250
    if-eqz v3, :cond_3

    .line 251
    invoke-direct {p0, v3}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onDismiss()V

    goto :goto_0

    .line 236
    :cond_2
    :try_start_1
    new-instance v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    invoke-direct {v1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;-><init>()V

    .line 237
    .local v1, item:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    .line 238
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 239
    const-string v4, "account_type"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    .line 241
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    .line 242
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    .line 244
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 247
    .end local v1           #item:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    :catchall_0
    move-exception v4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw v4

    .line 256
    :cond_3
    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 258
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 259
    invoke-direct {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onDismiss()V

    goto/16 :goto_0

    .line 260
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 261
    invoke-direct {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onDismiss()V

    .line 262
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    iget-object v4, v4, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "items"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 266
    invoke-direct {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->getDialogId()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->showDialog(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z
    .locals 5
    .parameter "id"
    .parameter "dialog"
    .parameter "bundle"

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->getDialogId()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 302
    const/4 v4, 0x0

    .line 312
    :goto_0
    return v4

    .line 305
    :cond_0
    const-string v4, "items"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 307
    .local v3, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;>;"
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v2, v0

    .line 308
    .local v2, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;

    .line 309
    .local v1, adapter:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;
    invoke-virtual {v1}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;->clear()V

    .line 310
    invoke-virtual {v1, v3}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;->addAll(Ljava/util/Collection;)V

    .line 312
    const/4 v4, 0x1

    goto :goto_0
.end method

.method showDialog(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "dialogId"
    .parameter "bundle"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 347
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 350
    :cond_0
    return-void
.end method

.method startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 355
    return-void
.end method

.method public startInteraction(Landroid/net/Uri;)V
    .locals 7
    .parameter "contactUri"

    .prologue
    const/4 v5, 0x0

    .line 205
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 209
    :cond_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    const-string v2, "data"

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/interactions/PhoneNumberInteraction;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data1 NOT NULL"

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    .line 215
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 216
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 217
    return-void
.end method
