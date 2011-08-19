.class Lcom/google/android/talk/fragments/SetStatusFragment$1;
.super Lcom/google/android/gtalkservice/IRosterListener$Stub;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IRosterListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public presenceChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "contact"

    .prologue
    .line 204
    return-void
.end method

.method public rosterChanged()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public selfPresenceChanged()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$1;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$100(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/fragments/SetStatusFragment$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$1$1;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method
