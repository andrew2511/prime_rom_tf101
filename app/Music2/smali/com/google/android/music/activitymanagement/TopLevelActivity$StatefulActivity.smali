.class public interface abstract Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatefulActivity"
.end annotation


# virtual methods
.method public abstract getState(Landroid/os/Bundle;)V
.end method

.method public abstract onNewState(Landroid/content/Intent;)V
.end method

.method public abstract restoreState(Landroid/os/Bundle;)V
.end method
