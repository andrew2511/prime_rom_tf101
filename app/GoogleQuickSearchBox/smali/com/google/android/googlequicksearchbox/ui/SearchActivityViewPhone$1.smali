.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$1;
.super Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;
.source "SearchActivityViewPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;->onScroll(Landroid/widget/AbsListView;III)V

    .line 83
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->access$000(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;)V

    .line 84
    return-void
.end method
