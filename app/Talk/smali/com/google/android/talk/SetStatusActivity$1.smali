.class Lcom/google/android/talk/SetStatusActivity$1;
.super Ljava/lang/Object;
.source "SetStatusActivity.java"

# interfaces
.implements Lcom/google/android/talk/fragments/SetStatusFragment$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/SetStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SetStatusActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/SetStatusActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/talk/SetStatusActivity$1;->this$0:Lcom/google/android/talk/SetStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/talk/SetStatusActivity$1;->this$0:Lcom/google/android/talk/SetStatusActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/SetStatusActivity;->finish()V

    .line 71
    return-void
.end method

.method public updateRoster()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
