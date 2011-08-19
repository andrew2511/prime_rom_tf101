.class Lcom/google/android/finsky/activities/ContentFilterActivity$5;
.super Ljava/lang/Object;
.source "ContentFilterActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ContentFilterActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ContentFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$5;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 191
    if-nez p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$5;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->access$400(Lcom/google/android/finsky/activities/ContentFilterActivity;)V

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
