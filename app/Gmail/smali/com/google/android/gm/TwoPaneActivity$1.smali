.class Lcom/google/android/gm/TwoPaneActivity$1;
.super Ljava/lang/Object;
.source "TwoPaneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/TwoPaneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TwoPaneActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TwoPaneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/gm/TwoPaneActivity$1;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$1;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {v0}, Lcom/google/android/gm/TwoPaneActivity;->access$000(Lcom/google/android/gm/TwoPaneActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$1;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gm/TwoPaneActivity;->access$102(Lcom/google/android/gm/TwoPaneActivity;Z)Z

    .line 98
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$1;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/TwoPaneActivity;->access$202(Lcom/google/android/gm/TwoPaneActivity;J)J

    .line 99
    iget-object v0, p0, Lcom/google/android/gm/TwoPaneActivity$1;->this$0:Lcom/google/android/gm/TwoPaneActivity;

    invoke-virtual {v0}, Lcom/google/android/gm/TwoPaneActivity;->invalidateOptionsMenu()V

    .line 101
    :cond_0
    return-void
.end method
