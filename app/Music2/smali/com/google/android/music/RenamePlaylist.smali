.class public Lcom/google/android/music/RenamePlaylist;
.super Landroid/app/AlertDialog;
.source "RenamePlaylist.java"


# static fields
.field private static final SAVED_STATE_CURRENT_NAME:Ljava/lang/String; = "currentname"

.field private static final SAVED_STATE_ORIGINAL_NAME:Ljava/lang/String; = "originalname"

.field private static final SAVED_STATE_RENAME_ID:Ljava/lang/String; = "renameid"

.field public static final TAG:Ljava/lang/String; = "RenamePlaylist"


# instance fields
.field private mOriginalName:Ljava/lang/String;

.field private mPlaylistName:Landroid/widget/EditText;

.field mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRenameId:J

.field private mSaveButton:Landroid/widget/Button;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 10
    .parameter "context"
    .parameter "renameId"

    .prologue
    const/4 v7, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v6, Lcom/google/android/music/RenamePlaylist$2;

    invoke-direct {v6, p0}, Lcom/google/android/music/RenamePlaylist$2;-><init>(Lcom/google/android/music/RenamePlaylist;)V

    iput-object v6, p0, Lcom/google/android/music/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 181
    new-instance v6, Lcom/google/android/music/RenamePlaylist$3;

    invoke-direct {v6, p0}, Lcom/google/android/music/RenamePlaylist$3;-><init>(Lcom/google/android/music/RenamePlaylist;)V

    iput-object v6, p0, Lcom/google/android/music/RenamePlaylist;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    iput-wide p2, p0, Lcom/google/android/music/RenamePlaylist;->mRenameId:J

    .line 54
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 55
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040009

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, childView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/google/android/music/RenamePlaylist;->setView(Landroid/view/View;)V

    .line 58
    const v6, 0x7f0f0037

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;

    .line 59
    iget-object v6, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/google/android/music/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f0c001d

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, titleformat:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, ""

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, title:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/google/android/music/RenamePlaylist;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 70
    .local v3, r:Landroid/content/res/Resources;
    const/4 v6, -0x1

    const v8, 0x7f0c007c

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/music/RenamePlaylist;->mPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v8, v9}, Lcom/google/android/music/RenamePlaylist;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    const/4 v8, -0x2

    const v6, 0x7f0c0087

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v0, v7

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    move-object v6, v0

    invoke-virtual {p0, v8, v9, v6}, Lcom/google/android/music/RenamePlaylist;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/RenamePlaylist;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/google/android/music/RenamePlaylist;->mRenameId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/music/RenamePlaylist;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/RenamePlaylist;->nameForId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/RenamePlaylist;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/RenamePlaylist;->initName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/RenamePlaylist;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/music/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/music/RenamePlaylist;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/RenamePlaylist;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/music/RenamePlaylist;->idForplaylist(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .locals 8
    .parameter "name"

    .prologue
    .line 140
    const/4 v7, -0x1

    .line 141
    .local v7, id:I
    const/4 v6, 0x0

    .line 143
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

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

    .line 146
    if-eqz v6, :cond_0

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 153
    :cond_0
    if-eqz v6, :cond_1

    .line 154
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_1
    return v7

    .line 153
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 154
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private initName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "originalname"
    .parameter "currentname"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    iput-object p1, p0, Lcom/google/android/music/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c001d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, titleformat:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, title:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/music/RenamePlaylist;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v3, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v6

    .line 109
    .local v2, userTypedSomethingIn:Z
    :goto_0
    if-nez v2, :cond_0

    .line 110
    iget-object v3, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v3, p0, Lcom/google/android/music/RenamePlaylist;->mPlaylistName:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 113
    :cond_0
    return-void

    .end local v2           #userTypedSomethingIn:Z
    :cond_1
    move v2, v5

    .line 107
    goto :goto_0
.end method

.method private nameForId(J)Ljava/lang/String;
    .locals 8
    .parameter "id"

    .prologue
    .line 161
    const/4 v7, 0x0

    .line 162
    .local v7, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 164
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    if-eqz v6, :cond_0

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 174
    :cond_0
    if-eqz v6, :cond_1

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_1
    return-object v7

    .line 174
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string v0, "renameid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/RenamePlaylist;->mRenameId:J

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/music/RenamePlaylist;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 98
    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/google/android/music/RenamePlaylist$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/RenamePlaylist$1;-><init>(Lcom/google/android/music/RenamePlaylist;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 221
    const-string v0, "renameid"

    iget-wide v1, p0, Lcom/google/android/music/RenamePlaylist;->mRenameId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 222
    return-void
.end method
