.class Lcom/google/android/finsky/layout/TrackList$2;
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
    .line 126
    iput-object p1, p0, Lcom/google/android/finsky/layout/TrackList$2;->this$0:Lcom/google/android/finsky/layout/TrackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/layout/TrackList$2;->this$0:Lcom/google/android/finsky/layout/TrackList;

    iget-object v1, p0, Lcom/google/android/finsky/layout/TrackList$2;->this$0:Lcom/google/android/finsky/layout/TrackList;

    invoke-static {v1}, Lcom/google/android/finsky/layout/TrackList;->access$000(Lcom/google/android/finsky/layout/TrackList;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/TrackList;->access$100(Lcom/google/android/finsky/layout/TrackList;I)V

    .line 131
    return-void
.end method
