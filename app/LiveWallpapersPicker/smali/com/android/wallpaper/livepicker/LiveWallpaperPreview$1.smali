.class Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;
.super Ljava/lang/Object;
.source "LiveWallpaperPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;


# direct methods
.method constructor <init>(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-static {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$1;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->access$002(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;)Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    .line 151
    :cond_0
    return-void
.end method
