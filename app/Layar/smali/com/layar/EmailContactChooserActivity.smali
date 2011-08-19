.class public Lcom/layar/EmailContactChooserActivity;
.super Landroid/app/ListActivity;
.source "EmailContactChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/EmailContactChooserActivity$PickContactsTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final EMAIL_CHOOSED_LIST:Ljava/lang/String; = "email:choosed"

.field private static final TAG:Ljava/lang/String;

.field private static mContact:Lcom/layar/reflect/EmailChooser$ContactInfo;


# instance fields
.field private mAdapter:Lcom/layar/adapters/ContactChooserAdapter;

.field private mList:Landroid/widget/ListView;

.field private mSelectedEmailsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lcom/layar/EmailContactChooserActivity$PickContactsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/layar/EmailContactChooserActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/EmailContactChooserActivity;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/layar/EmailContactChooserActivity$PickContactsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layar/EmailContactChooserActivity$PickContactsTask;-><init>(Lcom/layar/EmailContactChooserActivity;Lcom/layar/EmailContactChooserActivity$PickContactsTask;)V

    iput-object v0, p0, Lcom/layar/EmailContactChooserActivity;->mTask:Lcom/layar/EmailContactChooserActivity$PickContactsTask;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/layar/EmailContactChooserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity;->mSelectedEmailsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/EmailContactChooserActivity;Lcom/layar/adapters/ContactChooserAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/layar/EmailContactChooserActivity;->mAdapter:Lcom/layar/adapters/ContactChooserAdapter;

    return-void
.end method

.method static synthetic access$2(Lcom/layar/EmailContactChooserActivity;)Lcom/layar/adapters/ContactChooserAdapter;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity;->mAdapter:Lcom/layar/adapters/ContactChooserAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/EmailContactChooserActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/layar/EmailContactChooserActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 141
    sget-object v2, Lcom/layar/EmailContactChooserActivity;->mContact:Lcom/layar/reflect/EmailChooser$ContactInfo;

    if-nez v2, :cond_1

    .line 149
    :cond_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/layar/EmailContactChooserActivity;->mContact:Lcom/layar/reflect/EmailChooser$ContactInfo;

    iget-object v2, v2, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 145
    sget-object v2, Lcom/layar/EmailContactChooserActivity;->mContact:Lcom/layar/reflect/EmailChooser$ContactInfo;

    iget-object v2, v2, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 146
    .local v1, seq:Ljava/lang/CharSequence;
    invoke-interface {p0, v1}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private showEmailsDialog(Lcom/layar/reflect/EmailChooser$ContactInfo;Landroid/widget/CheckBox;)V
    .locals 3
    .parameter "contact"
    .parameter "check"

    .prologue
    .line 224
    iget-object v1, p1, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    .line 225
    iget-object v2, p1, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 224
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 226
    .local v0, emails:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    const v2, 0x7f09012e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 228
    new-instance v2, Lcom/layar/EmailContactChooserActivity$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/layar/EmailContactChooserActivity$1;-><init>(Lcom/layar/EmailContactChooserActivity;Lcom/layar/reflect/EmailChooser$ContactInfo;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 238
    new-instance v2, Lcom/layar/EmailContactChooserActivity$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/layar/EmailContactChooserActivity$2;-><init>(Lcom/layar/EmailContactChooserActivity;Landroid/widget/CheckBox;Lcom/layar/reflect/EmailChooser$ContactInfo;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 246
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const v8, 0x7f090146

    const/4 v9, 0x0

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 162
    :sswitch_0
    iget-object v7, p0, Lcom/layar/EmailContactChooserActivity;->mSelectedEmailsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 165
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v5, sendIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    .end local v5           #sendIntent:Landroid/content/Intent;
    const-string v7, "android.intent.action.SEND"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v5       #sendIntent:Landroid/content/Intent;
    const-string v7, "plain/text"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v7, p0, Lcom/layar/EmailContactChooserActivity;->mSelectedEmailsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v1, v7, [Ljava/lang/String;

    .line 169
    .local v1, emails:[Ljava/lang/String;
    iget-object v7, p0, Lcom/layar/EmailContactChooserActivity;->mSelectedEmailsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 170
    const-string v7, "android.intent.extra.EMAIL"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v7, "Send Mail"

    invoke-static {v5, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/layar/EmailContactChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    invoke-virtual {p0, v9}, Lcom/layar/EmailContactChooserActivity;->setResult(I)V

    .line 173
    invoke-virtual {p0}, Lcom/layar/EmailContactChooserActivity;->finish()V

    goto :goto_0

    .line 175
    .end local v1           #emails:[Ljava/lang/String;
    .end local v5           #sendIntent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v9}, Lcom/layar/EmailContactChooserActivity;->setResult(I)V

    .line 176
    invoke-virtual {p0}, Lcom/layar/EmailContactChooserActivity;->finish()V

    goto :goto_0

    .line 181
    :sswitch_1
    invoke-virtual {p0, v9}, Lcom/layar/EmailContactChooserActivity;->setResult(I)V

    .line 182
    invoke-virtual {p0}, Lcom/layar/EmailContactChooserActivity;->finish()V

    goto :goto_0

    .line 186
    :sswitch_2
    iget-object v7, p0, Lcom/layar/EmailContactChooserActivity;->mAdapter:Lcom/layar/adapters/ContactChooserAdapter;

    invoke-virtual {v7}, Lcom/layar/adapters/ContactChooserAdapter;->getEmailText()Landroid/widget/TextView;

    move-result-object v0

    .line 187
    .local v0, emailText:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, newEmail:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 189
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/layar/util/Util;->validateEmail(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 191
    :cond_2
    const v7, 0x7f090147

    .line 190
    invoke-static {v8, v7, p0}, Lcom/layar/util/Util;->showAlert(IILandroid/content/Context;)V

    goto :goto_0

    .line 193
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 194
    new-instance v3, Lcom/layar/reflect/EmailChooser$ContactInfo;

    const/4 v7, 0x1

    invoke-direct {v3, v4, v4, v7}, Lcom/layar/reflect/EmailChooser$ContactInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    .local v3, newContact:Lcom/layar/reflect/EmailChooser$ContactInfo;
    iget-object v7, p0, Lcom/layar/EmailContactChooserActivity;->mAdapter:Lcom/layar/adapters/ContactChooserAdapter;

    if-nez v7, :cond_4

    .line 197
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v6, tempContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/reflect/EmailChooser$ContactInfo;>;"
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v7, Lcom/layar/adapters/ContactChooserAdapter;

    .line 200
    invoke-direct {v7, p0, v6, p0}, Lcom/layar/adapters/ContactChooserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    .line 199
    iput-object v7, p0, Lcom/layar/EmailContactChooserActivity;->mAdapter:Lcom/layar/adapters/ContactChooserAdapter;

    .line 201
    iget-object v7, p0, Lcom/layar/EmailContactChooserActivity;->mList:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/layar/EmailContactChooserActivity;->mAdapter:Lcom/layar/adapters/ContactChooserAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    .end local v6           #tempContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/reflect/EmailChooser$ContactInfo;>;"
    :goto_1
    iget-object v7, p0, Lcom/layar/EmailContactChooserActivity;->mSelectedEmailsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 212
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const-string v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/layar/EmailContactChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 214
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v2, v7, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 202
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v7, p0, Lcom/layar/EmailContactChooserActivity;->mAdapter:Lcom/layar/adapters/ContactChooserAdapter;

    iget-object v7, v7, Lcom/layar/adapters/ContactChooserAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 204
    const v7, 0x7f09012d

    .line 203
    invoke-static {v8, v7, p0}, Lcom/layar/util/Util;->showAlert(IILandroid/content/Context;)V

    goto :goto_1

    .line 206
    :cond_5
    iget-object v7, p0, Lcom/layar/EmailContactChooserActivity;->mAdapter:Lcom/layar/adapters/ContactChooserAdapter;

    invoke-virtual {v7}, Lcom/layar/adapters/ContactChooserAdapter;->correctPosition()V

    .line 207
    iget-object v7, p0, Lcom/layar/EmailContactChooserActivity;->mAdapter:Lcom/layar/adapters/ContactChooserAdapter;

    iget-object v7, v7, Lcom/layar/adapters/ContactChooserAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v7, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 208
    iget-object v7, p0, Lcom/layar/EmailContactChooserActivity;->mAdapter:Lcom/layar/adapters/ContactChooserAdapter;

    invoke-virtual {v7}, Lcom/layar/adapters/ContactChooserAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x7f070004 -> :sswitch_2
        0x7f070042 -> :sswitch_1
        0x7f070043 -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/layar/EmailContactChooserActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/layar/EmailContactChooserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/EmailContactChooserActivity;->mList:Landroid/widget/ListView;

    .line 61
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 68
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/layar/EmailContactChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/layar/EmailContactChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/layar/EmailContactChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    const-string v1, "email:choosed"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/EmailContactChooserActivity;->mSelectedEmailsList:Ljava/util/ArrayList;

    .line 76
    sget-object v0, Lcom/layar/EmailContactChooserActivity;->TAG:Ljava/lang/String;

    const-string v1, "There\'s no retrievedEmailsList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/EmailContactChooserActivity;->mSelectedEmailsList:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p0, Lcom/layar/EmailContactChooserActivity;->mTask:Lcom/layar/EmailContactChooserActivity$PickContactsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/layar/EmailContactChooserActivity$PickContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 133
    sget-object v0, Lcom/layar/EmailContactChooserActivity;->mContact:Lcom/layar/reflect/EmailChooser$ContactInfo;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {p1}, Lcom/layar/EmailContactChooserActivity;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 137
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "arg3"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 250
    iget-object v5, p0, Lcom/layar/EmailContactChooserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v5, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/reflect/EmailChooser$ContactInfo;

    .line 251
    .local v1, contact:Lcom/layar/reflect/EmailChooser$ContactInfo;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;

    .line 252
    .local v3, holder:Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;
    iget-object v0, v3, Lcom/layar/adapters/ContactChooserAdapter$ContactViewHolder;->contactCheckbox:Landroid/widget/CheckBox;

    .line 254
    .local v0, check:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 255
    .local v4, isChecked:Z
    sget-object v5, Lcom/layar/EmailContactChooserActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-nez v4, :cond_2

    .line 257
    iget-object v5, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_1

    .line 258
    invoke-direct {p0, v1, v0}, Lcom/layar/EmailContactChooserActivity;->showEmailsDialog(Lcom/layar/reflect/EmailChooser$ContactInfo;Landroid/widget/CheckBox;)V

    .line 278
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 260
    .restart local p0
    :cond_1
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 261
    iput-boolean v8, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->isChecked:Z

    .line 262
    iget-object v5, p0, Lcom/layar/EmailContactChooserActivity;->mSelectedEmailsList:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    .restart local p0
    :cond_2
    iget-object v5, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_4

    .line 266
    iget-object v5, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 267
    .local v2, delEmail:Ljava/lang/String;
    iget-object v6, p0, Lcom/layar/EmailContactChooserActivity;->mSelectedEmailsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 268
    iget-object v6, p0, Lcom/layar/EmailContactChooserActivity;->mSelectedEmailsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 270
    iput-boolean v7, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->isChecked:Z

    goto :goto_1

    .line 272
    .end local v2           #delEmail:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/layar/EmailContactChooserActivity;->mSelectedEmailsList:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    iget-object v5, p0, Lcom/layar/EmailContactChooserActivity;->mSelectedEmailsList:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    iput-boolean v7, v1, Lcom/layar/reflect/EmailChooser$ContactInfo;->isChecked:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 282
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layar/EmailContactChooserActivity;->setResult(I)V

    .line 284
    invoke-virtual {p0}, Lcom/layar/EmailContactChooserActivity;->finish()V

    .line 285
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
