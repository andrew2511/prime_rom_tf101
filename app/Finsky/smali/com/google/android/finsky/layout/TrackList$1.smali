.class Lcom/google/android/finsky/layout/TrackList$1;
.super Ljava/lang/Object;
.source "TrackList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/TrackList;->setupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/TrackList;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/TrackList;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/finsky/layout/TrackList$1;->this$0:Lcom/google/android/finsky/layout/TrackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList$1;->this$0:Lcom/google/android/finsky/layout/TrackList;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/TrackList;->playAllTracks()V

    .line 121
    return-void
.end method
