.class public Lcom/google/googlenav/friend/android/InviteActivity;
.super Landroid/app/ListActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/google/googlenav/friend/android/w;

.field private b:Landroid/content/ContentResolver;

.field private c:Lcom/google/googlenav/friend/android/z;

.field private d:I

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/widget/MultiAutoCompleteTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/z;

    iput-boolean v1, v0, Lcom/google/googlenav/friend/android/z;->a:Z

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->a:Lcom/google/googlenav/friend/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/w;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/Q;->b(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/friend/android/InviteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/InviteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/android/InviteActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/android/x;

    iget-object v0, v0, Lcom/google/googlenav/friend/android/x;->c:Ljava/lang/String;

    aput-object v0, v1, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "INVITE_EMAILS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/friend/android/InviteActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->e:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v1, 0x0

    const v0, 0x7f0f01e5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f015a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Lcom/google/googlenav/friend/android/f;

    iget-object v2, p0, Lcom/google/googlenav/friend/android/InviteActivity;->a:Lcom/google/googlenav/friend/android/w;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/friend/android/f;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/android/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v1}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v1, Lcom/google/googlenav/friend/android/l;

    invoke-direct {v1, p0}, Lcom/google/googlenav/friend/android/l;-><init>(Lcom/google/googlenav/friend/android/InviteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/friend/android/InviteActivity;)Lcom/google/googlenav/friend/android/z;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/z;

    return-object v0
.end method

.method private c()Ljava/util/List;
    .locals 7

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v4, :cond_0

    move-object v4, v3

    :cond_0
    new-instance v5, Lcom/google/googlenav/friend/android/x;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4, v3}, Lcom/google/googlenav/friend/android/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/friend/android/InviteActivity;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->d:I

    return v0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->f:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 7

    const/4 v6, 0x1

    iget v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->d:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/z;

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->c()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/friend/android/z;->b:Ljava/util/List;

    :cond_0
    new-instance v0, Lcom/google/googlenav/friend/android/m;

    const v3, 0x7f030073

    const v4, 0x7f0f0014

    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/z;

    iget-object v5, v1, Lcom/google/googlenav/friend/android/z;->b:Ljava/util/List;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/friend/android/m;-><init>(Lcom/google/googlenav/friend/android/InviteActivity;Landroid/content/Context;IILjava/util/List;)V

    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f030074

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/google/googlenav/friend/android/n;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/googlenav/friend/android/n;-><init>(Lcom/google/googlenav/friend/android/InviteActivity;Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)V

    new-instance v0, Lcom/google/googlenav/friend/android/j;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/android/j;-><init>(Lcom/google/googlenav/friend/android/InviteActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x37

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/16 v4, 0x38

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/16 v4, 0x32

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/googlenav/ui/android/h;->b(Landroid/app/Dialog;)V

    return-void
.end method

.method private f()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x28

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x2a0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/friend/android/k;

    invoke-direct {v2, p0}, Lcom/google/googlenav/friend/android/k;-><init>(Lcom/google/googlenav/friend/android/InviteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/android/h;->b(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->a:Lcom/google/googlenav/friend/android/w;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->b:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/friend/android/w;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "contacts_accessor_contact_id"

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contacts_accessor_contact_display_name"

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "contacts_accessor_email_address"

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/z;

    iget-object v3, v3, Lcom/google/googlenav/friend/android/z;->b:Ljava/util/List;

    new-instance v4, Lcom/google/googlenav/friend/android/x;

    invoke-direct {v4, v1, v2, v0}, Lcom/google/googlenav/friend/android/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->e()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->f()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/z;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/googlenav/friend/android/z;->a:Z

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f0f01e7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->d:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x33

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x2b

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030070

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->setContentView(I)V

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x29

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01e7

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f01e6

    invoke-virtual {p0, v1}, Lcom/google/googlenav/friend/android/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0202aa

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lak/h;

    invoke-static {}, Lcom/google/googlenav/friend/android/w;->c()Lcom/google/googlenav/friend/android/w;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->a:Lcom/google/googlenav/friend/android/w;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->e:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->b:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/friend/android/z;

    iput-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/z;

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "inviteType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->d:I

    iget v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->d:I

    if-nez v1, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/android/InviteActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/z;

    iget-boolean v0, v0, Lcom/google/googlenav/friend/android/z;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/z;

    iget-object v0, v0, Lcom/google/googlenav/friend/android/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->a()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/z;

    iget-object v0, v0, Lcom/google/googlenav/friend/android/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->e()V

    :cond_2
    return-void

    :cond_3
    new-instance v1, Lcom/google/googlenav/friend/android/z;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/googlenav/friend/android/z;-><init>(Lcom/google/googlenav/friend/android/l;)V

    iput-object v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/z;

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/google/googlenav/friend/android/InviteActivity;->d:I

    if-ne v1, v4, :cond_1

    const/16 v1, 0x30

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/friend/android/InviteActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/googlenav/friend/android/InviteActivity;->b()V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    invoke-static {}, Lcom/google/googlenav/android/c;->g()V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/friend/android/InviteActivity;->c:Lcom/google/googlenav/friend/android/z;

    return-object v0
.end method
