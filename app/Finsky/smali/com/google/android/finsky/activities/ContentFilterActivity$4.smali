.class Lcom/google/android/finsky/activities/ContentFilterActivity$4;
.super Ljava/lang/Object;
.source "ContentFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 174
    iput-object p1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$4;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$4;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->access$500(Lcom/google/android/finsky/activities/ContentFilterActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$4;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->finish()V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$4;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->access$000(Lcom/google/android/finsky/activities/ContentFilterActivity;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
