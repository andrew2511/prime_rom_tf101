.class public Lcom/google/android/youtube/app/player/AdultContentHelper;
.super Ljava/lang/Object;
.source "AdultContentHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/UserProfile;",
        ">;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private confirmationDialog:Landroid/app/Dialog;

.field private final director:Lcom/google/android/youtube/app/player/Director;

.field private final myProfileRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private needsLoginDialog:Landroid/app/Dialog;

.field private final preferences:Landroid/content/SharedPreferences;

.field private underageDialog:Landroid/app/Dialog;

.field private user:Lcom/google/android/youtube/core/model/UserProfile;

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/player/Director;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 1
    .parameter "activity"
    .parameter "director"
    .parameter "preferences"
    .parameter "userAuthorizer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/app/player/Director;",
            "Landroid/content/SharedPreferences;",
            "Lcom/google/android/youtube/core/async/UserAuthorizer;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p5, myProfileRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    .line 55
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/player/Director;

    iput-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->director:Lcom/google/android/youtube/app/player/Director;

    .line 56
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->preferences:Landroid/content/SharedPreferences;

    .line 57
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 58
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->myProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 59
    return-void
.end method

.method private hasConfirmedAdultContent(Ljava/lang/String;)Z
    .locals 4
    .parameter "username"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "adult_content_confirmations"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, confirmations:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private setConfirmedAdultContent(Ljava/lang/String;)V
    .locals 5
    .parameter "username"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "adult_content_confirmations"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, confirmations:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "adult_content_confirmations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->user:Lcom/google/android/youtube/core/model/UserProfile;

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 4
    .parameter "userAuth"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->myProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyProfileRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 74
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 83
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 135
    packed-switch p2, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->needsLoginDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->confirmationDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->user:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/player/AdultContentHelper;->setConfirmedAdultContent(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/player/Director;->startVideo()V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v3, 0x7f0d009e

    const v5, 0x7f0d0038

    const v4, 0x7f0d0037

    const/high16 v2, 0x7f0d

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 131
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 104
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    const v3, 0x7f0d009f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->needsLoginDialog:Landroid/app/Dialog;

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->needsLoginDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 114
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d00a1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->underageDialog:Landroid/app/Dialog;

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->underageDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 122
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    const v3, 0x7f0d00a0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->confirmationDialog:Landroid/app/Dialog;

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->confirmationDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 99
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/player/AdultContentHelper;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onNotAuthenticated()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 78
    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;)V
    .locals 2
    .parameter "request"
    .parameter "user"

    .prologue
    .line 86
    iput-object p2, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->user:Lcom/google/android/youtube/core/model/UserProfile;

    .line 87
    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/UserProfile;->hasLegalAge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/player/AdultContentHelper;->hasConfirmedAdultContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->activity:Landroid/app/Activity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/app/player/AdultContentHelper;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/player/Director;->startVideo()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/player/AdultContentHelper;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;)V

    return-void
.end method
