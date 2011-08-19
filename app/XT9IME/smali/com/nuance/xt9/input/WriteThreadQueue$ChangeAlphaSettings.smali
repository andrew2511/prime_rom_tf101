.class public Lcom/nuance/xt9/input/WriteThreadQueue$ChangeAlphaSettings;
.super Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;
.source "WriteThreadQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteThreadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeAlphaSettings"
.end annotation


# instance fields
.field public mSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;


# direct methods
.method public constructor <init>(Lcom/nuance/xt9/input/WriteAlphaSettings;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 200
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/nuance/xt9/input/WriteThreadQueue$QueueItem;-><init>(ILjava/lang/Object;)V

    .line 201
    iput-object p1, p0, Lcom/nuance/xt9/input/WriteThreadQueue$ChangeAlphaSettings;->mSettings:Lcom/nuance/xt9/input/WriteAlphaSettings;

    .line 202
    return-void
.end method
