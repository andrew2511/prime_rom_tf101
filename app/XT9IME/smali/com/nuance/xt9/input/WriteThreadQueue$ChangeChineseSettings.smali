.class public Lcom/nuance/xt9/input/WriteThreadQueue$ChangeChineseSettings;
.super Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeChineseSettings"
.end annotation


# instance fields
.field public mSettings:Lcom/nuance/xt9/input/WriteChineseSettings;


# direct methods
.method public constructor <init>(Lcom/nuance/xt9/input/WriteChineseSettings;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 208
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 209
    iput-object p1, p0, Lcom/nuance/xt9/input/WriteThreadQueue$ChangeChineseSettings;->mSettings:Lcom/nuance/xt9/input/WriteChineseSettings;

    .line 210
    return-void
.end method
