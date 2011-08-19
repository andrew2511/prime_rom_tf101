.class public Lcom/google/android/music/CreatePlaylist;
.super Landroid/app/AlertDialog;
.source "CreatePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/CreatePlaylist$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CreatePlaylist"


# instance fields
.field private mAddingContent:Z

.field private mCallback:Lcom/google/android/music/CreatePlaylist$Callback;

.field private mPlaylistName:Landroid/widget/EditText;

.field mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSaveButton:Landroid/widget/Button;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/google/android/music/CreatePlaylist$Callback;)V
    .locals 7
    .parameter "context"
    .parameter "addingContent"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v4, Lcom/google/android/music/CreatePlaylist$2;

    invoke-direct {v4, p0}, Lcom/google/android/music/CreatePlaylist$2;-><init>(Lcom/google/android/music/CreatePlaylist;)V

    iput-object v4, p0, Lcom/google/android/music/CreatePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 192
    new-instance v4, Lcom/google/android/music/CreatePlaylist$3;

    invoke-direct {v4, p0}, Lcom/google/android/music/CreatePlaylist$3;-><init>(Lcom/google/android/music/CreatePlaylist;)V

    iput-object v4, p0, Lcom/google/android/music/CreatePlaylist;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 49
    const-string v4, "CreatePlaylist"

    const-string v5, "CreatePlaylist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-boolean p2, p0, Lcom/google/android/music/CreatePlaylist;->mAddingContent:Z

    .line 52
    iput-object p3, p0, Lcom/google/android/music/CreatePlaylist;->mCallback:Lcom/google/android/music/CreatePlaylist$Callback;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/music/CreatePlaylist;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 55
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040009

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, childView:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/google/android/music/CreatePlaylist;->setView(Landroid/view/View;)V

    .line 58
    iget-boolean v4, p0, Lcom/google/android/music/CreatePlaylist;->mAddingContent:Z

    if-eqz v4, :cond_0

    .line 59
    const v4, 0x7f0c001c

    invoke-virtual {p0, v4}, Lcom/google/android/music/CreatePlaylist;->setTitle(I)V

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/music/CreatePlaylist;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 65
    .local v2, r:Landroid/content/res/Resources;
    const/4 v4, -0x1

    const v5, 0x7f0c007b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/CreatePlaylist;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/android/music/CreatePlaylist;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 67
    const/4 v4, -0x2

    const v5, 0x7f0c0087

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v3}, Lcom/google/android/music/CreatePlaylist;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 69
    return-void

    .line 61
    .end local v2           #r:Landroid/content/res/Resources;
    :cond_0
    const v4, 0x7f0c001b

    invoke-virtual {p0, v4}, Lcom/google/android/music/CreatePlaylist;->setTitle(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/music/CreatePlaylist;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/music/CreatePlaylist;->makePlaylistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/CreatePlaylist;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/CreatePlaylist;->mPlaylistName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/CreatePlaylist;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/music/CreatePlaylist;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/music/CreatePlaylist;->mSaveButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/music/CreatePlaylist;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/music/CreatePlaylist;->idForplaylist(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/CreatePlaylist;)Lcom/google/android/music/CreatePlaylist$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/CreatePlaylist;->mCallback:Lcom/google/android/music/CreatePlaylist$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/CreatePlaylist;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/music/CreatePlaylist;->mAddingContent:Z

    return v0
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .locals 8
    .parameter "name"

    .prologue
    .line 130
    const/4 v7, -0x1

    .line 131
    .local v7, id:I
    const/4 v6, 0x0

    .line 133
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/CreatePlaylist;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    if-eqz v6, :cond_0

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 143
    :cond_0
    if-eqz v6, :cond_1

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_1
    return v7

    .line 143
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private makePlaylistName()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 151
    const/4 v8, 0x1

    .line 153
    .local v8, num:I
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v4

    .line 157
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 158
    .local v1, playlistUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/music/CreatePlaylist;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 159
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move-object v0, v3

    .line 188
    :goto_0
    return-object v0

    .line 164
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/CreatePlaylist;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 165
    .local v11, r:Landroid/content/res/Resources;
    const v0, 0x7f0c0077

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 166
    .local v13, template:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .local v9, num:I
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 173
    .local v12, suggestedname:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, done:Z
    move v8, v9

    .line 174
    .end local v9           #num:I
    .restart local v8       #num:I
    :goto_1
    if-nez v7, :cond_1

    .line 175
    const/4 v7, 0x1

    .line 176
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v9, v8

    .line 177
    .end local v8           #num:I
    .restart local v9       #num:I
    :goto_2
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, playlistname:Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v3, 0x0

    add-int/lit8 v8, v9, 0x1

    .end local v9           #num:I
    .restart local v8       #num:I
    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 181
    const/4 v7, 0x0

    .line 183
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v9, v8

    .line 184
    .end local v8           #num:I
    .restart local v9       #num:I
    goto :goto_2

    .line 188
    .end local v9           #num:I
    .end local v10           #playlistname:Ljava/lang/String;
    .restart local v8       #num:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v12

    goto :goto_0

    .end local v7           #done:Z
    .end local v11           #r:Landroid/content/res/Resources;
    .end local v12           #suggestedname:Ljava/lang/String;
    .end local v13           #template:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v8           #num:I
    .restart local v9       #num:I
    .restart local v11       #r:Landroid/content/res/Resources;
    .restart local v13       #template:Ljava/lang/String;
    :catchall_1
    move-exception v0

    move v8, v9

    .end local v9           #num:I
    .restart local v8       #num:I
    goto :goto_4

    .end local v8           #num:I
    .restart local v7       #done:Z
    .restart local v9       #num:I
    .restart local v10       #playlistname:Ljava/lang/String;
    .restart local v12       #suggestedname:Ljava/lang/String;
    :cond_2
    move v8, v9

    .end local v9           #num:I
    .restart local v8       #num:I
    goto :goto_3

    .end local v8           #num:I
    .end local v10           #playlistname:Ljava/lang/String;
    .restart local v9       #num:I
    :cond_3
    move v8, v9

    .end local v9           #num:I
    .restart local v8       #num:I
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f0f0037

    invoke-virtual {p0, v0}, Lcom/google/android/music/CreatePlaylist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/music/CreatePlaylist;->mPlaylistName:Landroid/widget/EditText;

    .line 76
    iget-object v0, p0, Lcom/google/android/music/CreatePlaylist;->mPlaylistName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/music/CreatePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Lcom/google/android/music/CreatePlaylist$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/CreatePlaylist$1;-><init>(Lcom/google/android/music/CreatePlaylist;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/CreatePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 103
    return-void
.end method
