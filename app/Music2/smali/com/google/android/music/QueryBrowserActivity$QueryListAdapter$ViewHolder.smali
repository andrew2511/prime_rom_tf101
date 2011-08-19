.class Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field album:Landroid/widget/TextView;

.field albumId:J

.field artist:Landroid/widget/TextView;

.field contextMenu:Landroid/view/View;

.field header:Landroid/view/View;

.field headerTitle:Landroid/widget/TextView;

.field id:J

.field left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

.field name:Ljava/lang/String;

.field right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

.field sortName:Ljava/lang/String;

.field title:Landroid/widget/TextView;

.field type:I

.field year:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    .line 982
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/QueryBrowserActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;-><init>()V

    return-void
.end method
