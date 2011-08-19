.class Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LiveWallpaperListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

.field thumbnail:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$ViewHolder;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)V

    return-void
.end method
