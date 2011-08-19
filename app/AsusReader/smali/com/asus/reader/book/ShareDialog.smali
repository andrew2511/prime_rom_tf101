.class public Lcom/asus/reader/book/ShareDialog;
.super Landroid/app/DialogFragment;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/book/ShareDialog$DisplayItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 80
    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;I)Lcom/asus/reader/book/ShareDialog;
    .locals 3
    .parameter
    .parameter "title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/reader/book/ShareDialog$DisplayItem;",
            ">;I)",
            "Lcom/asus/reader/book/ShareDialog;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, displayItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/reader/book/ShareDialog$DisplayItem;>;"
    new-instance v1, Lcom/asus/reader/book/ShareDialog;

    invoke-direct {v1}, Lcom/asus/reader/book/ShareDialog;-><init>()V

    .line 32
    .local v1, frag:Lcom/asus/reader/book/ShareDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "displayItems"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 34
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/asus/reader/book/ShareDialog;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/asus/reader/book/ShareDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 43
    .local v8, title:I
    invoke-virtual {p0}, Lcom/asus/reader/book/ShareDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "displayItems"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 45
    .local v5, displayItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/reader/book/ShareDialog$DisplayItem;>;"
    new-instance v0, Lcom/asus/reader/book/ShareDialog$1;

    invoke-virtual {p0}, Lcom/asus/reader/book/ShareDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090011

    const v4, 0x1020014

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/asus/reader/book/ShareDialog$1;-><init>(Lcom/asus/reader/book/ShareDialog;Landroid/content/Context;IILjava/util/List;Ljava/util/ArrayList;)V

    .line 66
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v7, Lcom/asus/reader/book/ShareDialog$2;

    invoke-direct {v7, p0, v5}, Lcom/asus/reader/book/ShareDialog$2;-><init>(Lcom/asus/reader/book/ShareDialog;Ljava/util/ArrayList;)V

    .line 74
    .local v7, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/asus/reader/book/ShareDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
