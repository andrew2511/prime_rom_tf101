.class public Lcom/layar/UserInviteFriendsActivity;
.super Lcom/layar/OurListActivity;
.source "UserInviteFriendsActivity.java"

# interfaces
.implements Lcom/layar/data/user/InviteSourceType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;,
        Lcom/layar/UserInviteFriendsActivity$InviteFriendsTask;
    }
.end annotation


# static fields
.field public static final EXTRAS_FRIENDS_ADDED:Ljava/lang/String; = "friends added"

.field public static final EXTRAS_SOURCE:Ljava/lang/String; = "invites source"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/layar/adapters/InviteFriendAdapter;

.field private sendInvites:Landroid/view/View$OnClickListener;

.field private viewList:Landroid/widget/ExpandableListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/layar/UserInviteFriendsActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/UserInviteFriendsActivity;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/layar/OurListActivity;-><init>()V

    .line 75
    new-instance v0, Lcom/layar/UserInviteFriendsActivity$1;

    invoke-direct {v0, p0}, Lcom/layar/UserInviteFriendsActivity$1;-><init>(Lcom/layar/UserInviteFriendsActivity;)V

    iput-object v0, p0, Lcom/layar/UserInviteFriendsActivity;->sendInvites:Landroid/view/View$OnClickListener;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/layar/UserInviteFriendsActivity;)Lcom/layar/adapters/InviteFriendAdapter;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity;->mAdapter:Lcom/layar/adapters/InviteFriendAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/UserInviteFriendsActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/layar/UserInviteFriendsActivity;->viewList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/UserInviteFriendsActivity;Lcom/layar/adapters/InviteFriendAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/layar/UserInviteFriendsActivity;->mAdapter:Lcom/layar/adapters/InviteFriendAdapter;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/layar/OurListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f03005d

    invoke-virtual {p0, v2}, Lcom/layar/UserInviteFriendsActivity;->setContentView(I)V

    .line 50
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/layar/UserInviteFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/layar/UserInviteFriendsActivity;->viewList:Landroid/widget/ExpandableListView;

    .line 51
    const v2, 0x7f0700dc

    invoke-virtual {p0, v2}, Lcom/layar/UserInviteFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    .local v1, headerText:Landroid/widget/TextView;
    const-string v2, "Invite friends"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v2, 0x7f0700db

    invoke-virtual {p0, v2}, Lcom/layar/UserInviteFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .local v0, headerImage:Landroid/widget/ImageView;
    const v2, 0x7f02008c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    const v2, 0x7f070042

    invoke-virtual {p0, v2}, Lcom/layar/UserInviteFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/layar/UserInviteFriendsActivity$2;

    invoke-direct {v3, p0}, Lcom/layar/UserInviteFriendsActivity$2;-><init>(Lcom/layar/UserInviteFriendsActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v2, 0x7f0700d8

    invoke-virtual {p0, v2}, Lcom/layar/UserInviteFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/UserInviteFriendsActivity;->sendInvites:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/layar/UserInviteFriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/layar/UserInviteFriendsActivity;->setResult(ILandroid/content/Intent;)V

    .line 66
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/layar/OurListActivity;->onStart()V

    .line 72
    new-instance v0, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;

    invoke-direct {v0, p0, p0}, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;-><init>(Lcom/layar/UserInviteFriendsActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/layar/UserInviteFriendsActivity$GetFriendsListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
