.class Lcom/google/android/music/TrackBrowserActivity$6;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->setTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAlbumCount:I

.field private mPrimaryTitle:Ljava/lang/CharSequence;

.field private mScreenTitle:Ljava/lang/CharSequence;

.field private mSecondaryTitle:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 748
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mScreenTitle:Ljava/lang/CharSequence;

    .line 751
    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mPrimaryTitle:Ljava/lang/CharSequence;

    .line 752
    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mSecondaryTitle:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->getScreenTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mScreenTitle:Ljava/lang/CharSequence;

    .line 757
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mPrimaryTitle:Ljava/lang/CharSequence;

    .line 758
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->getSecondaryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mSecondaryTitle:Ljava/lang/CharSequence;

    .line 759
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->getAlbumCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mAlbumCount:I

    .line 760
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->hasMetaData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->refreshMetaData(Landroid/content/Context;)V

    .line 763
    :cond_0
    return-void
.end method

.method public taskCompleted()V
    .locals 11

    .prologue
    .line 766
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mScreenTitle:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$1900(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$2000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 767
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$2000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mScreenTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Ljava/lang/CharSequence;)V

    .line 769
    :cond_0
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mPrimaryTitle:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6

    .line 770
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$1200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$1300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 772
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$1300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0f0079

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 773
    .local v5, tv:Landroid/widget/TextView;
    if-eqz v5, :cond_1

    .line 774
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mPrimaryTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    :cond_1
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$1300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0f0010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #tv:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 777
    .restart local v5       #tv:Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 778
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mSecondaryTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    :cond_2
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$1300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0f0011

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #tv:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 781
    .restart local v5       #tv:Landroid/widget/TextView;
    if-eqz v5, :cond_6

    .line 782
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$1200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 783
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_6

    .line 784
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 785
    .local v3, count:I
    if-nez v3, :cond_4

    instance-of v7, v1, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v7, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->hasCount()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    instance-of v7, v1, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-nez v7, :cond_6

    .line 789
    :cond_4
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->val$context:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v8}, Lcom/google/android/music/TrackBrowserActivity;->access$1200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getCount()I

    move-result v8

    iget v9, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mAlbumCount:I

    invoke-static {v7, v8, v9}, Lcom/google/android/music/MusicUtils;->makeSongAndAlbumCountLabel(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 793
    .local v4, displayText:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v7, v8}, Lcom/google/android/music/medialist/SongList;->getAlbumId(Landroid/content/Context;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    .line 794
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 795
    const-string v7, "year"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 797
    .local v2, column:I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_5

    .line 798
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 799
    .local v6, year:I
    if-lez v6, :cond_5

    .line 800
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7, v4, v6}, Lcom/google/android/music/TrackBrowserActivity;->access$2100(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 807
    .end local v2           #column:I
    .end local v6           #year:I
    :cond_5
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    .end local v1           #c:Landroid/database/Cursor;
    .end local v3           #count:I
    .end local v4           #displayText:Ljava/lang/String;
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_6
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mSecondaryTitle:Ljava/lang/CharSequence;

    if-nez v7, :cond_7

    .line 814
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity$6;->mPrimaryTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/google/android/music/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_7
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const v8, 0x7f0c0056

    invoke-virtual {v7, v8}, Lcom/google/android/music/TrackBrowserActivity;->setTitle(I)V

    goto :goto_0
.end method
