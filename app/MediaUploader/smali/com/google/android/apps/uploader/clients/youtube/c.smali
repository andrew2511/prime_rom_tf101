.class final Lcom/google/android/apps/uploader/clients/youtube/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/youtube/c;->a:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/c;->a:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->b(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V

    .line 113
    return-void
.end method
