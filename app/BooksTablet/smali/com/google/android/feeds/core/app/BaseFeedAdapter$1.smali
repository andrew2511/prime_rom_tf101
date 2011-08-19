.class Lcom/google/android/feeds/core/app/BaseFeedAdapter$1;
.super Ljava/lang/Object;
.source "BaseFeedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/feeds/core/app/BaseFeedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feeds/core/app/BaseFeedAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/feeds/core/app/BaseFeedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter$1;->this$0:Lcom/google/android/feeds/core/app/BaseFeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/feeds/core/app/BaseFeedAdapter$1;->this$0:Lcom/google/android/feeds/core/app/BaseFeedAdapter;

    invoke-virtual {v0}, Lcom/google/android/feeds/core/app/BaseFeedAdapter;->onRetryClick()V

    .line 212
    return-void
.end method
