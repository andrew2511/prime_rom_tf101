.class public Lcom/splashtop/remote/UpdateActivity;
.super Landroid/app/Activity;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IRISMain"


# instance fields
.field private action:Ljava/lang/String;

.field private bDone:Landroid/widget/Button;

.field private bRevert:Landroid/widget/Button;

.field private bUserTracking:Z

.field private btnHelp:Landroid/widget/Button;

.field private db:Lcom/splashtop/remote/utils/DBAdapter;

.field private done_menuItem:Landroid/view/MenuItem;

.field private etIp:Landroid/widget/EditText;

.field private etName:Landroid/widget/EditText;

.field private etPort:Landroid/widget/EditText;

.field private etPwd:Landroid/widget/EditText;

.field private ipIsOk:Z

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private mb:Lcom/splashtop/remote/bean/MacBean;

.field private nameIsOk:Z

.field private spResolution:Landroid/widget/Spinner;

.field private tvPortInfo:Landroid/widget/TextView;

.field private tvTitleName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/splashtop/remote/UpdateActivity;->bUserTracking:Z

    .line 51
    return-void
.end method

.method private PopupHelp()V
    .locals 5

    .prologue
    .line 417
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 418
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 419
    .local v2, helpLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 420
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070016

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 422
    const v3, 0x7f07000a

    new-instance v4, Lcom/splashtop/remote/UpdateActivity$9;

    invoke-direct {v4, p0}, Lcom/splashtop/remote/UpdateActivity$9;-><init>(Lcom/splashtop/remote/UpdateActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 430
    return-void
.end method

.method private Revert()V
    .locals 4

    .prologue
    .line 469
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "ret"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 473
    const/16 v2, 0x66

    invoke-virtual {p0, v2, v1}, Lcom/splashtop/remote/UpdateActivity;->setResult(ILandroid/content/Intent;)V

    .line 474
    invoke-virtual {p0}, Lcom/splashtop/remote/UpdateActivity;->finish()V

    .line 475
    return-void
.end method

.method private SaveSettings()V
    .locals 9

    .prologue
    .line 433
    iget-boolean v5, p0, Lcom/splashtop/remote/UpdateActivity;->nameIsOk:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/splashtop/remote/UpdateActivity;->ipIsOk:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->etIp:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-gez v5, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 437
    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 439
    .local v4, ret:Z
    const-string v5, "new"

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 440
    :cond_2
    new-instance v5, Lcom/splashtop/remote/bean/MacBean;

    invoke-direct {v5}, Lcom/splashtop/remote/bean/MacBean;-><init>()V

    iput-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    .line 441
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/bean/MacBean;->setMacName(Ljava/lang/String;)V

    .line 442
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->etIp:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/bean/MacBean;->setMacAddr(Ljava/lang/String;)V

    .line 443
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/bean/MacBean;->setMacPwd(Ljava/lang/String;)V

    .line 444
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->etPort:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/bean/MacBean;->setMacPort(Ljava/lang/String;)V

    .line 445
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    sget-object v6, Lcom/splashtop/remote/utils/Common;->sMenuReloution:[Ljava/lang/String;

    iget-object v7, p0, Lcom/splashtop/remote/UpdateActivity;->spResolution:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/bean/MacBean;->setMacResolution(Ljava/lang/String;)V

    .line 446
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/utils/DBAdapter;->insertData(Lcom/splashtop/remote/bean/MacBean;)J

    move-result-wide v1

    .line 447
    .local v1, id:J
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5, v1, v2}, Lcom/splashtop/remote/bean/MacBean;->setId(J)V

    .line 448
    const-string v5, "action"

    const-string v6, "new"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5, v1, v2}, Lcom/splashtop/remote/bean/MacBean;->setId(J)V

    .line 450
    const/4 v4, 0x1

    .line 460
    .end local v1           #id:J
    :goto_1
    const-string v5, "id"

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v6}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 461
    const-string v5, "macbean"

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 462
    const-string v5, "ret"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 463
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 464
    const/16 v5, 0x66

    invoke-virtual {p0, v5, v3}, Lcom/splashtop/remote/UpdateActivity;->setResult(ILandroid/content/Intent;)V

    .line 465
    invoke-virtual {p0}, Lcom/splashtop/remote/UpdateActivity;->finish()V

    goto/16 :goto_0

    .line 452
    :cond_3
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/bean/MacBean;->setMacName(Ljava/lang/String;)V

    .line 453
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->etIp:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/bean/MacBean;->setMacAddr(Ljava/lang/String;)V

    .line 454
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/bean/MacBean;->setMacPwd(Ljava/lang/String;)V

    .line 455
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->etPort:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/bean/MacBean;->setMacPort(Ljava/lang/String;)V

    .line 456
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    sget-object v6, Lcom/splashtop/remote/utils/Common;->sMenuReloution:[Ljava/lang/String;

    iget-object v7, p0, Lcom/splashtop/remote/UpdateActivity;->spResolution:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/bean/MacBean;->setMacResolution(Ljava/lang/String;)V

    .line 457
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    iget-object v6, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5, v6}, Lcom/splashtop/remote/utils/DBAdapter;->updateData(Lcom/splashtop/remote/bean/MacBean;)Z

    move-result v4

    .line 458
    const-string v5, "action"

    const-string v6, "update"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->etPwd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->etPort:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->tvPortInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/splashtop/remote/UpdateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/splashtop/remote/UpdateActivity;->nameIsOk:Z

    return v0
.end method

.method static synthetic access$302(Lcom/splashtop/remote/UpdateActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/splashtop/remote/UpdateActivity;->nameIsOk:Z

    return p1
.end method

.method static synthetic access$400(Lcom/splashtop/remote/UpdateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/splashtop/remote/UpdateActivity;->ipIsOk:Z

    return v0
.end method

.method static synthetic access$402(Lcom/splashtop/remote/UpdateActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/splashtop/remote/UpdateActivity;->ipIsOk:Z

    return p1
.end method

.method static synthetic access$500(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->bDone:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->btnHelp:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/splashtop/remote/UpdateActivity;)Lcom/splashtop/remote/bean/MacBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    return-object v0
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 138
    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->mainLayout:Landroid/widget/RelativeLayout;

    .line 140
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->bDone:Landroid/widget/Button;

    .line 141
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->btnHelp:Landroid/widget/Button;

    .line 142
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->bRevert:Landroid/widget/Button;

    .line 144
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->tvTitleName:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->etName:Landroid/widget/EditText;

    .line 146
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->etIp:Landroid/widget/EditText;

    .line 147
    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->etPwd:Landroid/widget/EditText;

    .line 148
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->etPort:Landroid/widget/EditText;

    .line 149
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->spResolution:Landroid/widget/Spinner;

    .line 150
    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->tvPortInfo:Landroid/widget/TextView;

    .line 151
    return-void
.end method

.method private initListeners()V
    .locals 4

    .prologue
    .line 162
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->etPwd:Landroid/widget/EditText;

    new-instance v2, Lcom/splashtop/remote/UpdateActivity$1;

    invoke-direct {v2, p0}, Lcom/splashtop/remote/UpdateActivity$1;-><init>(Lcom/splashtop/remote/UpdateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->etPort:Landroid/widget/EditText;

    new-instance v2, Lcom/splashtop/remote/UpdateActivity$2;

    invoke-direct {v2, p0}, Lcom/splashtop/remote/UpdateActivity$2;-><init>(Lcom/splashtop/remote/UpdateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 215
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 216
    .local v0, filters:[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 217
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 218
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->etName:Landroid/widget/EditText;

    new-instance v2, Lcom/splashtop/remote/UpdateActivity$3;

    invoke-direct {v2, p0}, Lcom/splashtop/remote/UpdateActivity$3;-><init>(Lcom/splashtop/remote/UpdateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 246
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->etIp:Landroid/widget/EditText;

    new-instance v2, Lcom/splashtop/remote/UpdateActivity$4;

    invoke-direct {v2, p0}, Lcom/splashtop/remote/UpdateActivity$4;-><init>(Lcom/splashtop/remote/UpdateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 272
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->bDone:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->btnHelp:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->btnHelp:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->btnHelp:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->btnHelp:Landroid/widget/Button;

    new-instance v2, Lcom/splashtop/remote/UpdateActivity$5;

    invoke-direct {v2, p0}, Lcom/splashtop/remote/UpdateActivity$5;-><init>(Lcom/splashtop/remote/UpdateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->bRevert:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    sget-object v2, Lcom/splashtop/remote/utils/Common;->sMenuReloution:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 156
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 157
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->spResolution:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 158
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->etPwd:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 159
    return-void
.end method

.method private setBackground(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 300
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->mainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 308
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->mainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 306
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "IRISMain"

    const-string v2, "UpdateActivity::setBackground OutOfMemory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showHelpDialog()V
    .locals 8

    .prologue
    .line 394
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 396
    .local v2, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 397
    .local v3, helpLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 398
    .local v0, cbNeverShow:Landroid/widget/CheckBox;
    const v5, 0x7f07001c

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 399
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 400
    .local v4, settings:Landroid/content/SharedPreferences;
    const-string v5, "never_show_help"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 401
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 403
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f070016

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07000a

    new-instance v7, Lcom/splashtop/remote/UpdateActivity$8;

    invoke-direct {v7, p0, v4, v0}, Lcom/splashtop/remote/UpdateActivity$8;-><init>(Lcom/splashtop/remote/UpdateActivity;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 412
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 414
    .end local v1           #dialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 492
    :goto_0
    return-void

    .line 481
    :sswitch_0
    invoke-direct {p0}, Lcom/splashtop/remote/UpdateActivity;->SaveSettings()V

    goto :goto_0

    .line 484
    :sswitch_1
    invoke-direct {p0}, Lcom/splashtop/remote/UpdateActivity;->PopupHelp()V

    goto :goto_0

    .line 487
    :sswitch_2
    invoke-direct {p0}, Lcom/splashtop/remote/UpdateActivity;->Revert()V

    goto :goto_0

    .line 479
    :sswitch_data_0
    .sparse-switch
        0x7f090037 -> :sswitch_0
        0x7f090038 -> :sswitch_2
        0x7f090045 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 295
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/splashtop/remote/UpdateActivity;->setBackground(I)V

    .line 296
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f070001

    const/4 v6, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 82
    .local v3, settings:Landroid/content/SharedPreferences;
    invoke-virtual {p0, v6}, Lcom/splashtop/remote/UpdateActivity;->requestWindowFeature(I)Z

    .line 83
    const v4, 0x7f030014

    invoke-virtual {p0, v4}, Lcom/splashtop/remote/UpdateActivity;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/splashtop/remote/UpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f030016

    invoke-virtual {v4, v6, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 85
    invoke-direct {p0}, Lcom/splashtop/remote/UpdateActivity;->findViews()V

    .line 86
    invoke-direct {p0}, Lcom/splashtop/remote/UpdateActivity;->initViews()V

    .line 87
    invoke-direct {p0}, Lcom/splashtop/remote/UpdateActivity;->initListeners()V

    .line 90
    invoke-virtual {p0}, Lcom/splashtop/remote/UpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v4}, Lcom/splashtop/remote/UpdateActivity;->setBackground(I)V

    .line 92
    new-instance v4, Lcom/splashtop/remote/utils/DBAdapter;

    invoke-direct {v4, p0}, Lcom/splashtop/remote/utils/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    .line 93
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    invoke-virtual {v4}, Lcom/splashtop/remote/utils/DBAdapter;->open()V

    .line 95
    invoke-virtual {p0}, Lcom/splashtop/remote/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 96
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "action"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->action:Ljava/lang/String;

    .line 98
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->etPort:Landroid/widget/EditText;

    const-string v5, "6783"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->spResolution:Landroid/widget/Spinner;

    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 101
    const-string v4, "new"

    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->bDone:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 103
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->bDone:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->tvTitleName:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->tvTitleName:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 105
    :cond_0
    const-string v4, "never_show_help"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "show_first_help"

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v9, v4, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/splashtop/remote/UpdateActivity;->showHelpDialog()V

    .line 130
    :cond_1
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 131
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v4, "ret"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    const/16 v4, 0x66

    invoke-virtual {p0, v4, v2}, Lcom/splashtop/remote/UpdateActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    return-void

    .line 108
    :cond_2
    const-string v4, "update"

    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    const-string v4, "macbean"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/splashtop/remote/bean/MacBean;

    iput-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    .line 110
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->btnHelp:Landroid/widget/Button;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->btnHelp:Landroid/widget/Button;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    :cond_3
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->tvTitleName:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->tvTitleName:Landroid/widget/TextView;

    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 112
    :cond_4
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->etName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->getMacName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->etIp:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v4}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 115
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->tvTitleName:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->tvTitleName:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    .line 116
    :cond_5
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->etPwd:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->etPort:Landroid/widget/EditText;

    const-string v5, "6783"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->spResolution:Landroid/widget/Spinner;

    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 120
    :cond_6
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->etPwd:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->getMacPwd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->etPort:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->getMacPort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v4, Lcom/splashtop/remote/utils/Common;->sMenuReloution:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 123
    sget-object v4, Lcom/splashtop/remote/utils/Common;->sMenuReloution:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->getMacResolution()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 124
    iget-object v4, p0, Lcom/splashtop/remote/UpdateActivity;->spResolution:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 122
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 312
    const-string v2, "new"

    iget-object v3, p0, Lcom/splashtop/remote/UpdateActivity;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/splashtop/remote/UpdateActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 314
    .local v0, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f03000f

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 315
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/splashtop/remote/UpdateActivity;->done_menuItem:Landroid/view/MenuItem;

    .line 316
    iget-boolean v2, p0, Lcom/splashtop/remote/UpdateActivity;->nameIsOk:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/splashtop/remote/UpdateActivity;->ipIsOk:Z

    if-eqz v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/splashtop/remote/UpdateActivity;->done_menuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 331
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 332
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isFirstMenu"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    return v5

    .line 319
    .end local v1           #settings:Landroid/content/SharedPreferences;
    .restart local v0       #inflater:Landroid/view/MenuInflater;
    :cond_1
    iget-object v2, p0, Lcom/splashtop/remote/UpdateActivity;->done_menuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 321
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_2
    const-string v2, "update"

    iget-object v3, p0, Lcom/splashtop/remote/UpdateActivity;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/splashtop/remote/UpdateActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 323
    .restart local v0       #inflater:Landroid/view/MenuInflater;
    const v2, 0x7f030011

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 324
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/splashtop/remote/UpdateActivity;->done_menuItem:Landroid/view/MenuItem;

    .line 325
    iget-boolean v2, p0, Lcom/splashtop/remote/UpdateActivity;->nameIsOk:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/splashtop/remote/UpdateActivity;->ipIsOk:Z

    if-eqz v2, :cond_3

    .line 326
    iget-object v2, p0, Lcom/splashtop/remote/UpdateActivity;->done_menuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 328
    :cond_3
    iget-object v2, p0, Lcom/splashtop/remote/UpdateActivity;->done_menuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 514
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 515
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity;->db:Lcom/splashtop/remote/utils/DBAdapter;

    invoke-virtual {v0}, Lcom/splashtop/remote/utils/DBAdapter;->close()V

    .line 516
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 338
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 339
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "isFirstMenu"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 340
    .local v0, ifCheckMenuItem:Z
    if-eqz v0, :cond_0

    .line 341
    const/16 v2, 0x52

    if-ne p1, v2, :cond_0

    .line 342
    iget-boolean v2, p0, Lcom/splashtop/remote/UpdateActivity;->nameIsOk:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/splashtop/remote/UpdateActivity;->ipIsOk:Z

    if-eqz v2, :cond_1

    .line 343
    iget-object v2, p0, Lcom/splashtop/remote/UpdateActivity;->done_menuItem:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 349
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/splashtop/remote/UpdateActivity;->done_menuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 354
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 390
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 356
    :pswitch_1
    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/splashtop/remote/UpdateActivity;->mb:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v1}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 359
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 360
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070035

    new-instance v3, Lcom/splashtop/remote/UpdateActivity$7;

    invoke-direct {v3, p0}, Lcom/splashtop/remote/UpdateActivity$7;-><init>(Lcom/splashtop/remote/UpdateActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070036

    new-instance v3, Lcom/splashtop/remote/UpdateActivity$6;

    invoke-direct {v3, p0}, Lcom/splashtop/remote/UpdateActivity$6;-><init>(Lcom/splashtop/remote/UpdateActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 381
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    invoke-direct {p0}, Lcom/splashtop/remote/UpdateActivity;->SaveSettings()V

    goto :goto_0

    .line 384
    :pswitch_3
    invoke-direct {p0}, Lcom/splashtop/remote/UpdateActivity;->Revert()V

    goto :goto_0

    .line 387
    :pswitch_4
    invoke-direct {p0}, Lcom/splashtop/remote/UpdateActivity;->PopupHelp()V

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x7f09002b
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 496
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 497
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 498
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "USRTRACK"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/splashtop/remote/UpdateActivity;->bUserTracking:Z

    .line 499
    iget-boolean v1, p0, Lcom/splashtop/remote/UpdateActivity;->bUserTracking:Z

    if-eqz v1, :cond_0

    .line 500
    invoke-static {}, Lcom/splashtop/remote/utils/Common;->getFlurryKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 502
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 506
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 507
    iget-boolean v0, p0, Lcom/splashtop/remote/UpdateActivity;->bUserTracking:Z

    if-eqz v0, :cond_0

    .line 508
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 510
    :cond_0
    return-void
.end method
