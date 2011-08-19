.class Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "DownloadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/DownloadQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadQueueAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mArtistIdx:I

.field private mDownloadReasonIdx:I

.field private mDownloadStatusIdx:I

.field private mIdIdx:I

.field private mTrackNameIdx:I

.field final synthetic this$0:Lcom/google/android/music/DownloadQueueActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/DownloadQueueActivity;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 123
    iput-object p1, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->this$0:Lcom/google/android/music/DownloadQueueActivity;

    .line 124
    const v2, 0x7f04000e

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/String;

    new-array v5, v0, [I

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 125
    return-void
.end method

.method private getColumnIndexes(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 138
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mIdIdx:I

    .line 141
    const-string v2, "Artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mArtistIdx:I

    .line 142
    const-string v2, "Title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mTrackNameIdx:I

    .line 143
    const-string v2, "reason"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mDownloadReasonIdx:I

    .line 144
    const-string v2, "DownloadStatus"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mDownloadStatusIdx:I

    .line 145
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;

    .line 168
    .local v4, vh:Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget v6, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mTrackNameIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget v6, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mArtistIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->values()[Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    move-result-object v5

    iget v6, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mDownloadReasonIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aget-object v2, v5, v6

    .line 172
    .local v2, reason:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;
    sget-object v5, Lcom/google/android/music/DownloadQueueActivity$3;->$SwitchMap$com$google$android$music$dl$DownloadOrder$ScheduledBy:[I

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 184
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown download reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 174
    :pswitch_0
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadType:Landroid/widget/ImageView;

    const v6, 0x7f020152

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    :goto_0
    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v5

    iget v6, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mDownloadStatusIdx:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aget-object v3, v5, v6

    .line 188
    .local v3, status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    sget-object v5, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v3, v5, :cond_0

    .line 189
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 191
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 192
    iget v5, p0, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->mIdIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 193
    .local v0, id:J
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->bufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v5, v0, v1}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(J)V

    .line 199
    .end local v0           #id:J
    :goto_1
    return-void

    .line 178
    .end local v3           #status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :pswitch_1
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadType:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 181
    :pswitch_2
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadType:Landroid/widget/ImageView;

    const v6, 0x7f0201da

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 195
    .restart local v3       #status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_0
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 197
    iget-object v5, v4, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->bufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(J)V

    goto :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;->getColumnIndexes(Landroid/database/Cursor;)V

    .line 133
    :cond_0
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;-><init>(Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter;Lcom/google/android/music/DownloadQueueActivity$1;)V

    .line 151
    .local v1, vh:Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;
    const v2, 0x7f0f0032

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 152
    const v2, 0x7f0f0033

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 153
    const v2, 0x7f0f0040

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadIndicator:Landroid/widget/ImageView;

    .line 154
    const v2, 0x7f0f0041

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->downloadType:Landroid/widget/ImageView;

    .line 155
    const v2, 0x7f0f0030

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SeekBar;

    iput-object p0, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    .line 156
    iget-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 158
    new-instance v2, Lcom/google/android/music/BufferProgressListener;

    iget-object v3, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->progressBar:Landroid/widget/SeekBar;

    invoke-direct {v2, p1, v3}, Lcom/google/android/music/BufferProgressListener;-><init>(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    iput-object v2, v1, Lcom/google/android/music/DownloadQueueActivity$DownloadQueueAdapter$ViewHolder;->bufferProgressListener:Lcom/google/android/music/BufferProgressListener;

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method
