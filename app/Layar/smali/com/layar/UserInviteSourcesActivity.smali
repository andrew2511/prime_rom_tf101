.class public Lcom/layar/UserInviteSourcesActivity;
.super Lcom/layar/OurActivity;
.source "UserInviteSourcesActivity.java"

# interfaces
.implements Lcom/layar/data/user/InviteSourceType;


# static fields
.field public static final EXTRAS_MESSAGE:Ljava/lang/String; = "message text"

.field public static final REQUEST_INVITE:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/layar/adapters/InviteSourcesAdapter;

.field private mSources:[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

.field private viewList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/layar/UserInviteSourcesActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/UserInviteSourcesActivity;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/layar/OurActivity;-><init>()V

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    iput-object v0, p0, Lcom/layar/UserInviteSourcesActivity;->mSources:[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserInviteSourcesActivity;)Lcom/layar/adapters/InviteSourcesAdapter;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/layar/UserInviteSourcesActivity;->mAdapter:Lcom/layar/adapters/InviteSourcesAdapter;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/layar/OurActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    const/16 v3, 0xa

    if-ne p1, v3, :cond_0

    .line 80
    if-nez p3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v3, "invites source"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, source:I
    if-eq v1, v4, :cond_0

    .line 86
    if-ne p2, v4, :cond_0

    .line 87
    const-string v3, "friends added"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, friendsAdded:I
    if-nez v0, :cond_2

    .line 91
    iget-object v3, p0, Lcom/layar/UserInviteSourcesActivity;->mSources:[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    aget-object v3, v3, v1

    const v4, 0x7f090113

    invoke-virtual {p0, v4}, Lcom/layar/UserInviteSourcesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;->text:Ljava/lang/String;

    .line 96
    :goto_1
    iget-object v3, p0, Lcom/layar/UserInviteSourcesActivity;->mAdapter:Lcom/layar/adapters/InviteSourcesAdapter;

    invoke-virtual {v3}, Lcom/layar/adapters/InviteSourcesAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 93
    :cond_2
    const v3, 0x7f090114

    invoke-virtual {p0, v3}, Lcom/layar/UserInviteSourcesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, template:Ljava/lang/String;
    iget-object v3, p0, Lcom/layar/UserInviteSourcesActivity;->mSources:[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    aget-object v3, v3, v1

    const-string v4, "%num%"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;->text:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/layar/OurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v2, 0x7f03005f

    invoke-virtual {p0, v2}, Lcom/layar/UserInviteSourcesActivity;->setContentView(I)V

    .line 40
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/layar/UserInviteSourcesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/layar/UserInviteSourcesActivity;->viewList:Landroid/widget/ListView;

    .line 41
    iget-object v2, p0, Lcom/layar/UserInviteSourcesActivity;->viewList:Landroid/widget/ListView;

    new-instance v3, Lcom/layar/UserInviteSourcesActivity$1;

    invoke-direct {v3, p0}, Lcom/layar/UserInviteSourcesActivity$1;-><init>(Lcom/layar/UserInviteSourcesActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-object v2, p0, Lcom/layar/UserInviteSourcesActivity;->mSources:[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    new-instance v3, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    .line 54
    const v4, 0x7f09010e

    invoke-virtual {p0, v4}, Lcom/layar/UserInviteSourcesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f02008c

    invoke-direct {v3, v6, v4, v5}, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;-><init>(ILjava/lang/String;I)V

    .line 53
    aput-object v3, v2, v6

    .line 55
    iget-object v2, p0, Lcom/layar/UserInviteSourcesActivity;->mSources:[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    new-instance v3, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    .line 56
    const v4, 0x7f09010f

    invoke-virtual {p0, v4}, Lcom/layar/UserInviteSourcesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4, v6}, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;-><init>(ILjava/lang/String;I)V

    .line 55
    aput-object v3, v2, v7

    .line 57
    iget-object v2, p0, Lcom/layar/UserInviteSourcesActivity;->mSources:[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    new-instance v3, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    .line 58
    const v4, 0x7f090110

    invoke-virtual {p0, v4}, Lcom/layar/UserInviteSourcesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4, v6}, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;-><init>(ILjava/lang/String;I)V

    .line 57
    aput-object v3, v2, v8

    .line 59
    new-instance v2, Lcom/layar/adapters/InviteSourcesAdapter;

    iget-object v3, p0, Lcom/layar/UserInviteSourcesActivity;->mSources:[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;

    invoke-direct {v2, p0, v3}, Lcom/layar/adapters/InviteSourcesAdapter;-><init>(Landroid/content/Context;[Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;)V

    iput-object v2, p0, Lcom/layar/UserInviteSourcesActivity;->mAdapter:Lcom/layar/adapters/InviteSourcesAdapter;

    .line 60
    iget-object v2, p0, Lcom/layar/UserInviteSourcesActivity;->viewList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/layar/UserInviteSourcesActivity;->mAdapter:Lcom/layar/adapters/InviteSourcesAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    invoke-virtual {p0}, Lcom/layar/UserInviteSourcesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message text"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, message:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 64
    const v2, 0x7f0700dc

    invoke-virtual {p0, v2}, Lcom/layar/UserInviteSourcesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    .local v0, headerText:Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .end local v0           #headerText:Landroid/widget/TextView;
    :cond_0
    const v2, 0x7f070043

    invoke-virtual {p0, v2}, Lcom/layar/UserInviteSourcesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/layar/UserInviteSourcesActivity$2;

    invoke-direct {v3, p0}, Lcom/layar/UserInviteSourcesActivity$2;-><init>(Lcom/layar/UserInviteSourcesActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
