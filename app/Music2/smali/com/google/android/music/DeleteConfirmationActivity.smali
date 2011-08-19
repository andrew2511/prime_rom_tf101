.class public Lcom/google/android/music/DeleteConfirmationActivity;
.super Landroid/app/Activity;
.source "DeleteConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/DeleteConfirmationActivity$2;,
        Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;
    }
.end annotation


# static fields
.field private static final EXTRA_HAS_REMOTE:Ljava/lang/String; = "hasRemote"

.field private static final EXTRA_ITEM_TITLE:Ljava/lang/String; = "itemTitle"

.field private static final EXTRA_PRIMARY_ID:Ljava/lang/String; = "primaryId"

.field private static final EXTRA_SECONDARY_ID:Ljava/lang/String; = "secondaryId"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mOkButton:Landroid/widget/Button;

.field private mPrimaryId:J

.field private mSecondaryId:J

.field private mType:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/DeleteConfirmationActivity;)Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/music/DeleteConfirmationActivity;->mType:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/DeleteConfirmationActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/google/android/music/DeleteConfirmationActivity;->mPrimaryId:J

    return-wide v0
.end method

.method public static confirmDelete(Landroid/content/Context;Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;JJLjava/lang/CharSequence;Z)V
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "primaryId"
    .parameter "secondaryId"
    .parameter "itemTitle"
    .parameter "hasRemote"

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/DeleteConfirmationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "primaryId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 115
    const-wide/16 v1, -0x1

    cmp-long v1, p4, v1

    if-eqz v1, :cond_1

    .line 116
    const-string v1, "secondaryId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 120
    :cond_0
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v1, "itemTitle"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 122
    const-string v1, "hasRemote"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void

    .line 117
    :cond_1
    sget-object v1, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ALBUM_BY_ARTIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    if-ne p1, v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secondary Id required for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static confirmDelete(Landroid/content/Context;Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;JLjava/lang/CharSequence;Z)V
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "id"
    .parameter "itemTitle"
    .parameter "hasRemote"

    .prologue
    .line 108
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/DeleteConfirmationActivity;->confirmDelete(Landroid/content/Context;Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;JJLjava/lang/CharSequence;Z)V

    .line 109
    return-void
.end method

.method public static confirmDeletePlaylist(Landroid/content/Context;JLjava/lang/CharSequence;)V
    .locals 8
    .parameter "context"
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 128
    sget-object v1, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->PLAYLIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/DeleteConfirmationActivity;->confirmDelete(Landroid/content/Context;Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;JJLjava/lang/CharSequence;Z)V

    .line 129
    return-void
.end method

.method private performDelete()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/DeleteConfirmationActivity;->mType:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    sget-object v1, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->SONG:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/music/DeleteConfirmationActivity;->mType:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    sget-object v1, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->PLAYLIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    if-eq v0, v1, :cond_0

    .line 86
    const-string v0, "TODO: Peform Delete"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    :cond_0
    new-instance v0, Lcom/google/android/music/DeleteConfirmationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/DeleteConfirmationActivity$1;-><init>(Lcom/google/android/music/DeleteConfirmationActivity;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/DeleteConfirmationActivity;->mOkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/google/android/music/DeleteConfirmationActivity;->performDelete()V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/DeleteConfirmationActivity;->finish()V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v4, 0x7f04000a

    invoke-virtual {p0, v4}, Lcom/google/android/music/DeleteConfirmationActivity;->setContentView(I)V

    .line 52
    const v4, 0x7f0f0039

    invoke-virtual {p0, v4}, Lcom/google/android/music/DeleteConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/music/DeleteConfirmationActivity;->mOkButton:Landroid/widget/Button;

    .line 53
    iget-object v4, p0, Lcom/google/android/music/DeleteConfirmationActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v4, 0x7f0f0036

    invoke-virtual {p0, v4}, Lcom/google/android/music/DeleteConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/music/DeleteConfirmationActivity;->mCancelButton:Landroid/widget/Button;

    .line 55
    iget-object v4, p0, Lcom/google/android/music/DeleteConfirmationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/music/DeleteConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "primaryId"

    invoke-virtual {v1, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/music/DeleteConfirmationActivity;->mPrimaryId:J

    .line 59
    const-string v4, "secondaryId"

    invoke-virtual {v1, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/music/DeleteConfirmationActivity;->mSecondaryId:J

    .line 60
    invoke-static {}, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->values()[Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/google/android/music/DeleteConfirmationActivity;->mType:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    .line 62
    const-string v4, "itemTitle"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 63
    .local v2, itemTitle:Ljava/lang/CharSequence;
    const-string v4, "hasRemote"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 65
    .local v0, hasRemote:Z
    const v4, 0x7f0f0035

    invoke-virtual {p0, v4}, Lcom/google/android/music/DeleteConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    .local v3, text:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 67
    const v4, 0x7f0c00fa

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/google/android/music/DeleteConfirmationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const v4, 0x7f0c00f9

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/google/android/music/DeleteConfirmationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
