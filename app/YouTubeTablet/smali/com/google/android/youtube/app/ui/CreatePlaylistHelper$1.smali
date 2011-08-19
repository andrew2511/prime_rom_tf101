.class Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;
.super Ljava/lang/Object;
.source "CreatePlaylistHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->onCreateDialog(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

.field final synthetic val$createListener:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;

.field final synthetic val$isPrivate:Landroid/widget/CheckBox;

.field final synthetic val$name:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;->this$0:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;->val$name:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;->val$isPrivate:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;->val$createListener:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 61
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;->val$name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, nameString:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    .end local v0           #nameString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v0       #nameString:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;->this$0:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->access$100(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;->this$0:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;->access$000(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;->this$0:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;->val$isPrivate:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$1;->val$createListener:Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/google/android/youtube/app/ui/CreatePlaylistHelper$CreatePlaylistAction;-><init>(Lcom/google/android/youtube/app/ui/CreatePlaylistHelper;Ljava/lang/String;ZLcom/google/android/youtube/app/ui/CreatePlaylistHelper$OnPlaylistCreatedListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    goto :goto_0
.end method
