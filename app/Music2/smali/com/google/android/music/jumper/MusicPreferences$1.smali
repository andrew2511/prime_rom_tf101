.class Lcom/google/android/music/jumper/MusicPreferences$1;
.super Ljava/lang/Object;
.source "MusicPreferences.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/jumper/MusicPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method constructor <init>(Lcom/google/android/music/jumper/MusicPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences$1;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 8
    .parameter "accounts"

    .prologue
    const/4 v7, 0x0

    .line 94
    iget-object v5, p0, Lcom/google/android/music/jumper/MusicPreferences$1;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v5}, Lcom/google/android/music/jumper/MusicPreferences;->access$000(Lcom/google/android/music/jumper/MusicPreferences;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    iget-object v5, p0, Lcom/google/android/music/jumper/MusicPreferences$1;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    const-string v6, "SelectedAccount"

    invoke-static {v5, v6, v7}, Lcom/google/android/music/jumper/MusicPreferences;->access$100(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, username:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 97
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 98
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.google"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #username:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 97
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #arr$:[Landroid/accounts/Account;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #username:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v0           #account:Landroid/accounts/Account;
    :cond_2
    const-string v5, "MusicPreferences"

    const-string v6, "Configured music streaming account has been removed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v5, p0, Lcom/google/android/music/jumper/MusicPreferences$1;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5, v7}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamingAccount(Landroid/accounts/Account;)V

    goto :goto_1
.end method
