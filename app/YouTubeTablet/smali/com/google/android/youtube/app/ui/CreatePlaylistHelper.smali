.class public Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;
.super Ljava/lang/Object;
.source "CreatePlaylistHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;,
        Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final createPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 0
    .parameter "activity"
    .parameter "userAuthorizer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/core/async/UserAuthorizer;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, createPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Playlist;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->activity:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 50
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->createPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->createPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;)Landroid/app/Dialog;
    .locals 8
    .parameter "createListener"

    .prologue
    .line 54
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04000d

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, content:Landroid/view/View;
    const v4, 0x7f080009

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 57
    .local v3, name:Landroid/widget/EditText;
    const v4, 0x7f080029

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 58
    .local v2, isPrivate:Landroid/widget/CheckBox;
    new-instance v0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;

    invoke-direct {v0, p0, v3, v2, p1}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;-><init>(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;)V

    .line 72
    .local v0, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d00d3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->activity:Landroid/app/Activity;

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->activity:Landroid/app/Activity;

    const/high16 v6, 0x104

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
